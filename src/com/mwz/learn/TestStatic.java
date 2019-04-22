package com.mwz.learn;


public class TestStatic {
	
	String str1 = "test1";
	
	static String str2 = "test2";
	
	void printString(){
		System.out.println(str2);
	}
	
	/**
	 * 在静态方法中不能使用非静态的属性和方法
	 */
	
	static void test() {
		//System.out.println(str1);
		//printString();
		System.out.println(str2);
	}
	
}
