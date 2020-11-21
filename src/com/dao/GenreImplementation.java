package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.model.*;

public class GenreImplementation implements GenresDAO {
	public boolean addGenres(Genres g) {
		boolean b = false;
		Connection con = ConnectionFactory.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("insert into genres values(?,?)");
			ps.setInt(1, g.getGenre_id());
			ps.setString(2, g.getGenre_name());
			int a = ps.executeUpdate();
			if (a > 0) {
				b = true;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return b;
	}

	@Override
	public boolean deleteGenres(Genres d) {
		boolean b = false;
		Connection con = ConnectionFactory.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("delete from genres where genreid=?");
			ps.setInt(1, d.getGenre_id());
			int a = ps.executeUpdate();
			if (a > 0) {
				b = true;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return b;
	}

	@Override
	public ArrayList<Genres> listGneres() {
		return null;
}
}
