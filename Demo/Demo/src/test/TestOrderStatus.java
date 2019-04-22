package test;

import java.util.HashMap;
import java.util.Map;

public class TestOrderStatus {
	
	static Map<String, Integer> normalOrderMap;
	
	static {
		normalOrderMap = new HashMap<>();
		normalOrderMap.put("���ӵ�", 1);
		normalOrderMap.put("������", 2);
		normalOrderMap.put("������ȷ��", 3);
		normalOrderMap.put("�����ȷ��", 4);
		normalOrderMap.put("ȡ����", 5);
		normalOrderMap.put("��ǩ��", 6);
		normalOrderMap.put("��ʧЧ", 7);
	}
	
	public static Boolean checkOrderStatus(String key1,String key2) {

		if(key1 == null && normalOrderMap.get(key2) == 1) {
			return true;
		}else if("���ӵ�".equals(key1)) {
			return normalOrderMap.get(key2)-normalOrderMap.get(key1) == 1;
		}else if("������".equals(key1)) {
			return normalOrderMap.get(key2)-normalOrderMap.get(key1) == 1 || normalOrderMap.get(key2)-normalOrderMap.get(key1) == 2 || normalOrderMap.get(key2)-normalOrderMap.get(key1) == 3;
		}else if("������ȷ��".equals(key1)) {
			return normalOrderMap.get(key2)-normalOrderMap.get(key1) == 3 || normalOrderMap.get(key2)-normalOrderMap.get(key1) == 2;
		}else if("�����ȷ��".equals(key1)) {
			return normalOrderMap.get(key2)-normalOrderMap.get(key1) == 2 || normalOrderMap.get(key2)-normalOrderMap.get(key1) == 1;
		}else if("ȡ����".equals(key1)) {
			return normalOrderMap.get(key2)-normalOrderMap.get(key1) == 2 || normalOrderMap.get(key2)-normalOrderMap.get(key1) == -1 || normalOrderMap.get(key2)-normalOrderMap.get(key1) == -2;
		}else {
			return false;
		}
		
	}
	
	public static void main(String[] args) {
		
		if(checkOrderStatus("ȡ����", "�����ȷ��")) {
			System.out.print("����״̬��ȷ");
		}else {
			System.out.print("����״̬����");
		}
		
	}
	
}
