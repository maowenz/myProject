package com.mwz.planeGame;

import java.awt.Image;
import java.awt.image.BufferedImage;
import java.net.URL;

import javax.imageio.ImageIO;

public class GameUtil {
	
	
	private GameUtil() {
		
	}
	
	public static Image getImage(String path) {
		
		BufferedImage bImage = null;
		try {
			URL url = GameUtil.class.getClassLoader().getResource(path);
			bImage = ImageIO.read(url);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return bImage;
		
	}
	
}
