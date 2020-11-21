package com.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.model.Titles;

public class TitleImplementation implements TitlesDAO {
	 public boolean addTitles(Titles t) {
	        boolean b=false;
	        Connection con=ConnectionFactory.getConnection();
	        try {
	            PreparedStatement ps=con.prepareStatement("insert into titles values(?,?)");
	            ps.setInt(1, t.getTitle_id());
	            ps.setString(2, t.getTitle_name());
	            int a=ps.executeUpdate();
	            if(a>0) {
	                b=true;
	            }
	        }
	        catch(Exception e) {
	            System.out.println(e);
	        }
	        return b;
	    }
	 
	 public boolean deleteTitles(Titles t) {
			boolean b = false;
			Connection con = ConnectionFactory.getConnection();
			try {
				PreparedStatement ps = con.prepareStatement("delete from Titles where Title_id=?");
				ps.setInt(1, t.getTitle_id());
				int a = ps.executeUpdate();
				if (a > 0) {
					b = true;
				}
			} catch (Exception e) {
				System.out.println(e);
			}
			return b;
		}
	 public ArrayList<Titles> listTitles(){
		 return null; 
	 }
}
