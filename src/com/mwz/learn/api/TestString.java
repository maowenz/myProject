package com.mwz.learn.api;

public class TestString {
	
	public static void main(String [] args) {
		
		String s1 = "Java core";
		String s2 = "Java Core";
		
		System.out.println(s1.charAt(3));
		System.out.println(s2.length());
		System.out.println(s1.equals(s2));
		System.out.println(s1.equalsIgnoreCase(s2));
		System.out.println(s1.indexOf("Java"));
		System.out.println(s1.indexOf("apple"));
		String s = s1.replace(" ", "&");
		System.out.println("result is :" + s);
		
		
	}
	
}
