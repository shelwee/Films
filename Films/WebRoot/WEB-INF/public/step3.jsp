<%@ page language="java" import="java.util.*,com.films.utils.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String filePath=getServletContext().getRealPath("/");
%>

<jsp:include page="/WEB-INF/public/head_pay.jsp"/>

	<div class="wrap">	
		<div class="content">

				<h2>
					<a href="<%=path %>" title="首页">首页</a> &gt;
					<a href="<%=path %>/index.do?flag=time" title="购票">购票</a> &gt;
					<a class="c_on" href="#" title="完成支付">完成支付</a>
				</h2>
				<div class="box_t over">

					<div class="box_l"></div>

					<div class="box_r"></div>

				</div>
				<div class="box2">



					<div class="box2_m">

						<h3>
							完成支付
						</h3>
						<div class="pay_ok2">

						<div class="pay_le">

							<p class="le_choose">
								您选择了：
							</p>

							<div class="le_text">

								<ul>

									<li class="le_tecol">
										影院：
										<span> 康美电影城</span>
									</li>

									<li>
										影片: ${mtt.timetable.film.ffilmName }
									</li>

									<li>
										场次: ${mtt.timetable.tdate } ${mtt.timetable.ttime }
									</li>

									<li id="tnum">
										数量：${mtt.ocount }张
									</li>

									<li>
										座位信息：${mtt.seat.hall.hhall } ${mtt.seat.serow }排${mtt.seat.senum }号  <c:if test="${seats!=null }"> ${seats.seat.serow }排${seats.seat.senum }号</c:if>	
									</li>

									<li id="tprice" title="100">
										票价：${mtt.timetable.tticketPrice }元
									</li>

									<li>
										手续费：
										<span id="payFee">0</span>元
									</li>
								</ul>
							</div>
							<p id="le_money_y" style="margin-bottom: 5px;"></p>

							<p class="le_all" id="memTotal" title="100">
								总价：
								<span id="_meney">${mtt.omoney }</span>元
							</p>

							<p class="le_tips">
								交易信息提示：请您在
								<span>15分钟</span>内完成付款，否则系统将自动释放座位
							</p>
							

						</div>
						<div class="pay_shud"></div>

						<div class="pay_ght">
						<div class="table">
						<div id="hidden">
						<div class="tim">

						<div class="taba idTabs">

						<ul class="tab_nav clearfix ">
							<li id="bank_pay_a_li" title="_">
								<a id="bank_pay_a" href="#one" title="网上银行支付" class="selected">网上银行支付</a>
							</li>							
							
						</ul>
						<img alt="1" src="images/card_card2.gif">
						<div class="items one clearfix" style="display: block;">
							<div class="pay_all">
								<div class="pay">
					<form action="<%=path%>/paymentRequest.do?flag=payment" method="post" id="goPay">
					请选择以下银行支付：
					<input type="hidden" name="orderid" value="${mtt.odid }"/>
					<input type="hidden" name="amount" value="${mtt.omoney }"/>
					<ul>					
						<li class="payli">
							<input type="radio" name="pd_FrpId" value="ICBC-NET" style="display: none;">
							<a href="javascript:void(0)" title="中国工商银行"><img src="images/bank/ICBC_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="CMBCHINA-NET" style="display: none;">
							<a href="javascript:void(0)" title="招商银行"><img src="images/bank/CMB_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="CCB-NET" style="display: none;">
							<a onclick="paySub('CCB-NET')" title="中国建设银行"><img src="images/bank/CCB_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="BOCB2C-NET" style="display: none;">
							<a href="javascript:void(0)" title="中国银行"><img src="images/bank/BOC_OUT.gif" alt="ddd" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="ABC-NET" style="display: none;">
							<a href="javascript:void(0)" title="中国农业银行"><img src="images/bank/ABC_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="BOCO-NET" style="display: none;">
							<a href="javascript:void(0)" title="交通银行"><img src="images/bank/COMM_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
						<input type="radio" name="pd_FrpId" value="SPDB-NET" style="display: none;">
							<a href="javascript:void(0)" title="浦发银行"><img src="images/bank/ENV_SPDB_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="GDB-NET" style="display: none;">
							<a href="javascript:void(0)" title="广东发展银行"><img src="images/bank/GDB_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="ECITIC-NET" style="display: none;">
							<a href="javascript:void(0)" title="中信银行"><img src="images/bank/CITIC_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="CEB-NET" style="display: none;">
							<a href="javascript:void(0)" title="中国光大银行"><img src="images/bank/CEB_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="CIB-NET" style="display: none;">
							<a href="javascript:void(0)" title="兴业银行"><img src="images/bank/CIB_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="SDB-NET" style="display: none;">
							<a href="javascript:void(0)" title="深圳发展银行"><img src="images/bank/SDB_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="CMBC-NET" style="display: none;">
							<a href="javascript:void(0)" title="中国民生银行"><img src="images/bank/CMBC_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="HZCB-NET" style="display: none;">
							<a href="javascript:void(0)" title="杭州银行"><img src="images/bank/HZCB_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="SHBANK-NET" style="display: none;">
							<a href="javascript:void(0)" title="上海银行"><img src="images/bank/SHBANK_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>


						<li class="payli">
							<input type="radio" name="pd_FrpId" value="SPABANK-NET" style="display: none;">
							<a href="javascript:void(0)" title="平安银行"><img src="images/bank/SPABANK_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="BJRCB-NET" style="display: none;">
							<a href="javascript:void(0)" title="北京农商银行"><img src="images/bank/BJRCB_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="ICBCBTB-NET" style="display: none;">
							<a href="javascript:void(0)" title="中国工商银行企业"><img src="images/bank/ENV_ICBC_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="CCBBTB-NET" style="display: none;">
							<a href="javascript:void(0)" title="中国建设银行企业"><img src="images/bank/ENV_CCB_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>

						<li class="payli">
							<input type="radio" name="pd_FrpId" value="PSBC-DEBIT-NET" style="display: none;">
							<a href="javascript:void(0)" title="中国邮政储蓄银行"><img src="images/bank/PSBC_OUT.gif" width="138" height="38" class="img138">
							</a>
						</li>
					</ul>					
					</form>
	</div>
							</div>
						</div>
						</div>
						</div>
						</div>
		</div>
	</div>
	</div>
