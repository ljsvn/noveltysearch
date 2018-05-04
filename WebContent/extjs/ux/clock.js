ods.ux.ClockPanel = Ext.extend(Ext.Panel, {
	makeCanvas:function(width, height) {
        var c = document.createElement('canvas');
        c.width = width;
        c.height = height;
        if (Ext.isIE) {// excanvas hack
            c = window.G_vmlCanvasManager.initElement(c);
        }
        return c;
    }
    ,drawClock:function(canvas) {
		function clock(){
		  var now = new Date();
		  var ctx = canvas.getContext('2d');
		  ctx.save();
		  ctx.clearRect(0,0,150,150);
		  ctx.translate(75,75);
		  ctx.scale(0.4,0.4);
		  ctx.rotate(-Math.PI/2);
		  ctx.strokeStyle = "black";
		  ctx.fillStyle = "white";
		  ctx.lineWidth = 8;
		  ctx.lineCap = "round";
		
		  // Hour marks
		  ctx.save();
		  for (i=0;i<12;i++){
		    ctx.beginPath();
		    ctx.rotate(Math.PI/6);
		    ctx.moveTo(100,0);
		    ctx.lineTo(120,0);
		    ctx.stroke();
		  }
		  ctx.restore();
		
		  // Minute marks
		  ctx.save();
		  ctx.lineWidth = 5;
		  for (i=0;i<60;i++){
		    if (i%5!=0) {
		      ctx.beginPath();
		      ctx.moveTo(117,0);
		      ctx.lineTo(120,0);
		      ctx.stroke();
		    }
		    ctx.rotate(Math.PI/30);
		  }
		  ctx.restore();
		  
		  var sec = now.getSeconds();
		  var min = now.getMinutes();
		  var hr  = now.getHours();
		  hr = hr>=12 ? hr-12 : hr;
		
		  ctx.fillStyle = "black";
		
		  // write Hours
		  ctx.save();
		  ctx.rotate( hr*(Math.PI/6) + (Math.PI/360)*min + (Math.PI/21600)*sec )
		  ctx.lineWidth = 14;
		  ctx.beginPath();
		  ctx.moveTo(-20,0);
		  ctx.lineTo(80,0);
		  ctx.stroke();
		  ctx.restore();
		
		  // write Minutes
		  ctx.save();
		  ctx.rotate( (Math.PI/30)*min + (Math.PI/1800)*sec )
		  ctx.lineWidth = 10;
		  ctx.beginPath();
		  ctx.moveTo(-28,0);
		  ctx.lineTo(112,0);
		  ctx.stroke();
		  ctx.restore();
		  
		  // Write seconds
		  ctx.save();
		  ctx.rotate(sec * Math.PI/30);
		  ctx.strokeStyle = "#D40000";
		  ctx.fillStyle = "#D40000";
		  ctx.lineWidth = 6;
		  ctx.beginPath();
		  ctx.moveTo(-30,0);
		  ctx.lineTo(83,0);
		  ctx.stroke();
		  ctx.beginPath();
		  ctx.arc(0,0,10,0,Math.PI*2,true);
		  ctx.fill();
		  ctx.beginPath();
		  ctx.arc(95,0,10,0,Math.PI*2,true);
		  ctx.stroke();
		  ctx.fillStyle = "#555";
		  ctx.arc(0,0,3,0,Math.PI*2,true);
		  ctx.fill();
		  ctx.restore();
		
		  ctx.beginPath();
		  ctx.lineWidth = 14;
		  ctx.strokeStyle = '#325FA2';
		  ctx.arc(0,0,142,0,Math.PI*2,true);
		  ctx.stroke();
		
		  ctx.restore();
		}
		clock();
		setInterval(clock,1000);	
    }
    ,afterRender : function(){
	 	if (!this.canvasWidth) {
	 		this.canvasWidth = this.container.getWidth() * 0.8;
	 	}
	 	if (!this.canvasHeight) {
	 		this.canvasHeight = this.container.getHeight() * 0.9; 
	 	}
	 	this.canvas = this.makeCanvas(this.canvasWidth,this.canvasHeight);
	 	this.body.insertFirst(this.canvas);
	 	this.drawClock(this.canvas);
    	ods.ux.ClockPanel.superclass.afterRender.call(this);

    }
});
Ext.reg('ods.clock', ods.ux.ClockPanel);

ods.ux.CalendarPanel = Ext.extend(Ext.Panel, {
	calendarTemplate: new Ext.XTemplate( 
	'<table bgcolor="#fefeef" border="0" cellpadding="0" cellspacing="0" height="100%" width="100%">'
		,'<tr>'
			,'<td align="center" height="100%" width="100%">'
				,'<font id="calendarClock1" style="font-family: 宋体; font-size: 10pt; line-height: 120%;">'
					,'<font color="#0000df">{ym}</font>'
				,'</font>'
				,'<br/>'
				,'<font id="calendarClock2" style="color: rgb(255, 0, 0); font-family: Arial; font-size: 15pt; line-height: 120%;">'
				,'<font color="#ff0000">{day}</font>'
				,'</font><br/>'
				,'<font id="calendarClock3" style="font-family: 宋体; font-size: 10pt; line-height: 120%;">'
				,'<font color="#0000df">{weekday}</font>'
				,'</font><br/>'
				//,'<font id="calendarClock4" style="color: rgb(16, 0, 128); font-family: 宋体; font-size: 8pt; line-height: 120%;">{time}</font>'
			,'</td>'
		,'</tr>'
	,'</table>'		
	)
	,drawCalendar : function(template, container) {
		function calendar(){
			var date = new Date();
			var record = {ym:date.format('Y年m月'), day:date.format('j'),weekday:date.format('星期D'), time:date.format('H:i:s')};
			var taskText = template.apply(record);
			container.dom.innerHTML = taskText;
		}
		calendar();
		setInterval(calendar,1000);			
	}
	,afterRender : function(){
	 	this.drawCalendar(this.calendarTemplate, this.body);
    	ods.ux.CalendarPanel.superclass.afterRender.call(this);

    }
});
Ext.reg('ods.calendar', ods.ux.CalendarPanel);