package com.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.model.Albums;

public class AlbumImplementation implements AlbumsDAO{
	 public boolean addAlbums(Albums a) {
	        boolean b=false;
	        Connection con=ConnectionFactory.getConnection();
	        try {
	            PreparedStatement ps=con.prepareStatement("insert into albums values(?,?,?,?)");
	            ps.setInt(1,a.getAlbum_id());
	            ps.setString(2, a.getAlbum_name());
	            ps.setInt(3,a.getYear());
	            ps.setString(4, a.getLanguage());
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
	 
	 public boolean deleteAlbums(Albums k) {
			boolean b = false;
			Connection con = ConnectionFactory.getConnection();
			try {
				PreparedStatement ps = con.prepareStatement("delete from albums where Album_id=?");
				ps.setInt(1, k.getAlbum_id());
				int a = ps.executeUpdate();
				if (a > 0) {
					b = true;
				}
			} catch (Exception e) {
				System.out.println(e);
			}
			return b;
		}
	 public ArrayList<Albums> listAlbums(){
		 return null; 
	 }
}
