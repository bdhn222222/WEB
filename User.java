package com.java.be;

import java.util.Arrays;

public class User {
	 	@Override
	public String toString() {
		return "User [firstName=" + firstName + ", lastName=" + lastName + ", dob=" + dob + ", pob=" + pob + ", Sex="
				+ sex + ", freeDay=" + Arrays.toString(freeDay) + "]";
	}
		public String firstName;
	 	public String lastName;
	 	public String dob;
	 	public String pob;
	 	public String sex;
	 	public String[] freeDay;
	 	
	 	public User() {
	 		
	 	}
	    public User(String firstName, String lastName, String dob, String pob, String sex, String[] freeDay) {
	        this.firstName = firstName;
	        this.lastName = lastName;
	        this.dob = dob;
	        this.pob = pob;
	        this.sex = sex;
	        this.freeDay=freeDay;
	    }

		public String[] getFreeDay() {
			return freeDay;
		}

		public void setFreeDay(String[] freeDay) {
			this.freeDay = freeDay;
		}

		public String getFirstName() {
			return firstName;
		}

		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}

		public String getLastName() {
			return lastName;
		}

		public void setLastName(String lastName) {
			this.lastName = lastName;
		}

		public String getDob() {
			return dob;
		}

		public void setDob(String dob) {
			this.dob = dob;
		}

		public String getPob() {
			return pob;
		}

		public void setPob(String pob) {
			this.pob = pob;
		}

		public String getSex() {
			return sex;
		}

		public void setSex(String sex) {
			this.sex = sex;
		}
}
