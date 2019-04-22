package test;

import java.util.ArrayList;
import java.util.List;

public class Example {
	
	public static void main(String[] args) {
		
		List<String> list = new ArrayList<String>();
		list.add("123456");
		list.add(null);
		list.add("sss");
		
		list.stream().forEach(e -> System.out.println(e));
		list.removeIf(e -> isNotValid(e));
		list.stream().forEach(e -> System.out.println(e));
        
	}
	
	
	public static boolean isValid(String str) {
        if (null == str || str.length() < 6) {
            return false;
        }
        return true;
    }

    public static boolean isNotValid(String str) {
        return !isValid(str);
    }
}
