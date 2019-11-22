<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<style type="text/css">
		body{
			background: #000;
			overflow: hidden;
		}
	</style>
</head>
<body>
<script>
// 纯原生js版
function flySnow(){
	var snow = document.createElement("div");
	snow.style.cssText = 'position:absolute;color:#fff;';
	var vw = document.documentElement.clientWidth - 20,
		vh = document.documentElement.clientHeight - 5;
	setInterval(function(){
		var cloneSnow = snow.cloneNode();
		var arr = ['❄','❉','❅','❆','✻','✼','❇','❈','❊','✥','✺'],
			style = arr[Math.floor(Math.random() * 11)];
			cloneSnow.innerHTML = style;
		var startLeft = vw * Math.random(),
			endLeft = vw * Math.random();
		var startOpa = 0.8 + 0.2 * Math.random(),
			endOpa = 0.2 + 0.2 * Math.random();
		var startSize = 6 + 25 * Math.random(),
			endSize = 5 + 18 * Math.random();
		var duration = 5000 + 6000 * Math.random();
		cloneSnow.style.cssText += 'left:'+startLeft+'px;'
								 + 'top:'+-22+'px;'
								 + 'opacity:'+startOpa+";"
								 + 'font-size:'+startSize+'px;'
								 + 'transition:'+duration+'ms;';
		document.body.appendChild(cloneSnow);
		setTimeout(function(){
			cloneSnow.style.cssText += 'left:'+endLeft+'px;'
									 + 'top:'+(vh - endSize)+'px;'
									 + 'opacity:'+endOpa+';'
									 + 'font-size:'+endSize+'px;'
									 + 'transform:'+'rotateZ(720deg);';
			setTimeout(function(){
				cloneSnow.remove();
			},duration)
		},0)
	},15)
}
flySnow();
</script>
 
 
<script src="jquery-1.12.4.js"></script>
<script>
//面向对象版
let flySnow = (function(){
	function Fn(){
		this.snow = function(d){
			let vw = $(document).innerWidth(),
				vh = $(window).height();
			d = d || 5000 + 6000 * Math.random();
			d = d === "fast" ? 4000 + 4000 * Math.random() : d === "slow" ? 7000 + 8000 * Math.random() : d;
			this.element = document.createElement("div");
			this.startLeft = vw * Math.random();
			this.endLeft = vw * Math.random();
			this.endTop = vh;
			this.startOpa = 0.8 + 0.2 * Math.random();
			this.endOpa = 0.2 + 0.2 * Math.random();
			this.startSize = 6 + 25 * Math.random();
			this.endSize = 5 + 18 * Math.random();
			this.duration = d ;
			this.style = (function(){
					let arr = ['❄','❉','❅','❆','✻','✼','❇','❈','❊','✥','✺'];
					return arr[Math.floor(Math.random() * arr.length)];
			})();
		}
		this.fly = function(s, d){
			setInterval(()=>{
				let snow = new this.snow(d);
				snow.element.innerText = snow.style;
				snow.element.style.cssText = `position: absolute;
											  color: #fff;
											  left: ${snow.startLeft}px;
											  top: -22px;
											  opacity: ${snow.startOpa};
											  font-size: ${snow.startSize}px;
											  transition: ${snow.duration}ms;`;
				$("body").append(snow.element);
				setTimeout(()=>{
					snow.element.style.cssText += `left: ${snow.endLeft}px;
												  top: ${snow.endTop - 20}px;
												  opacity: ${snow.endOpa};
												  font-size: ${snow.endSize}px;
												  transform: rotate(720deg);
					setTimeout(()=>{
						snow.element.remove()
						snow = null;
					}, snow.duration)
				}, 0)
			}, s)
		}
	}
	return new Fn();
}());
flySnow.fly(30, "slow");
</script>
</body>
</html>