</div>
</div>

		 <div class="box_b"></div>
</div>
</div>
<script type="text/javascript">
$(".pay ul li").each(function(){
  var self = $(this);//为了不让this搞混淆所以设置一个变量，改变量为当前li
  self.click(function(){
     $(this).children().attr("checked","checked");
     var bank = $(this).children().val();
     if(bank=="ICBC-NET"){
     	bank="中国工商银行";
     }else if(bank=="CMBCHINA-NET"){
     	bank="招商银行";
     }else if(bank=="CCB-NET"){
     	bank="中国建设银行";
     }else if(bank=="BOCB2C-NET"){
     	bank="中国银行";
     }else if(bank=="ABC-NET"){
     	bank="中国农业银行";
     }else if(bank=="BOCO-NET"){
     	bank="交通银行";
     }else if(bank=="SPDB-NET"){
     	bank="浦发银行";
     }else if(bank=="GDB-NET"){
     	bank="广东发展银行";
     }else if(bank=="ECITIC-NET"){
     	bank="中信银行";
     }else if(bank=="CEB-NET"){
     	bank="中国光大银行";
     }else if(bank=="CIB-NET"){
     	bank="兴业银行";
     }else if(bank=="SDB-NET"){
     	bank="深圳发展银行";
     }else if(bank=="CMBC-NET"){
     	bank="中国民生银行";
     }else if(bank=="HZCB-NET"){
     	bank="杭州银行";
     }else if(bank=="SHBANK-NET"){
     	bank="上海银行";
     }else if(bank=="SPABANK-NET"){
     	bank="平安银行";
     }else if(bank=="BJRCB-NET"){
     	bank="北京农商银行";
     }else if(bank=="ICBCBTB-NET"){
     	bank="中国工商银行企业";
     }else if(bank=="CCBBTB-NET"){
     	bank="中国建设银行企业";
     }else if(bank=="PSBC-DEBIT-NET"){
     	bank="中国邮政储蓄银行";
     }
     var r=confirm("确认选择"+bank+"支付?");
	  if (r==true)
	    {
	    $("#goPay").submit();
	    }
	  else
	    {
	   	
	    }
	  });
});

</script>
	
<jsp:include page="/WEB-INF/public/foot.jsp"/>
