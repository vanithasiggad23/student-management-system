package com.studentapp1.dto;

public class student {
	
		private int sid;
		private String sname;
		private Long phone;
		private String email;
		private String branch;
		private String location;
		private String password;
		private String date;
		public int getSid() {
			return sid;
		}
		public void setSid(int sid) {
			this.sid = sid;
		}
		public String getSname() {
			return sname;
		}
		public void setSname(String sname) {
			this.sname = sname;
		}
		public Long getPhone() {
			return phone;
		}
		public void setPhone(Long phone) {
			this.phone = phone;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getBranch() {
			return branch;
		}
		public void setBranch(String branch) {
			this.branch = branch;
		}
		public String getLocation() {
			return location;
		}
		public void setLocation(String location) {
			this.location = location;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getDate() {
			return date;
		}
		public void setDate(String date) {
			this.date = date;
		}
		@Override
		public String toString() {
			return "student [sid=" + sid + ", sname=" + sname + ", phone=" + phone + ", email=" + email + ", branch="
					+ branch + ", location=" + location + ", password=" + password + ", date=" + date + "]";
		}
		
		


}
