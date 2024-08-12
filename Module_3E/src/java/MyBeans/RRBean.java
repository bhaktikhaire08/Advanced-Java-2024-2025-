/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MyBeans;

import static java.lang.System.out;
import javax.ejb.Stateful;
import java.sql.*;

/**
 *
 * @author Admin
 */
@Stateful
public class RRBean {

   // default constructor
    String msg="";
    public String roombooking(String s1,String s2,String s3)
    {
     //database connectivity code
        try
        {
         Class.forName("com.mysql.jdbc.Driver");
         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","root");
         String query = "select * from roombook_89 where roomtype=? and statusroom='Not Booked'";
         PreparedStatement pst = conn.prepareStatement(query);
         pst.setString(1, s3);
         ResultSet rs = pst.executeQuery();
         if (rs.next())
         {
             String Rnumber = rs.getString(1);
             PreparedStatement pst1 = conn.prepareStatement("Update roombook_89 set cust=?, mob=?,statusroom='Booked' where roomid=?");
             pst1.setString(1,s1);
             pst1.setString(2,s2);
             pst1.setString(3,Rnumber);
             pst1.executeUpdate();
                                        
             
           msg = "Room" + s3 + "Booked and Charges = "+rs.getString(3);
         }
         else
         {
         msg = "Room" + s3 + "Not Available";
         }
         return msg;
        }
        catch(Exception e)
        {
         out.print("Exception = "+e);
        }
        return msg;
    }
}
