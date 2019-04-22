package com.mwz.learn;
/**
 * 测试递归
 * @author mwz
 *
 */
public class TestRecurision {
	
	public static void main(String[] args) {
		
		long d1 = System.currentTimeMillis();
		System.out.printf("%d的阶乘结果为%s%n",10,recurison(10));
		long d2 = System.currentTimeMillis();
		System.out.printf("递归总耗时%s%n",d2-d1);
		
		loop(10);
		
	}
	
	public static long recurison(int n) {
		
		if(n == 1) {
			return 1;
		}else {
			return n * recurison(n-1);
		}
		
	}
	
	public static void loop(int n) {
		
		long d1 = System.currentTimeMillis();
		long result = 1;
		while (n>1) {
			result *= n * (n-1);
			n -= 2;
		}
		
		System.out.printf("%d的阶乘结果为%s%n",10,result);
		long d2 = System.currentTimeMillis();
		System.out.printf("递归总耗时%s%n",d2-d1);
		
		
	}
	
}
