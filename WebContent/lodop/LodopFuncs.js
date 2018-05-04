function getLodop(oOBJECT,oEMBED){
/**************************
  本函数根据浏览器类型决定采用哪个对象作为控件实例：
  IE系列、IE内核系列的浏览器采用oOBJECT，
  其它浏览器(Firefox系列、Chrome系列、Opera系列、Safari系列等)采用oEMBED。
**************************/
        var strHtml1="<br><font color='#FF00FF'>打印控件未安装!</font>";
        var strHtml2="<br><font color='#FF00FF'>打印控件需要升级!</font>";
        var strHtml3="<br><br><font color='#FF00FF'>(注：如曾安装过Lodop旧版附件npActiveXPLugin,请在【工具】->【附加组件】->【扩展】中先卸载它)</font>";
        var LODOP=oEMBED;		
	try{
	     if (navigator.appVersion.indexOf("MSIE")>=0) LODOP=oOBJECT;

	     if ((LODOP==null)||(typeof(LODOP.VERSION)=="undefined")) {
		 if (navigator.userAgent.indexOf('Firefox')>=0)
  	         document.documentElement.innerHTML=strHtml3+document.documentElement.innerHTML;
		 if (navigator.appVersion.indexOf("MSIE")>=0) document.write(strHtml1); else
		 document.documentElement.innerHTML=strHtml1+document.documentElement.innerHTML;
	     } else if (LODOP.VERSION<"6.0.3.0") {
		 if (navigator.appVersion.indexOf("MSIE")>=0) document.write(strHtml2); else
		 document.documentElement.innerHTML=strHtml2+document.documentElement.innerHTML; 
	     }
	     //*****如下空白位置适合调用统一功能:*********	     


	     //*******************************************
	     return LODOP; 
	}catch(err){
	     document.documentElement.innerHTML="Error:"+strHtml1+document.documentElement.innerHTML;
	     return LODOP; 
	}
}
//条码打印
function printViewBarCodeContent(barcodeValues,barCodeType) {  
	var LODOP=getLodop(document.getElementById('LODOP'),document.getElementById('LODOP_EM'));    
	LODOP.PRINT_INIT("打印条码"+Math.random()); 
	LODOP.SET_PRINT_PAGESIZE(1,500,450,"");	  
	var barcodeValue=barcodeValues.split(",");  
		for (i=0;i<barcodeValue.length;i++ )    
	    {   
			LODOP.NewPage();
			var barcodeValueDetail=barcodeValue[i].split("|"); 
			if(barcodeValueDetail.length==2){
				for(j=0;j<barcodeValueDetail.length;j++){
					if(j==0){
						if(i==0){
						  LODOP.ADD_PRINT_TEXT(10,10,200,20,barcodeValueDetail[j]); 
						} else{
							LODOP.ADD_PRINT_TEXT(20,10,200,20,barcodeValueDetail[j]); 
						}
					}else{
						LODOP.ADD_PRINT_BARCODE(40,10,160,80,"128A",barcodeValueDetail[j]);
					} 
				} 
			} else if(barcodeValueDetail.length==3){
				for(j=0;j<barcodeValueDetail.length;j++){
					if(j==0){
						if(i==0){
							  LODOP.ADD_PRINT_TEXT(10,10,200,20,barcodeValueDetail[j]); 
							} else{
								LODOP.ADD_PRINT_TEXT(20,10,200,20,barcodeValueDetail[j]); 
							}
					} else if(j==1){
						LODOP.ADD_PRINT_TEXT(40,10,200,20,barcodeValueDetail[j]); 
					}else{
						LODOP.ADD_PRINT_BARCODE(60,10,160,80,"128A",barcodeValueDetail[j]);
					} 
				} 
			} else  if(barcodeValueDetail.length==4){
				for(j=0;j<barcodeValueDetail.length;j++){
					if(j==0){
						if(i==0){
							  LODOP.ADD_PRINT_TEXT(10,10,200,20,barcodeValueDetail[j]); 
							} else{
								LODOP.ADD_PRINT_TEXT(20,10,200,20,barcodeValueDetail[j]); 
							}
					} else if(j==1){
						LODOP.ADD_PRINT_TEXT(40,10,200,20,barcodeValueDetail[j]); 
					}else if(j==2){
						LODOP.ADD_PRINT_TEXT(60,10,200,20,barcodeValueDetail[j]); 
					}else{
						LODOP.ADD_PRINT_BARCODE(80,10,160,80,"128A",barcodeValueDetail[j]);
					} 
				} 
			} else  if(barcodeValueDetail.length==5){
				for(j=0;j<barcodeValueDetail.length;j++){
					if(j==0){
						if(i==0){
							  LODOP.ADD_PRINT_TEXT(10,10,200,20,barcodeValueDetail[j]); 
							} else{
								LODOP.ADD_PRINT_TEXT(20,10,200,20,barcodeValueDetail[j]); 
							}
					} else if(j==1){
						LODOP.ADD_PRINT_TEXT(40,10,200,20,barcodeValueDetail[j]); 
					}else if(j==2){
						LODOP.ADD_PRINT_TEXT(60,10,200,20,barcodeValueDetail[j]); 
					}else if(j==3){
						LODOP.ADD_PRINT_TEXT(80,10,200,20,barcodeValueDetail[j]); 
					}else{
						LODOP.ADD_PRINT_BARCODE(100,10,160,60,"128A",barcodeValueDetail[j]);
					} 
				} 
			} 
	    }  
	LODOP.PREVIEW();
}

