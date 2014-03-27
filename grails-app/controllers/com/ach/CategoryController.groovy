package com.ach

class CategoryController {

	def scaffold=Category
	static hasMany = [Business]
    def index() { }
    def success(){}
	
}
