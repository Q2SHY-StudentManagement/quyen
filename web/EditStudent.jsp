<%-- 
    Document   : EditStudent
    Created on : May 7, 2015, 2:58:39 PM
    Author     : Administrator
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Student</title>
        <link rel="stylesheet" href="styles.css">
        <style>
            #header {
                background-color: background;
                float: top;
                text-align:center;
                padding:5px;
                width: auto;
            }
            #nav {
                line-height:30px;
                background-color: #c43735;
                height:1000px;
                width:auto;
                float:right;
                padding:5px;	      
            }
            #nav2 {
                line-height:30px;
                background-color: #c43735;
                height:1000px;
                width:auto;
                float:left;
                padding:5px;	      
            }
            #section {
                margin:auto; 
                width:400px;
                height: 800px;                
                padding:55px;
                background-size:700px;
                background-image:url("anh/ngu.jpg");
            


            }
            #footer {
                background-color: #EED8AE;
                color:#555555;
                clear:both;
                text-align:center;
                padding:5px;	
                float: bottom;                
            }
            #benphai {
                float: right;
            }           

            #header2 {
                background-image:url("anh/3.jpg");
                color:black;
                text-align:left;
                padding:55px;
            }
            #header3 {
                background-color:#C6E2FF;
                color:white;
                text-align:left;
                padding:1px;
            }
        </style>
    </head>
    <body>
        <script type="text/javascript" src="http://webquangnam.com/jsShare/tuyetroi.js"></script>
        <div id="header2">  
            <a href="Home.jsp"><img width="414" height="143" src="anh/logo.jpg"></a>                             
        </div>

        <div id="header3">                
            <table border="1" id="01" style="width: 100%"">
                <tr>
                    <td style="text-align:left" ><p style="color: #8B4726"><a href='Home.jsp'><b>Home</b></a></td> 
                    <td style="text-align:left" ><a href='AddStudent.jsp'><b>Add New Student</a></td>
                    <td style="text-align:left" ><a href='showData.jsp'><b>Search Student</b></a></td>
                    <td style="text-align:left" ><a href='About.jsp'><b>About</a></td>
                    <td style="text-align:left" ><a href='Logout.jsp'><b>Logout</a></td>

                </tr>       

            </table>           
        </div>
        <jsp:useBean class="com.sample.StudentBean" id="da" scope="session"/>

        <form name="mform" action="EditStudent.jsp"> 
            <div id="nav2">

                <!--chen anh-->
                <p><img src="anh/2.jpg" width="270px" height="300px">
                <p><a href=""> <img src="anh/5.jpg" width="270px" height="300px"></a></p>
                <p><object width="180px" height="50px"> <param name="movie" value="http://www.nhaccuatui.com/m/Eo3gdV5RT3GQ" />
                                                        <param name="quality" value="high" />
                                                        <param name="wmode" value="transparent" />
                                                        <param name="allowscriptaccess" value="always" />
                                                        <param name="allowfullscreen" value="true"/>
                                                        <param name="flashvars" value="autostart=true" /> 
                                                        <embed src="http://www.nhaccuatui.com/m/Eo3gdV5RT3GQ" flashvars="target=blank&autostart=true" allowscriptaccess="always" allowfullscreen="true" quality="high" wmode="transparent" type="application/x-shockwave-flash" width="180px" height="100px"></embed>
                    </object></p>
            </div>
            <div id="nav">            
                <!--chenanh-->
                <!--chen video-->
                <p><iframe width="330px" height="700px" src="anh/4.jpg" frameborder="0" allowfullscreen></iframe></p>
                

            </div>
            <div id="section">                
                <font size="5">

                <%
                    String id = request.getParameter("id");
                    if (id == null) {                       
                        
                        id = session.getAttribute("StID").toString();
                    }
                    if (id != null) {
                        session.setAttribute("StID", id);
                        int id1 = Integer.parseInt(id);
                        da.setStuID(id1);
                        ResultSet rs = da.getSelect();
                        while (rs.next()) {
                            int StudentID = rs.getInt(1);
                            String Name = rs.getString(2);
                            String DoB = rs.getString(3);
                            String Gender = rs.getString(4);
                            String HomeTown = rs.getString(5);
                            String Phone = rs.getString(6);



                %>     
                <table border="0"  >                  
                    <tbody >
                        <tr>
                            <td>Student ID:</td>
                            <td><input type="text" name="txtId" value="<%=StudentID%>" style="height: 30px" readonly="readonly" /></td>
                        </tr>
                        <tr></tr>
                        <tr>
                            <td><p>Name:</td>
                            <td><input type="text" name="txtName" value="<%=Name%>" style="height: 30px"/> </td>
                        </tr>
                        <tr></tr>
                        <tr>
                            <td><p>Date of birth:</td>
                            <td><input type="date" name="txtDob" value="<%=DoB%>" style="height: 30px"/></td>
                        </tr>
                        <tr></tr>
                        <tr>
                            <td><p>Gender:</td>
                            <td><input type="radio" name="1" value="female" checked="checked"/>Female
                                <input type="radio" name="1" value="male" />Male</td>
                        </tr>
                        <tr></tr>
                        <tr>
                            <td><p>Home town:</td>
                            <td><input type="text" name="txtHomeTown" value="<%=HomeTown%>" style="height: 30px"/></td>
                        </tr>
                        <tr></tr>
                        <tr>
                            <td><p>Phone:</td>
                            <td><input type="text" name="txtPhone" value="<%=Phone%>" style="height: 30px"/></td>
                        </tr>
                    </tbody>
                    <tr>
                        
                        <td style="text-align: center"><input onclick="return confirm('Edit this student ????')" type="submit" value="Save"  style="height: 35px" name="btnSave" /></td>
                        <td style="text-align: center"><input type="button" value="Back" name="btnBack" style="height: 35px" onclick="window.location = 'showData.jsp'" /></td>
                    </tr>
                </table>

                <%}
                    }
                    String NameError = "";
                    String DoBError = "";
                    String GenderError = "";
                    String PhoneError = "";
                    String HomeTownError = "";


                    String Name = "";
                    String Dob = "";
                    String Gender = "";
                    String HomeTown = "";
                    String Phone = "";

                    String btnSave = request.getParameter("btnSave");
                    if (btnSave != null && btnSave.length() > 0) {
                        int test = 1;

                        Name = request.getParameter("txtName");
                        if (Name == null || Name.length() == 0) {
                            NameError = "Name can not be null or blank";
                            test = 0;
                        }
                        //check Date of birth
                        Dob = request.getParameter("txtDob");

                        //check gender
                        Gender = request.getParameter("1");
                        
                        //check hone town
                        HomeTown = request.getParameter("txtHomeTown");
                        if (HomeTown == null || HomeTown.length() == 0) {
                            HomeTownError = "Home Town can not be null or blank.";
                            test = 0;
                        }
                        //check Phone
                        Phone = request.getParameter("txtPhone");
                        if (Phone == null || Phone.length() == 0) {
                            PhoneError = "Phone can not be null or blank.";
                            test = 0;
                        }
                        try {
                            int phone = Integer.parseInt(Phone);
                        } catch (Exception ex) {
                            PhoneError = "Phone need is number";
                            test = 0;
                        }



                        //if btnYes id clicked
                        if (test == 1) {
                            
                            da.setName(Name);
                            da.setDoB(Dob);
                            da.setGender(Gender);
                            da.setHomeTown(HomeTown);
                            da.setPhone(Phone);
                            da.EditStudent();
                            response.sendRedirect("./showData.jsp");
                        }
                    }


                %>
                
                <h2><p style="color: red"><%=NameError%></p></h2>
                <h2><p style="color: red"><%=DoBError%></h2>
                <h2><p style="color: red"><%=GenderError%></h2>
                <h2><p style="color: red"><%=PhoneError%></h2>
                <h2><p style="color: red"><%=HomeTownError%></h2>
                
            </div>





        </form>

    </body>
</html>
