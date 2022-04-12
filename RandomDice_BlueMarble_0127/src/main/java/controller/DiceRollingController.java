package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/diceRolling.do")
public class DiceRollingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Random rs = new Random();
		int result = rs.nextInt(6) + 1;
		
		System.out.println("주사위 값 : " + result);
		
		PrintWriter out = response.getWriter();
		out.print(result);
		
		
	}

}
