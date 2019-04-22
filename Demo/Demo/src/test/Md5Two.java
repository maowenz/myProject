package test;

import java.text.SimpleDateFormat;

public class Md5Two{
	
	public static void main(String [] args) {
		StringBuilder str = new StringBuilder();
		int len = 32;
		String charss = "ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz2345678";
		int maxPos = charss.length();
		for(int i=0;i<len;i++) {
			str.append(charss.charAt(new Double(Math.floor(Math.random()*maxPos)).intValue()));
		}
		System.out.println(str);
		System.out.println(str.length());
		
		SimpleDateFormat df = new SimpleDateFormat("yyyyMMdd");   
		System.out.println(df.format(System.currentTimeMillis()));
		
	}
	
	
}
