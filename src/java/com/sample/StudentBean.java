

package com.sample;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;


public class StudentBean {
    Connection conn = null;
    private int StuID;

    private String Name;

    private String DoB;

    private String Gender;
    
    private String HomeTown;
    
    private String Phone;
    

    public String getPhone() {
        return Phone;
    }

    public void setPhone(String Phone) {
        this.Phone = Phone;
    }


    public String getHomeTown() {
        return HomeTown;
    }

    public void setHomeTown(String HomeTown) {
        this.HomeTown = HomeTown;
    }


    public String getGender() {
        return Gender;
    }

    public void setGender(String Gender) {
        this.Gender = Gender;
    }

    public String getDoB() {
        return DoB;
    }

    public void setDoB(String DoB) {
        this.DoB = DoB;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public int getStuID() {
        return StuID;
    }

    public void setStuID(int StuID) {
        this.StuID = StuID;
    }
    
    
    public void EditStudent() throws Exception {
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            conn = DriverManager.getConnection("jdbc:odbc:StudentManagement");
            String sql = "UPDATE Student SET Name='" + Name + "',DoB = '"+ DoB +"',Gender ='" + Gender + "',HomeTown = '"+ HomeTown + "',Phone = '"+ Phone+"'WHERE Student_ID=" + StuID;
            
            conn.createStatement().executeUpdate(sql);
            conn.close();
        } catch (Exception ex) {
            Logger.getLogger(StudentBean.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public ResultSet getSelect(){
        ResultSet rs = null;
        try{
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            conn = DriverManager.getConnection("jdbc:odbc:StudentManagement");
            String sqlSelect ="select * from Student where Student_ID =" + StuID;
            Statement st =  conn.createStatement();
            rs = st.executeQuery(sqlSelect);
            
        }catch(Exception ex){
            System.out.println(""+ex);
        }
        return rs;
    }    
    
    

}
