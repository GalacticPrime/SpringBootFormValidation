package net.codejava;

import java.util.Date;

import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

public class User {

	@Size(min = 3, max=50)
	private String name;
	
	@NotBlank
	@Email(message = "please enter a valid e-mail address ")
	private String email;
	
	@NotBlank
	@Size(min=8,max=15)
	private String password;
	
	@NotBlank
	private String profession;
	
	@Size(max=100)
	private String note;
	
	@NotBlank
	private String gender;

	@DateTimeFormat(pattern = "yyyy-mm-dd")
	private Date birthday;
	
	@AssertTrue
	private boolean married;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public boolean isMarried() {
		return married;
	}

	public void setMarried(boolean married) {
		this.married = married;
	}

	@Override
	public String toString() {
		return "User [name=" + name + ", email=" + email + ", password=" + password + ", profession=" + profession
				+ ", note=" + note + ", gender=" + gender + ", birthday=" + birthday + ", married=" + married
				+ ", getName()=" + getName() + ", getEmail()=" + getEmail() + ", getPassword()=" + getPassword()
				+ ", getProfession()=" + getProfession() + ", getNote()=" + getNote() + ", getGender()=" + getGender()
				+ ", getBirthday()=" + getBirthday() + ", isMarried()=" + isMarried() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}

	
}
