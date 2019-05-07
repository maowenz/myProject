package com.mwz.learn.oo;

/**
 * ≤‚ ‘equals
 * 
 * @author mwz
 *
 */

public class TestEquals {

	public static void main(String[] args) {

		User user1 = new User(1, "mwz", 20);
		User user2 = new User(1, "maowz", 24);

		System.out.println(user1 == user2);
		System.out.println(user1.equals(user2));

	}

}

class User {

	private int id;
	private String name;
	private int age;

	public User(int id, String name, int age) {
		this.id = id;
		this.name = name;
		this.age = age;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		User user = (User) obj;
		if (id == user.id)
			return true;
		return false;
	}

	  
	 
}
