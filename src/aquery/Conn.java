package aquery;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ArrayBlockingQueue;

import adpojo.Adata;

public class Conn {
	private static String jdbcurl="jdbc:mysql://localhost:3306/adminlg";
	private static String suname="root";
	private static String spass="abc123";
	
	
	public static Connection takeConnection(){
		 Connection con=null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("driver Registerd");
			try {
				con=DriverManager.getConnection(jdbcurl, suname, spass);
				System.out.println("connection Successffully");
			}
			catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return con;
		
	}
	
	public static int logincheck(Adata d){
		int status=0;
		Connection con=takeConnection();
		try {
			PreparedStatement ps=con.prepareStatement("select * from admin where username=? and apass=?");
			ps.setString(1, d.getAuser());
			ps.setString(2, d.getApass());
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				status=1;
				break;
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	public static int addflight(Adata d){
		int status=0;
		
		Connection con=takeConnection();
		try {
			PreparedStatement ps=con.prepareStatement("INSERT INTO bok_flight(id,flight_no,flight_name,flight_city,flight_to_city,flight_date,"
					+ "flight_time,flight_duration,flight_airport,flight_tk_price,des)"
					+ "VALUES (?,?,?,?,?,?,?,?,?,?,?)");
			
			ps.setInt(1, d.getFid());
			ps.setInt(2, d.getFlight_no());
			ps.setString(3, d.getFlight_name());
			ps.setString(4, d.getFlight_city());
			ps.setString(5, d.getFlight_to_city());
			ps.setString(6, d.getFlight_date());
			ps.setString(7, d.getFlight_time());
			ps.setString(8, d.getFlight_duration());
			ps.setString(9, d.getFlight_airport());
			ps.setInt(10, d.getFlight_tk_price());
			ps.setString(11, d.getDes());
			status=ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return status;
		
	}
	public static List<Adata> flight_details(){
		
		List<Adata> list=new ArrayList<Adata>();
		
		Connection con=takeConnection();
		try {
			PreparedStatement ps=con.prepareStatement("select * from bok_flight");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Adata d=new Adata();
				d.setFid(rs.getInt(1));
				d.setFlight_no(Integer.parseInt(rs.getString(2)));
				d.setFlight_name(rs.getString(3));
				d.setFlight_city(rs.getString(4));
				d.setFlight_to_city(rs.getString(5));
				d.setFlight_date(rs.getString(6));
				d.setFlight_time(rs.getString(7));
				d.setFlight_duration(rs.getString(8));
				d.setFlight_airport(rs.getString(9));
		
				d.setFlight_tk_price(Integer.parseInt(rs.getString(10)));
				d.setDes(rs.getString(11));
				
				list.add(d);
				
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
		
		
		
	}
	
	public static int Update(Adata d){
     int status=0;
		
		Connection con=takeConnection();
		try {
			PreparedStatement ps=con.prepareStatement("update bok_flight set flight_no=?,flight_name=?,flight_city=?,flight_to_city=?,flight_date=?,"
					+ "flight_time=?,flight_duration=?,flight_airport=?,flight_tk_price=?,des=? where id=?");
			
			ps.setInt(1, d.getFid());
			ps.setInt(2, d.getFlight_no());
			ps.setString(3, d.getFlight_name());
			ps.setString(4, d.getFlight_city());
			ps.setString(5, d.getFlight_to_city());
			ps.setString(6, d.getFlight_date());
			ps.setString(7, d.getFlight_time());
			ps.setString(8, d.getFlight_duration());
			ps.setString(9, d.getFlight_airport());
			ps.setInt(10, d.getFlight_tk_price());
			ps.setString(11, d.getDes());
			status=ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
		
	}
	public static  Adata Selectflight(int id){
		Adata d=new Adata();
		
		Connection con=takeConnection();
		try {
			PreparedStatement ps=con.prepareStatement("select * from bok_flight where id=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
			
				d.setFid(rs.getInt(1));
				d.setFlight_no(Integer.parseInt(rs.getString(2)));
				d.setFlight_name(rs.getString(3));
				d.setFlight_city(rs.getString(4));
				d.setFlight_to_city(rs.getString(5));
				d.setFlight_date(rs.getString(6));
				d.setFlight_time(rs.getString(7));
				d.setFlight_duration(rs.getString(8));
				d.setFlight_airport(rs.getString(9));
				d.setFlight_tk_price(Integer.parseInt(rs.getString(10)));
				d.setDes(rs.getString(11));	
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return d;
		
}

	public static int del(int id){
		int status=0;
		
		Connection con=takeConnection();
		try {
			PreparedStatement ps=con.prepareStatement("delete from bok_flight where id=?");
			ps.setInt(1, id);
			status=ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return status;
		
		

		
}
	/*	Show flight search*/
	public static  List<Adata> Searchflight(String flight_city,String flight_to_city){
		
		List<Adata> list=new ArrayList<Adata>();
		Connection con=takeConnection();
		try {
			PreparedStatement ps=con.prepareStatement("select * from bok_flight where flight_city=? or flight_to_city=?");
			ps.setString(1, flight_city);
			ps.setString(2, flight_to_city);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Adata d=new Adata();
				d.setFid(rs.getInt(1));
				d.setFlight_no(Integer.parseInt(rs.getString(2)));
				d.setFlight_name(rs.getString(3));
				d.setFlight_city(rs.getString(4));
				d.setFlight_to_city(rs.getString(5));
				d.setFlight_date(rs.getString(6));
				d.setFlight_time(rs.getString(7));
				d.setFlight_duration(rs.getString(8));
				d.setFlight_airport(rs.getString(9));
				d.setFlight_tk_price(Integer.parseInt(rs.getString(10)));
				list.add(d);
				
			}
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return list;
		
}
	////
	public static int User_reg(Adata d){
		int status=0;
		
		Connection con=takeConnection();
		try {
			PreparedStatement ps=con.prepareStatement("INSERT INTO user_register(id,username,pass,email)"
					+ "VALUES (?,?,?,?)");
			
			ps.setInt(1, d.getUid());
			ps.setString(2, d.getUser_name());
			ps.setString(3, d.getUser_pass());
			ps.setString(4, d.getUser_email());
			status=ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return status;
		
	}

	public static int user_login(Adata d){
		int status=0;
		Connection con=takeConnection();
		try {
			PreparedStatement ps=con.prepareStatement("select * from user_register where email=? and pass=?");
			ps.setString(1, d.getUser_email());
			ps.setString(2, d.getUser_pass());
			
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				status=1;
				break;
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return status;
	}
	public static int customer(Adata d){
		int status=0;
		
		Connection con=takeConnection();
		try {
			PreparedStatement ps=con.prepareStatement("INSERT INTO cus_quires(id,cname,cemail,csub,cmess) VALUES (?,?,?,?,?)");
			
			ps.setInt(1, d.getCid());
			ps.setString(2, d.getCname());
			ps.setString(3, d.getCemail());
			ps.setString(4, d.getCsub());
			ps.setString(5, d.getCmess());
		
		
			status=ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return status;
		
	}
	public static int flightdet(Adata d){
		int status=0;
		
		Connection con=takeConnection();
		try {
			PreparedStatement ps=con.prepareStatement("INSERT INTO u_travel_det(id,fname,fcity,ftocity,flightarip,fduration,"
					+ "fprice,pfname,paddres,pemail,pcontry,dob,pcity)"
					+ "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
			ps.setInt(1,d.getPid());
		
			ps.setString(2,d.getFname());
			ps.setString(3,d.getFcity());
			ps.setString(4,d.getFtocity());
			ps.setString(5,d.getFlightarip() );
			ps.setString(6,d.getFduration());
			ps.setInt(7,d.getFprice() );
			ps.setString(8,d.getPfname());
			ps.setString(9,d.getPaddres());
			ps.setString(10,d.getPemail());
			ps.setString(11,d.getPcontry());
			ps.setString(12,d.getDob());
			ps.setString(13,d.getPcity());
			
			status=ps.executeUpdate();
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return status;
		
	}
}
