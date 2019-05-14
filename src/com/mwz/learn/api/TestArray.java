package com.mwz.learn.api;

import java.util.Arrays;

/**
 * ²âÊÔÊý×é
 * @author mwz
 *
 */

public class TestArray {
	
	public static void main(String[] args) {
		String [] strings = {"aa","bb","cc","dd","ff"};
		String [] strings2 = arrayCopy(strings);
		System.out.println(Arrays.deepToString(strings2));
		
		strings = arrayRemove(strings, 3);
		
		System.out.println(Arrays.deepToString(strings));
	}
	
	
	public static String [] arrayRemove(String [] strings,int index) {
		System.arraycopy(strings, index + 1, strings, index , strings.length - index - 1);
		strings[strings.length -1] = null;
		return strings;
	}
	
	
	
	public static String [] arrayCopy(String [] strings) {
		
		String [] strings2 = new String[(int) (strings.length*1.5)];
		
		
		System.arraycopy(strings, 0, strings2, 0, strings.length);
		
		return strings2;
	}
	
}
