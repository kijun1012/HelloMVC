package service;

import java.util.HashMap;
import java.util.Map;

import Model.Customer;

public class CustomerService {

	private Map<String, Customer> customers;

	private static final CustomerService instance = new CustomerService();

	private CustomerService() {
		customers = new HashMap<String, Customer>();
	}

	public static CustomerService getInstance() {
		return instance;
	}

	public void addCustomer(Customer customer) {
		customers.put(customer.getId(), customer);
	}

	public Customer login(String id,String pw) {
		if (pw.equals(customers.get(id).getPw())) {
			return (customers.get(id.toLowerCase()));
		} else
			return null;
	}
}
