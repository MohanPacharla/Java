package com.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.util.ArrayList;

import com.model.Songs;


public class SongImplementation implements SongDAO{
	 public boolean addSongs(Songs s) {
	        boolean b=false;
	        Connection con=ConnectionFactory.getConnection();
	        try {
	            PreparedStatement ps=con.prepareStatement("insert into songs values(?,?,?)");
	            ps.setInt(1,s.getSongid());
	            ps.setString(2, s.getSong_name());
	            ps.setString(3,s.getSonglyrics());
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
	 
	 public boolean deleteSongs(Songs f) {
			boolean b = false;
			Connection con = ConnectionFactory.getConnection();
			try {
				PreparedStatement ps = con.prepareStatement("delete from Songs where Songid=?");
				ps.setInt(1, f.getSongid());
				int a = ps.executeUpdate();
				if (a > 0) {
					b = true;
				}
			} catch (Exception e) {
				System.out.println(e);
			}
			return b;
		}
	 public ArrayList<Songs> listSongs(){
		 return null; 
	 }
	
}
