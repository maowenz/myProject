package test;

import java.util.HashMap;
import java.util.Map;

public class TestOrderStatus {
	
	static Map<String, Integer> normalOrderMap;
	
	static {
		normalOrderMap = new HashMap<>();
		normalOrderMap.put("待接单", 1);
		normalOrderMap.put("交易中", 2);
		normalOrderMap.put("卖家已确认", 3);
		normalOrderMap.put("买家已确认", 4);
		normalOrderMap.put("取消中", 5);
		normalOrderMap.put("已签收", 6);
		normalOrderMap.put("已失效", 7);
	}
	
	public static Boolean checkOrderStatus(String key1,String key2) {

		if(key1 == null && normalOrderMap.get(key2) == 1) {
			return true;
		}else if("待接单".equals(key1)) {
			return normalOrderMap.get(key2)-normalOrderMap.get(key1) == 1;
		}else if("交易中".equals(key1)) {
			return normalOrderMap.get(key2)-normalOrderMap.get(key1) == 1 || normalOrderMap.get(key2)-normalOrderMap.get(key1) == 2 || normalOrderMap.get(key2)-normalOrderMap.get(key1) == 3;
		}else if("卖家已确认".equals(key1)) {
			return normalOrderMap.get(key2)-normalOrderMap.get(key1) == 3 || normalOrderMap.get(key2)-normalOrderMap.get(key1) == 2;
		}else if("买家已确认".equals(key1)) {
			return normalOrderMap.get(key2)-normalOrderMap.get(key1) == 2 || normalOrderMap.get(key2)-normalOrderMap.get(key1) == 1;
		}else if("取消中".equals(key1)) {
			return normalOrderMap.get(key2)-normalOrderMap.get(key1) == 2 || normalOrderMap.get(key2)-normalOrderMap.get(key1) == -1 || normalOrderMap.get(key2)-normalOrderMap.get(key1) == -2;
		}else {
			return false;
		}
		
	}
	
	public static void main(String[] args) {
		
		if(checkOrderStatus("取消中", "买家已确认")) {
			System.out.print("订单状态正确");
		}else {
			System.out.print("订单状态错误");
		}
		
	}
	
}
