package test;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5 {
	public static void main(String[] args) {
        String s = "user=17693159284&signature=2C54kK485hcmacN5dX8aXMaaKw6aWMMH&date=20180218";

        try {
            MessageDigest m;
            m = MessageDigest.getInstance("MD5");
            m.update(s.getBytes(), 0, s.length());
            String md5Val = new BigInteger(1, m.digest()).toString(16);
            System.out.println(md5Val);
        } catch (NoSuchAlgorithmException e) {//2222bb66aa5500559944001122224477
            e.printStackTrace();
        }
    }
}
