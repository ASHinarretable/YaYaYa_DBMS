package user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BaliTrav
 */
@WebServlet("/RomeT")
public class RomeT extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private static final String INSERT_QUERY="INSERT INTO route(Destination, StartDate, EndDate, Number_Of_People, routeID) VALUES(?,?,?,?,?)";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RomeT() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse res)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw=response.getWriter();
		response.setContentType("text/jsp");
		String destination=request.getParameter("destination");
		String SDate=request.getParameter("SDate");
		String EDate=request.getParameter("EDate");
		String people=request.getParameter("people");
		String userId=request.getParameter("userId");
		RequestDispatcher dispatcher=null;
		
		
		
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try(Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Trip_Planner?useSSL=false","root","Root@123"); PreparedStatement ps=con.prepareStatement(INSERT_QUERY);){
			ps.setString(1,destination);
			ps.setString(2,SDate);
			ps.setString(3,EDate);
			ps.setString(4,people);
			ps.setString(5,userId);
			
			
			
			int rowCount = ps.executeUpdate();
			dispatcher = request.getRequestDispatcher("RomeT.jsp");
			if(rowCount > 0) {
			    request.setAttribute("status", "success");
			}
			else {
			    request.setAttribute("status", "fail");
			}

			dispatcher.forward(request, response);
	      }
		catch(SQLException se){
			pw.println(se.getMessage());
			se.printStackTrace();
		}catch(Exception e) {
			pw.println(e.getMessage());
			e.printStackTrace();
		}
				
	}
	
}
