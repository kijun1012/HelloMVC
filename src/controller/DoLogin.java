package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.Customer;
import service.CustomerService;

/**
 * Servlet implementation class DoLogin
 */
@WebServlet("/doLogin")
public class DoLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DoLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("ID");
		// String pw = request.getParameter("PW");

		// Perform business logic. Return a bean as a result.

		CustomerService service = new CustomerService();
		Customer customer = service.findCustomer(id);
		request.setAttribute("customer", customer);     //45m id 찾는 부분 setAttribute
		
		//we can iterate over lists using forEach in JSTL
		List<Customer> customers = new ArrayList<>();
		customers.add(new Customer("fff","find","fdfdfd"));
		customers.add(new Customer("ggg","find","fdfdfd"));
		customers.add(new Customer("hhh","find","fdfdfd"));
		request.setAttribute("customerList", customers);
		
		String page;
		
		if (id == null)
			page = "/view/error.jsp";
		else
			page = "/view/success.jsp;";

		RequestDispatcher dispatcher = request.getRequestDispatcher(page);
		dispatcher.forward(request, response);

	}

}
