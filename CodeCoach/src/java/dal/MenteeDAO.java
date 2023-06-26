/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Mentees;

/**
 *
 * @author giang
 */
public class MenteeDAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    
    public String getMenteeIdbyUserId(String userId) {
        String menteeId ="";
        String query = "Select menteeId from Mentees where userId="+userId+"";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                menteeId = rs.getString(1);
            }
        } catch (Exception e) {
        }
        return menteeId;
    }
     
    public List<Mentees> getAllMentee() {
        List<Mentees> listMentees = new ArrayList<>();
        String querry = "select * from Mentees";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(querry);
            rs = ps.executeQuery();
            while (rs.next()) {
                listMentees.add(new Mentees(rs.getInt(1), rs.getInt(2)));
            }
        } catch (Exception e) {
        }

        return listMentees;
    }
}
