package com.kg.jdbcconnectivity;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UserController")
public class UserController extends HttpServlet {
    
    
    ArrayList<User> employee= new ArrayList<User>();
    public String mode="";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        System.out.println("***********************"+employee);
        try {
            switch (action) {
            // case "/new":
            //     newlogs(request, response);
            //     break;
            case"saveorupdate":
                System.out.println("Insert method called:");
                saveorupdateUsers(request, response);
                break;
            case "delete":
                System.out.println("delete method called:");
                deleteUsers(request, response);
                break;
            case "edit":
                System.out.println("Edit Method Called");
                editUsers(request, response);
                break;
            // case "update":
            // System.out.println("update method called:");
            //     updateUsers(request, response);
            //     break;
            default:
                ListUsers(request, response);
                break;
            }
        } catch (SQLException ex) {
            System.out.println(ex);
            }
    }

   
   

    protected void ListUsers(HttpServletRequest request, HttpServletResponse response)
            throws SQLException, IOException, ServletException {
                System.out.println("List Called");
                String query ="select * from employee";
                ResultSet resultset = MysqlConnect.getDbCon().query(query);
                List lst = MysqlConnect.getDbCon().resultSetToArrayList(MysqlConnect.getDbCon().query(query));
                employee.clear();
                while(resultset.next())
                {
                employee.add(new User(resultset.getString("id"),resultset.getString("name"),resultset.getInt("salary")));
                
            }
        System.out.println("the employee list is::"+employee);
        request.setAttribute("employee", employee);
        RequestDispatcher dispatcher = request.getRequestDispatcher("logform.jsp");
        dispatcher.forward(request, response);
    }
    private void editUsers(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        mode="update";
        RequestDispatcher view = request.getRequestDispatcher("index.jsp");
        view.forward(request, response);
    }


    //    String id = Integer.parseInt(request.getParameter("id"));
    //     Users existingUsers = new Users();
    //     for (Users logs : User) {
    //         if (logs .getId() == id) {
    //             existingUsers = logs ;
    //         }
    //          break;
    //     }
    //     request.setAttribute("logs ", existingUsers);
    //     RequestDispatcher dispatcher = request.getRequestDispatcher("logform.jsp");
    //     dispatcher.forward(request, response);
    // }

    private void saveorupdateUsers(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException {
         if (mode != "update") {
            System.out.println("insert called");
        String id=req.getParameter("id");
		String name = req.getParameter("name");
		int salary = Integer.parseInt(req.getParameter("salary"));
		System.out.println("*********************");
		String sql = "INSERT INTO employee (id, name, salary) VALUES (" + id + "," + "'" + name + "'" + "," + "'" + salary + "'" + ")";
		int resultSet = MysqlConnect.getDbCon().insert(sql);
               
        // employee.add(new User(resultSet.getInt("id"), resultSet.getString("name"), resultSet.getInt("salary")));

    }
    else{
        System.out.println("update called");
        String id=req.getParameter("id");
        String name = req.getParameter("name");
        int salary=Integer.parseInt(req.getParameter("salary"));
        String sql = "UPDATE employee SET name="+"'"+name+"',salary="+salary+" WHERE id="+id;
        int resultSet = MysqlConnect.getDbCon().update(sql);
        mode="";
        
    }
    RequestDispatcher dis = req.getRequestDispatcher("/UserController?action=");
        dis.forward(req, resp);
}

    // private void updateUsers(HttpServletRequest request, HttpServletResponse response)
    //         throws SQLException, IOException , ServletException {
    //     System.out.println("updatelogs called");

    //    String id = Integer.parseInt(request.getParameter("id"));
    //     String name = request.getParameter("name");
    //     int salary= Integer.parseInt(request.getParameter("salary"));
    //     // Users updateUsers = new Users(id, name,salary);
	// 	System.out.println("************");
	// 	String sql="UPDATE employee SET name=?,salary=? WHERE employee_id=?";
	// 	// sql+="WHERE employee_id=?";
	// 	int resultset = MysqlConnect.getDbCon().insert(sql);
	// 	System.out.println(resultset);
	// 	request.setAttribute("resultset", resultset);
    //     RequestDispatcher dispatcher = request.getRequestDispatcher("logform.jsp");
    //     dispatcher.forward(request, response);

        // for (Users logs: User) {
        //     if (logs.getId() == id) {
        //         // System.out.println("{{{{{{{}}}}}}}}"+logs.getId());
        //         User.set(User.in`dexOf(logs), updateUsers);
        //     }
        //      break;
        // }
        // response.sendRedirect("logs");
    

    private void deleteUsers(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        System.out.println("delete called");
        String id=req.getParameter("id");
        System.out.println("id="+id);

        String sql = "DELETE FROM employee WHERE id="+id;
        System.out.println("id="+id);

        int resultSet = MysqlConnect.getDbCon().deleteQuery(sql);
        RequestDispatcher dis = req.getRequestDispatcher("/UserController?action=");
        dis.forward(req, resp);

        }
}