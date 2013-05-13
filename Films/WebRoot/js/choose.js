var _data_value = "";
var _temp_v = "";
function initSeat(spk,scid){
	var dataStr = "&spk="+spk;
	if(scid != null){
		dataStr +="&scid="+scid;
	}
	$.ajax( {
			type : "get",
			url : "step2.do?m=initSeat&sid="+Math.random(),
			data : "dataStr=" + dataStr,
			dataType: "json",
			timeout: "60000",
			error: function (XMLHttpRequest, textStatus, errorThrown) {
				if(textStatus == 'timeout'){
					alert("请求超时！");
				}else{
					//alert("出现错误！");
				}
			} ,
			beforeSend : function(XMLHttpRequest) {
				$(".c_content").html("<img class='loading'  src='images/loading.gif'/>");
			},
			success : function(msg) {
			var seat = msg;
			var str = "";
			var f = 0;
			var r = 1;
			var rid= 1;
			var mr = seat[0]['maxRowNum'];
			var mc = seat[0]['maxColNum'];
			var scid = seat[0]['sectionId'];
			var size = seat[0]['sections'];
			for(var i =0;i<mr;i++){//逻辑行
				none = 0;
				var str2 = "";
				for(var j=0;j<mc;j++){//逻辑列
					
					f = 0;
					for(var n = 0;n<seat.length;n++){//匹配座位
						if(seat[n]['rowNum'] == (i+1) && seat[n]['colNum'] == (j+1)){
							none = 1;
							f = 1 ;
							rid = seat[n]['rowId'];
							if(seat[n]['state'] == 'F'){
								str2 +=	"<li title="+seat[n]['rowId']+">"+seat[n]['colId']+"</li>";
								break;
							}else{
								str2 +=	"<li class=\"selected check\">"+seat[n]['colId']+"</li>";
								break;
							}
						}	
					}
					if(f == 0){
						str2 +=	"<li class=\"none\">"+(j+1)+"</li>";	
					}
					
				}	
				if( none == 1 ){
					str += " <dl class=\"clearfix\"> " 
						+ "<dt>" + rid  + "</dt>"
	                    + "<dd>"      
	                    + "<ol>" ;
					str += str2;
	                str += "</ol>"       
	                    + "</dd>"        
						+ "<dt class=\"r\">" + rid + "</dt>"      
						+ "</dl>";
					
				}else{
					str += " <dl class=\"clearfix\"> " 
							+ "<dt> </dt>"
		                    + "<dd>"      
		                    + "<ol>" ;
					str += str2;
	                str += "</ol>"       
	                    + "</dd>"        
						+ "<dt class=\"r\"> </dt>"      
						+ "</dl>";
					
				}
			}
	
			$(".c_content").html(str);
			var _wh = mc*27 + 60*2;			
			$(".c_content").css("width", _wh);
			var _ttemp_str = $(".c_content").height();
			var _ht = _ttemp_str + 20;
			$(".c_box").css("height",_ht);
			if( size > 1 ){
				var str_sc = "";
				if(scid == "01"){
					str_sc = "<span onClick =\"initSeat('"+spk+"','02')\">下一场区</span>" ;
					$(".section").html(str_sc);
				}else{
					str_sc = "<span onClick =\"initSeat('"+spk+"','01')\">上一场区</span>" ;
					$(".section").html(str_sc);
				}
				$(".data ol li").remove();//清空已选数据	
			/*	$.each($(".data ol li"),function(){
						var _li_text = $(this).text();
						var _li_c = _li_text.substring(0,2);
						if(_li_c == scid){
							var _li_p = _li_text.substring(3,_li_text.length - 4);
							var _li_z = _li_text.substring(_li_text.length - 3, _li_text.length - 1);
							$("dt.r:contains("+_li_p+")").prev("dd").find("li:contains("+_li_z+"):not([class='none'])").addClass("selected");
						}
				});
			*/
			}
			
			
		//choose seat	
var $_lis = $(".c_content").find("li:not([class='none'])");
$_lis.click(function(){
	alert("12");
	var $_li = $(this);
	alert($_li);
	var _html = "";
	var _htmlv = "";
	if(size > 1){
		_html = "<li>" + scid + "场" + $_li.attr("title") + "排" + $_li.html() + "座</li>";//插入变量
		_htmlv = scid + "场" + $_li.attr("title") + "排" + $_li.html() + "座";//删除本身变量
	}else{
		_html = "<li>" + $_li.attr("title") + "排" + $_li.html() + "座</li>";//插入变量
		_htmlv = $_li.attr("title") + "排" + $_li.html() + "座";//删除本身变量
	}
	if($(this).hasClass("vip")){
		var _text = "您不是VIP用户！";
		Boxy.alert(_text, null, {title: "对不起"});
	}else if($(this).hasClass("check")){
		var _text = $(this).text()+"号座位已售出！";
		Boxy.alert(_text, null, {title: "对不起"});
	}else{
		var $_l = $(this).prev("li:not([class='none'])");
		var $_r = $(this).next("li:not([class='none'])");
		var _htmll = "";
		var _htmlr = "";
		if(size > 1){
			_htmll = scid + "场" + $_li.attr("title") + "排" + $_l.html() + "座";
			_htmlr = scid + "场" + $_li.attr("title") + "排" + $_r.html() + "座";
		}else{
			_htmll = $_li.attr("title") + "排" + $_l.html() + "座";
			_htmlr = $_li.attr("title") + "排" + $_r.html() + "座";
		}
		if($(this).hasClass("selected")){
			if(!$_r.hasClass("selected") && $_r.html() != null && $_l.hasClass("selected")){//右边为空，左边有人
				var $_l_1 = $_l.prev("li:not([class='none'])");
				if($_l_1.html() != null && !$_l_1.hasClass("selected")){//左边+1为空
					var $_l_2 = $_l_1.prev("li:not([class='none'])");
					if($_l_2.html() == null || $_l_2.hasClass("selected")){//左边+2有人或者为边缘
						$(this).removeClass("selected");
						$_l.removeClass("selected");
						$(".data ol li").each(function(){
								if($(this).text() == _htmll){
									$(this).remove();
								}
						});
					}else{
						$(this).removeClass("selected");
					}
				}else{
					$(this).removeClass("selected");
				}
			}else if(!$_l.hasClass("selected") && $_l.html() != null && $_r.hasClass("selected")){//左边为空，右边有人
				var $_r_1 = $_r.next("li:not([class='none'])");
				if($_r_1.html() != null && !$_r_1.hasClass("selected")){//右边+1为空
					var $_r_2 = $_r_1.next("li:not([class='none'])");
					if($_r_2.html() == null || $_r_2.hasClass("selected")){//右边+2有人或者为边缘
						$(this).removeClass("selected");
						$_r.removeClass("selected");
						$(".data ol li").each(function(){
								if($(this).text() == _htmlr){
									$(this).remove();
								}
						});
					}else{
						$(this).removeClass("selected");
					}
				}else{

					$(this).removeClass("selected");
				}
			}else if($_l.hasClass("selected") && $_r.hasClass("selected")){
				if($_l.hasClass("check") && !$_r.hasClass("check")){
					$(this).removeClass("selected");
					$_r.removeClass("selected");
					$(".data ol li").each(function(){
								if($(this).text() == _htmlr){
									$(this).remove();
								}
					});
				}else if(!$_l.hasClass("check") && $_r.hasClass("check")){
					$(this).removeClass("selected");
					$_l.removeClass("selected");
					$(".data ol li").each(function(){
								if($(this).text() == _htmll){
									$(this).remove();
								}
					});
				}else if($_l.hasClass("check") && $_r.hasClass("check")){
					$(this).removeClass("selected");
				}else if(!$_l.hasClass("check") && !$_r.hasClass("check")){
					var $_r_1 = $_r.next("li:not([class='none'])");
					if($_r_1.html() != null && !$_r_1.hasClass("selected")){//右边+1为空
						var $_r_2 = $_r_1.next("li:not([class='none'])");
						if($_r_2.html() == null || $_r_2.hasClass("selected")){//右边+2有人或者为边缘
							$(this).removeClass("selected");
							$_r.removeClass("selected");
							$_l.removeClass("selected");
							$(".data ol li").each(function(){
								if($(this).text() == _htmll || $(this).text() == _htmlr){
									$(this).remove();
								}
							});
						}else{
							$(this).removeClass("selected");
							$_l.removeClass("selected");
							$(".data ol li").each(function(){
						if($(this).text() == _htmll){
							$(this).remove();
						}
					});
						}
					}else{
						$(this).removeClass("selected");
						$_l.removeClass("selected");
						$(".data ol li").each(function(){
						if($(this).text() == _htmll){
							$(this).remove();
						}
					});
					}
				}
			}else if($_l.hasClass("selected") && $_r.html() == null){
				if($_l.hasClass("check")){
					$(this).removeClass("selected");
				}else{
					$(this).removeClass("selected");
					$_l.removeClass("selected");
					$(".data ol li").each(function(){
						if($(this).text() == _htmll){
							$(this).remove();
						}
					});
				}					
			}else if($_r.hasClass("selected") && $_l.html() == null){
				if($_r.hasClass("check")){
					$(this).removeClass("selected");
				}else{
					$(this).removeClass("selected");
					$_r.removeClass("selected");
					$(".data ol li").each(function(){
						if($(this).text() == _htmlr){
							$(this).remove();
						}
					});
				}					
			}else if(($_r.html() != null && !$_r.hasClass("selected") && !$_r.hasClass("selected") && $_r.html() != null) || (!$_r.hasClass("selected") && $_r.html() == null) || ($_r.html() == null && !$_r.hasClass("selected"))){
				$(this).removeClass("selected");
			} 
			if(!$_li.hasClass("selected")){
				$(".data ol li").each(function(){
					if($(this).text() == _htmlv){
						$(this).remove();
					}
				});
			}
		}else{
			//根据用户获取的权益判断
			if($("#isSkillShow").val()=="1"){
				if($(".data ol li").size() > 0){
					var _text = "秒杀活动获取权益的用户，每个权益只能选择一个座位";
					Boxy.alert(_text, null, {title: "对不起"});
					return;
				}
			}
			if($(".data ol li").size() > 3){
				var _text = "万达会员每场次限购4张影票，如果您的购票需求大于4张，请您在完成此次购票操作后再进行一次购票操作。";
				Boxy.alert(_text, null, {title: "对不起"});
			}else if($_l.html() == null || $_r.html() == null || $_l.hasClass("selected") || $_r.hasClass("selected")){
				$(this).addClass("selected");
			}else if(!$_l.hasClass("selected") && !$_r.hasClass("selected")){
				var $_l_1 = $_l.prev("li:not([class='none'])");
				var $_r_1 = $_r.next("li:not([class='none'])");
				if($_l_1.html() != null && $_r_1.html() != null && !$_l_1.hasClass("selected") && !$_r_1.hasClass("selected")){
					$(this).addClass("selected");
				}else{
					var _text = "您只能购买连号的座位";
					Boxy.alert(_text, null, {title: "对不起"});
				}			
			}
		}
		if($(this).hasClass("selected")){
			if(!$(this).hasClass("check")){
				$(".data ol").append(_html);
			}
		}
		
		if( size > 1 ){
			_data_value = spk+"_"+$(".data ol li").text().substring(0,2)+"|";
			$.each($(".data ol li"),function(index, tempV){
				_temp_v = $(this).text();
				// 取排位置
				var row_begin_index = _temp_v.lastIndexOf("排");
				_data_value += _temp_v.substring(3,row_begin_index) + ":";
				
				if($(".data ol li").size()-1 == index){
					_data_value += _temp_v.substring(row_begin_index + 1, _temp_v.length - 1);
				}else{
					_data_value += _temp_v.substring(row_begin_index + 1, _temp_v.length - 1) + ",";
				}							
			});
		}else{
			_data_value = spk+"_01|";
			$.each($(".data ol li"),function(index, tempV){
				_temp_v = $(this).text();
				//modify by 谢康林 （不支持鼎新系统选座,出现乱码）	
				//获取 排字符的在字符串中的位置。其中temp_v为 xx排xx座	
				var row_begin_index = _temp_v.lastIndexOf("排");
				_data_value += _temp_v.substring(0,row_begin_index) + ":";

				if($(".data ol li").size()-1 == index){
				
					//_data_value += _temp_v.substring(_temp_v.length - 3, _temp_v.length - 1);
					_data_value += _temp_v.substring(row_begin_index+1, _temp_v.length - 1);
				}else{
					//_data_value += _temp_v.substring(_temp_v.length - 3, _temp_v.length - 1) + ",";
					_data_value += _temp_v.substring(row_begin_index+1, _temp_v.length - 1) + ",";
				}							
			});
		}
	}
});




			
			
			
		},
		complete : function(XMLHttpRequest, textStatus) {
			// 成功
		}
		});

}

/* 
name:choose.js;
function:clear;
creater:luozhiqiang;
modify:none;
update-time:2010-11-30;
*/
$(".reset_bt").click(function(){
	$(".data ol li").remove();
	$(".c_content li.selected").removeClass("selected");
	$(".c_content li.check").addClass("selected");
	return false;
	
});


