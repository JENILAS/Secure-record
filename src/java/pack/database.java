/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author ADMIN
 */
public class database {
    public Connection fun()
            {
                Connection con = null;
		try
		{ 
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/enabling","root","root");
			System.out.println("---Connection created!----");
                }
                catch (Exception e) 
                {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
                return con;
	    }
}
