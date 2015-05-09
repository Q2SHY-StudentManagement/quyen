<%-- 
    Document   : showData
    Created on : May 7, 2015, 1:39:21 PM
    Author     : Vu Hoang Hieu
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List stuents</title>
    </head>
    <body>
        <form>
        <input type="text" value="" name="txtSearch"/>
        <input type="submit" value="Search student" name="btSearch"/>
        <br>*Search by Student's ID and Student's name.
        <br><br>
        <%
            //get parameter
            String search=request.getParameter("btSearch");
            String txtSearch=request.getParameter("txtSearch");
            //connect database
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con=DriverManager.getConnection("jdbc:odbc:StudentManagement");
            // search button clicked
            if(search!=null){
                String sql=null;
                try{
                    int txtID=Integer.parseInt(txtSearch);
                    sql="select * from Student where Student_ID="+txtSearch;
                }catch(Exception e){
                    sql="select * from Student where Name like '%"+txtSearch+"%'";
                }
                
                ResultSet rs=con.createStatement().executeQuery(sql);
                if(rs.next()){
        %>
        <table border="1">
            <tr><th>Student ID</th> <th>Student name</th> <th>Date of birth</th> <th>Gender</th> <th>Hometown</th> <th>Phone number</th> <th>Action</th></tr>
        <%
            do{
                int id=rs.getInt(1);
                String name=rs.getString(2);
                String dob=rs.getString(3);
                String gender=rs.getString(4);
                String hometown=rs.getString(5);
                String phone=rs.getString(6);
        %>
            <tr><th><%=id%></th> <th><%=name%></th> <th><%=dob%></th> <th><%=gender%></th> <th><%=hometown%></th> <th><%=phone%></th> <th><a href="editStudent.jsp?id=<%=id%>">Edit</a> / <a href="deleteStudent.jsp?id=<%=id%>">Delete</a></th></tr>
        <%        
            }while(rs.next());
        %>
        </table>
        <%
            }else{
        %>
        <h2>No student found.</h2>
        <%
            }
            }else{
                String sql="select * from Student";
                ResultSet rs=con.createStatement().executeQuery(sql);
                if(rs.next()){
        %>
        <table border="1">
            <tr><th>Student ID</th> <th>Student name</th> <th>Date of birth</th> <th>Gender</th> <th>Hometown</th> <th>Phone number</th> <th>Action</th></tr>
        <%
            do{
                int id=rs.getInt(1);
                String name=rs.getString(2);
                String dob=rs.getString(3);
                String gender=rs.getString(4);
                String hometown=rs.getString(5);
                String phone=rs.getString(6);
        %>
            <tr><th><%=id%></th> <th><%=name%></th> <th><%=dob%></th> <th><%=gender%></th> <th><%=hometown%></th> <th><%=phone%></th> <th><a href="EditStudent.jsp?id=<%=id%>">Edit</a> / <a href="deleteStudent.jsp?id=<%=id%>">Delete</a></th></tr>
        <%        
            }while(rs.next());
        %>
        </table>
        <%
            }else{
        %>
        <h2>No student found.</h2>
        <%
            }
            }
        %>
        </form>
    </body>
</html>
