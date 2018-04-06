package Controller;

import model.User;

import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Created by HIMGIRI on 28-03-2018.
 */
@WebServlet(name = "LoginServlet")
public class LoginServlet extends HttpServlet {
    private Connection con=null;
    private static PreparedStatement ps;
    private static ResultSet rs;

    String username=null;
    String useremail=null;
    String userpass=null;
    String userpass2=null;
    String userreg_id=null;
    String dob=null;
    String buttonValue=null;
    PrintWriter out;
    User user;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);}
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        out=response.getWriter();
        username=request.getParameter("name_us");
        useremail=request.getParameter("emauil_us");
        userpass=request.getParameter("pass_us");
        userpass2=request.getParameter("conf_pass_us");
        userreg_id=request.getParameter("reg_id");
        dob=request.getParameter("dob");
        buttonValue=request.getParameter("sign-sign-up-button");
        //out.println(buttonValue);
        if(buttonValue.equals("sign_in")){
        try {
            user=new User();
            if(user.validate(useremail,userpass)){
                RequestDispatcher rd= request.getRequestDispatcher("dashboard.jsp");
                out.println("<h5 STYLE=\"color: darkred\">Login Sucess</h5>");
                rd.include(request,response);
            }
        }
     catch(Exception e){e.printStackTrace();}
    }
    else if(buttonValue.equals("sign_up")){
            try {
                user=new User();
                user.insertData(username,useremail,userpass,userreg_id,dob);
                //TODO get the value and check the data is inserted
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
                rd.forward(request,response);
            }
            catch (Exception e){e.printStackTrace();}
        }
    }
}