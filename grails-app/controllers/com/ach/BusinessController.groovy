package com.ach

import com.sun.beans.decoder.TrueElementHandler;
import com.sun.xml.internal.bind.v2.runtime.Name;

class BusinessController {
	
	//def BusinessService;

	def scaffold=Business
    def index() { }
	
	def add(){
		def category=new Category([name:'Chicken'])
		category.save();
		def business=new Business([address:'Platinum',name:'Cake'])
		business.category=category;
		business.save();
		def businesses=Business.list();
		return(
			[businesses:businesses]
			)
		
		
		
	}
	
	
}
