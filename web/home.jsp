<%-- 
    Document   : home
    Created on : May 8, 2015, 11:30:51 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home page</title>
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
                width:800px;
                height: 800px;                
                padding:55px;
                background-size:700px;
                background-image:url("anh/ngu.jpg");
                text-align: center;


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
        <div id="header2">  
            <left><a href="Home.jsp"><img width="414" height="143" src="anh/logo.jpg"></a></left>                             
        </div>

        <div id="header3">                
            <table  id="01" style="width: 100%"">
                <tr>
                    <td style="text-align:left" ><p style="color: #8B4726"><a href='Home.jsp'><b>Home</b></a></td> 
                    <td style="text-align:left" ><a href='AddStudent.jsp'><b>Add New Student</a></td>
                    <td style="text-align:left" ><a href='search.jsp'><b>Search Student</b></a></td>
                    <td style="text-align:left" ><a href='Update.jsp'><b>Update Student</a></td>
                    <td style="text-align:left" ><a href='Delete.jsp'><b>Delete Student</a></td>
                    <td style="text-align:left" ><a href='Logout.jsp'><b>Logout</a></td>

                </tr>       

            </table>           
        </div>
        
        <div id="nav2">
            <p><img src="anh/d.jpg" width="270px" height="800px">
        </div>
        <div id="nav">
            <p><img src="anh/1-2.jpg" width="270px" height="800px">
        </div>
        <div id ="section">
            <table border="0">                
                <tbody>
                    <tr>
                        <td><a href="EditStudent.jsp"><img width="250" height="150" src="anh/logo.jpg"></a>
                            <p>VŨ HOÀNG HIẾU_SE03</p>
                        </td>
                        <td> </td>
                        <td><a href="EditStudent.jsp"><img width="250" height="150" src="anh/logo.jpg"></a>
                            <p>VŨ QUANG QUYỀN_SE03237</p>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><a href="EditStudent.jsp"><img width="250" height="150" src="anh/logo.jpg"></a>
                            <p>lƯU NGOC VIET SƠN_SE03</p>
                        </td>          
                        <td></td>
                    </tr>
                    <tr>
                        <td><a href="EditStudent.jsp"><img width="250" height="150" src="anh/logo.jpg"></a>
                            <p>NGUYỄN THỊ HẢI YẾN_SE03171</p>
                        </td>
                        <td></td>
                        <td><a href="EditStudent.jsp"><img width="250" height="150" src="anh/logo.jpg"></a>
                            <p>NGUYỄN THU HÀ_SE03246</p>
                        </td>
                    </tr>
                </tbody>
            </table>

        </div>
    </body>
</html>
