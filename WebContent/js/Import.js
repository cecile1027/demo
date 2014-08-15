/**
 * 
 */

function creatXMLHttpRequest(){
	var xmlHttpRequest = null;
	if(window.XMLHttpRequest){
		 xmlHttpRequest = new XMLHttpRequest();
	}else if(window.ActiveXObject){
		try{
			xmlHttpRequest = new ActiveXObject("Microsoft.XMLHTTP");
		}catch (e) {
			try{
				xmlHttpRequest = new ActiveXObject("Msxm12.XMLHTTP");
			}catch (e) {				
			}			
		}	
	}
	return xmlHttpRequest;
}