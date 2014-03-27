package com.ach

class Business {
	
	String name;
	String address;
	Category category;

    static constraints = {
		category unique:true
    }
}
