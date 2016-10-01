package service;

import java.util.HashMap;
import java.util.Map;

import Model.Customer;

public class CustomerService {

	private Map<String, Customer> customers;

	public CustomerService() {
		customers = new HashMap<String, Customer>();
		addCustomer(new Customer("aaa", "kijun1", "kijun1@naver.com"));
		addCustomer(new Customer("bbb", "kijun2", "kijun2@naver.com"));
		addCustomer(new Customer("ccc", "kijun3", "kijun3@naver.com"));
		addCustomer(new Customer("ddd", "kijun4", "kijun4@naver.com"));
		addCustomer(new Customer("eee", "kijun5", "kijun5@naver.com"));
	}

	public void addCustomer(Customer customer) {
		customers.put(customer.getId(), customer); 
	}
	
	public Customer findCustomer(String id){
		if(id != null){
			return (customers.get(id.toLowerCase()));
		}
		else return null;
	}
}
