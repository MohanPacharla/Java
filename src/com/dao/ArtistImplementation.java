package com.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.model.Artists;

public class ArtistImplementation implements ArtistsDAO{
	 public boolean addArtists(Artists a) {
	        boolean b=false;
	        Connection con=ConnectionFactory.getConnection();
	        try {
	            PreparedStatement ps=con.prepareStatement("insert into artists values(?,?,?)");
	            ps.setInt(1, a.getArtist_id());
	            ps.setString(2, a.getArtist_name());
	            ps.setString(3,a.getProfession());
	            int a1=ps.executeUpdate();
	            if(a1>0) {
	                b=true;
	            }
	        }
	        catch(Exception e) {
	            System.out.println(e);
	        }
	        return b;
	    }
	 
	 public boolean deleteArtists(Artists n) {
			boolean b = false;
			Connection con = ConnectionFactory.getConnection();
			try {
				PreparedStatement ps = con.prepareStatement("delete from Artists where Artistid=?");
				ps.setInt(1, n.getArtist_id());
				int a = ps.executeUpdate();
				if (a > 0) {
					b = true;
				}
			} catch (Exception e) {
				System.out.println(e);
			}
			return b;
		}
		
	 public ArrayList<Artists> listArtists(){
		 return null; 
	 }
}
