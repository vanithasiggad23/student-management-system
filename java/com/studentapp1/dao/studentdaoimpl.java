package com.studentapp1.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.studentapp1.conn.connect;
import com.studentapp1.dto.student;

public class studentdaoimpl implements StudentDao{
	
	Connection con= null;
	public studentdaoimpl(){
		con=connect.getConn();
	}

	@Override
	public boolean insertStudent(student s) {
		// TODO Auto-generated method stub
		String query="insert into student values(0,?,?,?,?,?,?,sysdate())";
		int res=0;
		try {
			PreparedStatement ps= con.prepareStatement(query);
			ps.setString(1, s.getSname());
			ps.setLong(2, s.getPhone());
			ps.setString(3, s.getEmail());
			ps.setString(4, s.getBranch());
			ps.setString(5,s.getLocation());
			ps.setString(6, s.getPassword());
			
			res= ps.executeUpdate();
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(res>0)
			return true;
		else
			return false;
					
	
	}

	@Override
	public boolean updateStudent(student s) {
			
			String query="update student set sname=?,email=?,phone=?,branch=?,location=? where sid=?";
			int res=0;
			try {
				PreparedStatement ps = con.prepareStatement(query);
				ps.setString(1, s.getSname());
				ps.setString(2, s.getEmail());
				ps.setLong(3,s.getPhone());
				ps.setString(4, s.getBranch());
				ps.setString(5, s.getLocation());
				ps.setInt(6, s.getSid());
				
			 res= ps.executeUpdate();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return res>0;
	}

	@Override
	public boolean deleteStudent(student s) {
		// TODO Auto-generated method stub
		String query="delete from student where sid=? and sid!=1";
		PreparedStatement ps=null;
		int res=0;
		try {
			ps=con.prepareStatement(query);
			ps.setInt(1,s.getSid());
			res=ps.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(res>0) {
			return true;
		}
		return false;
	}

	@Override
	public student getStudent(String email, String password) {
		// TODO Auto-generated method stub
		String query="select * from student where email=? and password=?";
		student s=null;
		try {
			PreparedStatement ps= con.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				s= new student();
				s.setEmail(email);
				s.setPassword(password);
				s.setSid(rs.getInt("sid"));
                s.setSname(rs.getString("sname"));
                s.setPhone(rs.getLong("phone"));
                s.setBranch(rs.getString("branch"));
                s.setLocation(rs.getString("location"));
                s.setDate(rs.getString("date"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}

	@Override
	public student getStudent(String email, long phone) {
		// TODO Auto-generated method stub
		student s=null;
		String query="select * from student where email=? and phone=?";
		PreparedStatement ps=null;
		try {
			ps=con.prepareStatement(query);
			ps.setString(1, email);
			ps.setLong(2, phone);
			ResultSet rs=ps.executeQuery();
			if(rs.next()) {
				s=new student();
				s.setEmail(email);
				s.setPhone(phone);
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s;
	}

	@Override
	public ArrayList<student> getstudent() {
		// TODO Auto-generated method stub
		ArrayList<student>list=new ArrayList<>();
		String query="select * from student where sid!=6";
		PreparedStatement ps =null;
		student s= null;
		try {
			ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				s= new student();
				s.setSid(rs.getInt("sid"));
                s.setSname(rs.getString("sname"));
                s.setPhone(rs.getLong("phone"));
                s.setEmail(rs.getString("email"));
                s.setBranch(rs.getString("branch"));
                s.setLocation(rs.getString("location"));
                s.setPassword(rs.getString("password"));
                s.setDate(rs.getString("date"));
                list.add(s);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public boolean updatePassword(String email, String phone, String newPassword) {
		// TODO Auto-generated method stub
		return false;
	}

	
}
