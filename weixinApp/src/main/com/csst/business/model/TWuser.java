package com.csst.business.model;

import java.util.HashSet;
import java.util.Set;

/**
 * TWuser entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TWuser implements java.io.Serializable {

	// Fields

	private String id;
	private TWgroup TWgroup;
	private Integer WSubscribe;
	private String WOpenid;
	private String WNickname;
	private Integer WSex;
	private String WLanguage;
	private String WCity;
	private String WProvince;
	private String WCountry;
	private String WHeadimgurl;
	private Double WSubscribeTime;
	private String WUnionid;
	private Set TMessages = new HashSet(0);

	// Constructors

	/** default constructor */
	public TWuser() {
	}

	/** minimal constructor */
	public TWuser(String id) {
		this.id = id;
	}

	/** full constructor */
	public TWuser(String id, TWgroup TWgroup, Integer WSubscribe,
			String WOpenid, String WNickname, Integer WSex, String WLanguage,
			String WCity, String WProvince, String WCountry,
			String WHeadimgurl, Double WSubscribeTime, String WUnionid,
			Set TMessages) {
		this.id = id;
		this.TWgroup = TWgroup;
		this.WSubscribe = WSubscribe;
		this.WOpenid = WOpenid;
		this.WNickname = WNickname;
		this.WSex = WSex;
		this.WLanguage = WLanguage;
		this.WCity = WCity;
		this.WProvince = WProvince;
		this.WCountry = WCountry;
		this.WHeadimgurl = WHeadimgurl;
		this.WSubscribeTime = WSubscribeTime;
		this.WUnionid = WUnionid;
		this.TMessages = TMessages;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public TWgroup getTWgroup() {
		return this.TWgroup;
	}

	public void setTWgroup(TWgroup TWgroup) {
		this.TWgroup = TWgroup;
	}

	public Integer getWSubscribe() {
		return this.WSubscribe;
	}

	public void setWSubscribe(Integer WSubscribe) {
		this.WSubscribe = WSubscribe;
	}

	public String getWOpenid() {
		return this.WOpenid;
	}

	public void setWOpenid(String WOpenid) {
		this.WOpenid = WOpenid;
	}

	public String getWNickname() {
		return this.WNickname;
	}

	public void setWNickname(String WNickname) {
		this.WNickname = WNickname;
	}

	public Integer getWSex() {
		return this.WSex;
	}

	public void setWSex(Integer WSex) {
		this.WSex = WSex;
	}

	public String getWLanguage() {
		return this.WLanguage;
	}

	public void setWLanguage(String WLanguage) {
		this.WLanguage = WLanguage;
	}

	public String getWCity() {
		return this.WCity;
	}

	public void setWCity(String WCity) {
		this.WCity = WCity;
	}

	public String getWProvince() {
		return this.WProvince;
	}

	public void setWProvince(String WProvince) {
		this.WProvince = WProvince;
	}

	public String getWCountry() {
		return this.WCountry;
	}

	public void setWCountry(String WCountry) {
		this.WCountry = WCountry;
	}

	public String getWHeadimgurl() {
		return this.WHeadimgurl;
	}

	public void setWHeadimgurl(String WHeadimgurl) {
		this.WHeadimgurl = WHeadimgurl;
	}

	public Double getWSubscribeTime() {
		return this.WSubscribeTime;
	}

	public void setWSubscribeTime(Double WSubscribeTime) {
		this.WSubscribeTime = WSubscribeTime;
	}

	public String getWUnionid() {
		return this.WUnionid;
	}

	public void setWUnionid(String WUnionid) {
		this.WUnionid = WUnionid;
	}

	public Set getTMessages() {
		return this.TMessages;
	}

	public void setTMessages(Set TMessages) {
		this.TMessages = TMessages;
	}

}