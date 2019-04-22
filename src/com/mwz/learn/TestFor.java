package com.mwz.learn;

/**
 * ≤‚ ‘for—≠ª∑
 * @author mwz
 *
 */
public class TestFor {
	
	public static void main(String[] args) {
		
		/*
		 * for(int i = 1; i <= 1000; i++) { if(i%5==0) { System.out.print(i + "	"); }
		 * 
		 * if(i%25==0) { System.out.println(); }
		 * 
		 * }
		 */
		
		outer : for(int i = 101;i<=150;i++) {
			
			for(int j = 2;j<i/2;j++) {
				
				if(i%j == 0) {
					continue outer;
				}
				
				
			}
			System.out.print(i+"£¨");
			
		}
		
	}
	
	
}	
