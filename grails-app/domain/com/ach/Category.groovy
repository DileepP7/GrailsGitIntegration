package com.ach

class Category {
	
	String name;
	static hasMany = [businesses:Business]

    static constraints = {
		name unique:true
    }
}
