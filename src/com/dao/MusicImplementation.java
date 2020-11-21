package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import com.model.Music;

public class MusicImplementation implements MusicDAO {
	public boolean addMusic(Music m) {
		boolean b = false;
		Connection con = ConnectionFactory.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("insert into Music values(?,?,?,?,?,?)");
			ps.setInt(1, m.getMusic_id());
			ps.setInt(2, m.getAlbum_id());
			ps.setInt(3, m.getTitle_id());
			ps.setInt(4, m.getArtist_id());
			ps.setInt(5, m.getGenre_id());
			ps.setInt(6, m.getSong_id());
			int a1 = ps.executeUpdate();
			if (a1 > 0) {
				b = true;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return b;
	}

	@Override
	public boolean deleteMusic(Music k) {
		boolean b = false;
		Connection con = ConnectionFactory.getConnection();
		try {
			PreparedStatement ps = con.prepareStatement("delete from Music where Music_id=?");
			ps.setInt(1, k.getMusic_id());
			int a = ps.executeUpdate();
			if (a > 0) {
				b = true;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return b;
	}

}
