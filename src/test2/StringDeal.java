package test2;

public class StringDeal {
	
	public static String shiftEnter(String str){
		String newstr = str.replaceAll("\r\n", "<br>");
		newstr = newstr.replaceAll(" ", "&nbsp;");
		return newstr;
	}
}
