/**
*	万达首页顶部图片滚动区
*	TalkWeb
*   @author chenjie
*/
(function($){
	$.fn.extend({
		 TopScroll:function(){			
			var tabs=$("#tabName div");
			var contends=$("#listImgs img");
			var end=tabs.length-1;
			var _itv;
			var start=0;
			var _index=0;

			tabs.each(function (index){
				$(this).mouseover(function(){
					autoStop();					
					initClass();
					if(index==start){
						$(this).attr("className","f_a");
					}else if(index==end){
						$(this).attr("className","f_c");
					}else{
						$(this).attr("className","f_b");
					}
					contends.css("display","none");
					$(contends.get(index)).css("display","block");
										
				}).mouseout(function(){
					_index=index;
					autoPlay();
				});

			});
			
			contends.each(function(index){
				$(this).mouseover(function(){
					autoStop();
				});
				$(this).mouseout(function(){
					autoPlay();
				});
			});
			
			function initClass(){
				tabs.each(function (index){
					if(index==start){
						$(this).attr("className","f_1");
					}else if(index==end){
						$(this).attr("className","f_3");
					}else{
						$(this).attr("className","f_2");
					}
				
				});
			}
					
			

			function turnChange(){
				autoStop();
				initClass();				
				if(_index==start){
					$(tabs.get(_index)).attr("className","f_a");
				}else if(_index==end){
					$(tabs.get(_index)).attr("className","f_c");
				}else{
					$(tabs.get(_index)).attr("className","f_b");
				}
				
				
				contends.css("display","none");
				$(contends.get(_index)).css("display","block");
				
				if(_index>=end){
					_index=0;
				}else{
					_index++;
				}
				autoPlay();
			}
			
			
			var autoPlay = function() {
				_itv = window.setInterval(turnChange, 3000);
			};
			
			var autoStop = function() {
				window.clearInterval(_itv);
			};
			
			turnChange();
						
		}
				
	})		  
})(jQuery);