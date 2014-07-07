package com.csst.business.model;

import java.util.Date;

/**
 * TMessage entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TMessage implements java.io.Serializable {

	// Fields

	private String id;
	private TWuser TWuser;
	private String MContent;
	private Date MSendtime;
	private String MSendusername;
	private Integer MType;
	private String MRelatemid;
	private String MReceiveOpenId;
	private String MReceiveusername;

	// Constructors

	/** default constructor */
	public TMessage() {
	}

	/** minimal constructor */
	public TMessage(String id) {
		this.id = id;
	}

	/** full constructor */
	public TMessage(String id, TWuser TWuser, String MContent, Date MSendtime,
			String MSendusername, Integer MType, String MRelatemid,
			String MReceiveOpenId, String MReceiveusername) {
		this.id = id;
		this.TWuser = TWuser;
		this.MContent = MContent;
		this.MSendtime = MSendtime;
		this.MSendusername = MSendusername;
		this.MType = MType;
		this.MRelatemid = MRelatemid;
		this.MReceiveOpenId = MReceiveOpenId;
		this.MReceiveusername = MReceiveusername;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public TWuser getTWuser() {
		return this.TWuser;
	}

	public void setTWuser(TWuser TWuser) {
		this.TWuser = TWuser;
	}

	public String getMContent() {
		return this.MContent;
	}

	public void setMContent(String MContent) {
		this.MContent = MContent;
	}

	public Date getMSendtime() {
		return this.MSendtime;
	}

	public void setMSendtime(Date MSendtime) {
		this.MSendtime = MSendtime;
	}

	public String getMSendusername() {
		return this.MSendusername;
	}

	public void setMSendusername(String MSendusername) {
		this.MSendusername = MSendusername;
	}

	public Integer getMType() {
		return this.MType;
	}

	public void setMType(Integer MType) {
		this.MType = MType;
	}

	public String getMRelatemid() {
		return this.MRelatemid;
	}

	public void setMRelatemid(String MRelatemid) {
		this.MRelatemid = MRelatemid;
	}

	public String getMReceiveOpenId() {
		return this.MReceiveOpenId;
	}

	public void setMReceiveOpenId(String MReceiveOpenId) {
		this.MReceiveOpenId = MReceiveOpenId;
	}

	public String getMReceiveusername() {
		return this.MReceiveusername;
	}

	public void setMReceiveusername(String MReceiveusername) {
		this.MReceiveusername = MReceiveusername;
	}

}