package com.ach

import com.sun.beans.decoder.TrueElementHandler;
import com.sun.xml.internal.bind.v2.runtime.Name;

class BusinessController {
	
	//def BusinessService; 
	//this file is not belong to project. this is just to test if it works or not

	def scaffold=Business
    def index() { }
	
	def add(){
		def category=new Category([name:'test'])
		category.save();
		def business=new Business([address:'testing',name:'testing'])
		business.category=category;
		business.save();
		def businesses=Business.list();
		return(
			[businesses:businesses]
			)
		
		
		
	}
	
	
}
