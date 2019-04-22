package test;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

public class TestReadJsonFile {
	
	
	public static String readJson(String filePath) throws IOException {
		
		StringBuffer sBuffer = new StringBuffer();
		File file = new File(filePath);
		
		if(!file.exists()) {
			System.out.println("Can't found "+filePath);
		}
		
		try {
			FileInputStream fileInputStream = new FileInputStream(filePath);
			InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream, "UTF-8");
			BufferedReader reader = new BufferedReader(inputStreamReader);
			
			String str;
			while ((str = reader.readLine()) != null) {
				sBuffer.append(str);
			}
			
		}catch (IOException e) {
			e.getStackTrace();
		}
		
		return sBuffer.toString();
		
	}
	
	public static void main(String[] args) {
		try {
			String str = readJson("C:\\Users\\admin01\\Desktop\\b.json");
			System.out.println(str);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
}
