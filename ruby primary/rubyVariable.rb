=begin 

ruby 支持五种类型的变量

一般小写字母、下划线开头：变量
$开头：全局变量
@开头：实例变量
@@开头： 类变量，类变量被共享在真个继承链中

大写字符开头：常数

=end

#ruby 全局变量

## 未初始化话的全局变量的值为nil

$global_variable = 10

class Class1
	def print_global
		puts "全局变量 Class1 中输出 #$global_variable"
	end 
end 

class Class2
	def print_global
		puts "全局变量在Class2 中输出为 #$global_variable"
	end 
end 

class1obj = Class1.new
class1obj.print_global

class2obj = Class2.new
class2obj.print_global


#ruby 实例变量
## 未初始化的实例变量的值为nil
class Customer 
	def initialize(id , name , addr)
		@cust_id = id 
		@cust_name = name
		@cust_addr = addr
	end 

	def display_details()
		puts "Customer id #@cust_id"
		puts "Customer name #@cust_name"
		puts "Customer address #@cust_addr"
	end 
end 

cust1 = Customer.new("1", "John","Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

cust1.display_details
cust2.display_details


# ruby 类变量
## 类变量必须初始化后才能在方法定义中使用

class Customer 
	@@no_of_customers = 0
	def initialize(id , name , addr)
		@cust_id = id 
		@cust_name = name
		@cust_addr = addr
	end 

	def display_details()
		puts "Customer id #@cust_id"
		puts "Customer name #@cust_name"
		puts "Customer address #@cust_addr"
	end 

	def totol_no_of_customers()
		@@no_of_customers += 1
		puts "Total number of customers: #@@no_of_customers"
	end 
end 


cust1 = Customer.new("1", "John","Wisdom Apartments, Ludhiya")
cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

cust2.totol_no_of_customers
cust2.totol_no_of_customers


# ruby 局部变量
## 局部变量的作用域从class 、module、def、 do到响应的结尾或者从左大括号到右大括号{}

#ruby 常量

class Example
	VAR1 = 100
	VAR2 = 200
	def show ()
		puts "第一个常量的值为#{VAR1}"
		puts "第二个常量的值为#{VAR2}"
	
    end 
end 

object = Example.new()
object.show



