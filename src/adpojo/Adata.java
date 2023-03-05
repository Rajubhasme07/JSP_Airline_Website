package adpojo;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Adata implements Serializable {
	
	
	public Adata() {
		super();
	}
	int flight_no,fid;
	String auser,apass,aname;
	int id;
	String flight_name;
	String flight_city;
	String flight_to_city;
	String flight_date;
	String flight_time;
	String flight_duration;
	String flight_airport;
	int flight_tk_price;
	String des;
	String swhefrm;
	String swhereto;
	String sdeapdate;
	String user_name,user_email,user_pass;
	String cname,cemail,csub,cmess;
	String fname,fcity,ftocity,flightarip,fduration;
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFcity() {
		return fcity;
	}
	public void setFcity(String fcity) {
		this.fcity = fcity;
	}
	public String getFtocity() {
		return ftocity;
	}
	public void setFtocity(String ftocity) {
		this.ftocity = ftocity;
	}
	public String getFlightarip() {
		return flightarip;
	}
	public void setFlightarip(String flightarip) {
		this.flightarip = flightarip;
	}
	public String getFduration() {
		return fduration;
	}
	public void setFduration(String fduration) {
		this.fduration = fduration;
	}
	public String getPfname() {
		return pfname;
	}
	public void setPfname(String pfname) {
		this.pfname = pfname;
	}
	public String getPaddres() {
		return paddres;
	}
	public void setPaddres(String paddres) {
		this.paddres = paddres;
	}
	public String getPemail() {
		return pemail;
	}
	public void setPemail(String pemail) {
		this.pemail = pemail;
	}
	public String getPcontry() {
		return pcontry;
	}
	public void setPcontry(String pcontry) {
		this.pcontry = pcontry;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public String getPcity() {
		return pcity;
	}
	public void setPcity(String pcity) {
		this.pcity = pcity;
	}
	public int getFprice() {
		return fprice;
	}
	public void setFprice(int fprice) {
		this.fprice = fprice;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	String pfname,paddres,pemail,pcontry,dob,pcity;
	int fprice,pid;
	int uid,cid;
	
	
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getCemail() {
		return cemail;
	}
	public void setCemail(String cemail) {
		this.cemail = cemail;
	}
	public String getCsub() {
		return csub;
	}
	public void setCsub(String csub) {
		this.csub = csub;
	}
	public String getCmess() {
		return cmess;
	}
	public void setCmess(String cmess) {
		this.cmess = cmess;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_email() {
		return user_email;
	}
	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}
	public String getUser_pass() {
		return user_pass;
	}
	public void setUser_pass(String user_pass) {
		this.user_pass = user_pass;
	}
	public String getSwhefrm() {
		return swhefrm;
	}
	public void setSwhefrm(String swhefrm) {
		this.swhefrm = swhefrm;
	}
	public String getSwhereto() {
		return swhereto;
	}
	public void setSwhereto(String swhereto) {
		this.swhereto = swhereto;
	}
	public String getSdeapdate() {
		return sdeapdate;
	}
	public void setSdeapdate(String sdeapdate) {
		this.sdeapdate = sdeapdate;
	}
	
	
	
	public int getFlight_no() {
		return flight_no;
	}

	public void setFlight_no(int flight_no) {
		this.flight_no = flight_no;
	}

		public int getFid() {
			return fid;
		}
		
			public void setFid(int fid) {
				this.fid = fid;
		}
	public String getFlight_name() {
		return flight_name;
	}

	public void setFlight_name(String flight_name) {
		this.flight_name = flight_name;
	}

	public String getFlight_city() {
		return flight_city;
	}

	public void setFlight_city(String flight_city) {
		this.flight_city = flight_city;
	}

	public String getFlight_to_city() {
		return flight_to_city;
	}

	public void setFlight_to_city(String flight_to_city) {
		this.flight_to_city = flight_to_city;
	}

	public String getFlight_date() {
		return flight_date;
	}

	public void setFlight_date(String flight_date) {
		this.flight_date = flight_date;
	}

	public String getFlight_time() {
		return flight_time;
	}

	public void setFlight_time(String flight_time) {
		this.flight_time = flight_time;
	}

	public String getFlight_duration() {
		return flight_duration;
	}

	public void setFlight_duration(String flight_duration) {
		this.flight_duration = flight_duration;
	}

	public String getFlight_airport() {
		return flight_airport;
	}

	public void setFlight_airport(String flight_airport) {
		this.flight_airport = flight_airport;
	}

	public int getFlight_tk_price() {
		return flight_tk_price;
	}

	public void setFlight_tk_price(int flight_tk_price) {
		this.flight_tk_price = flight_tk_price;
	}

	public String getDes() {
		return des;
	}

	public void setDes(String des) {
		this.des = des;
	}

	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAuser() {
		return auser;
	}

	public void setAuser(String auser) {
		this.auser = auser;
	}

	public String getApass() {
		return apass;
	}

	public void setApass(String apass) {
		this.apass = apass;
	}

	public String getAname() {
		return aname;
	}

	public void setAname(String aname) {
		this.aname = aname;
	}


	
	

}
