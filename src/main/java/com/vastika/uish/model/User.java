package com.vastika.uish.model;

import java.util.Date;

import javax.annotation.Generated;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Cascade;
import org.springframework.format.annotation.DateTimeFormat;

import lombok.Data;

@Entity // User name ko table banauxa
@Table(name = "tbl_user") // table ma given name use garxa
@Data // replacement for getter and setter
public class User {

	@Id // primary key generate garxa
	@GeneratedValue(strategy = GenerationType.AUTO) // auto generate ko lagi
	private int id;

	@Column(name = "user_name") // for snake case. If @Column not used would use "userName"
	private String userName;

	private String password;
	private String email;

	@Column(name = "mobile_no")
	private long mobileNo;

	private String gender;
	private String hobbies;
	private String nationality;

	@OneToOne(cascade = CascadeType.ALL)
	private Address address;
	private String comments;

	@DateTimeFormat(pattern = "yyyy-mm-dd")
	@Temporal(TemporalType.DATE)
	private Date dob;

}
