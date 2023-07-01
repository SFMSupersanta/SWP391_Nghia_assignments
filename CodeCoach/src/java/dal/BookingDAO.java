/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.Booking;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author giang
 */
public class BookingDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    private final String GET_BOOKING_BY_MENTOR_ID = "SELECT * FROM [dbo].[Booking] WHERE mentorId = ?";
    private final String ADD_BOOKING = "INSERT INTO [dbo].[Booking] (mentorId, menteeId, skillId, status) VALUES (?,?,?,?)";

    private final String GET_BOOKINGID_BY_BOOKING = "SELECT * FROM [dbo].[Booking] WHERE mentorId = ? AND menteeId = ? AND skillId = ? AND status = ?";

    public static void main(String[] args) {
        Booking b = new Booking(1, 3, 13, "Pending");
        System.out.println(new BookingDAO().addBooking(b));
        System.out.println("The id is: " + new BookingDAO().getBookingIdByBooking(b));

    }

    public int getBookingIdByBooking(Booking booking) {
        try (Connection conn = new DBContext().getConnection();
             PreparedStatement ps = conn.prepareStatement(GET_BOOKINGID_BY_BOOKING)) {
            ps.setInt(1, booking.getMentorId());
            ps.setInt(2, booking.getMenteeId());
            ps.setInt(3, booking.getSkillId());
            ps.setString(4, booking.getStatus());
            rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt("bookingId");
            }
        }catch (Exception e) {
            e.printStackTrace();
        }

        return 0;
    }



    public int addBooking(Booking booking) {
        try (Connection conn = new DBContext().getConnection();
             PreparedStatement ps = conn.prepareStatement(ADD_BOOKING)) {
            ps.setInt(1, booking.getMentorId());
            ps.setInt(2, booking.getMenteeId());
            ps.setInt(3, booking.getSkillId());
            ps.setString(4, booking.getStatus());
            return ps.executeUpdate();
        }catch (Exception e) {
            e.printStackTrace();
        }

        return 0;
    }

        public ArrayList<Booking> getBookingMentorId(int mentorId) {
        ArrayList<Booking> list = new ArrayList<>();
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(GET_BOOKING_BY_MENTOR_ID);
            ps.setInt(1, mentorId);
            rs = ps.executeQuery();
            while (rs.next()) {
                //Booking(int bookingId, int mentorId, int menteeId, int skillId, String status, boolean getAllInfo)
                list.add(new Booking(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5), true));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Booking getBookingLatestbyMenteeId(String menteeId) {
        Booking b = new Booking();
        String querry = "SELECT * FROM [dbo].[Booking] WHERE menteeId = " + menteeId + " AND bookingId = (SELECT MAX(bookingId) FROM [dbo].[Booking] WHERE menteeId = " + menteeId + ");";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(querry);
            rs = ps.executeQuery();
            while (rs.next()) {
                b = new Booking(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5));
            }
        } catch (Exception e) {
        }
        return b;
    }

    public void updateBookingStatus(int bookingId, String status) {
        String querry = "UPDATE [dbo].[Booking] SET status = ? WHERE bookingId = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(querry);
            ps.setString(1, status);
            ps.setInt(2, bookingId);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public List<Booking> getBookingsByMentorId(int mentorId) {
        List<Booking> list = new ArrayList<>();
        String querry = "SELECT * FROM [dbo].[Booking] WHERE mentorId = " + mentorId + ";";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(querry);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Booking(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getString(5)));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
