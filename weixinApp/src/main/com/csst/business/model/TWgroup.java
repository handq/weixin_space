package com.csst.business.model;

import java.util.HashSet;
import java.util.Set;

/**
 * TWgroup entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class TWgroup implements java.io.Serializable {

	// Fields

	private String id;
	private String GName;
	private Integer GCount;
	private Set TWusers = new HashSet(0);

	// Constructors

	/** default constructor */
	public TWgroup() {
	}

	/** minimal constructor */
	public TWgroup(String id) {
		this.id = id;
	}

	/** full constructor */
	public TWgroup(String id, String GName, Integer GCount, Set TWusers) {
		this.id = id;
		this.GName = GName;
		this.GCount = GCount;
		this.TWusers = TWusers;
	}

	// Property accessors

	public String getId() {
		return this.id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getGName() {
		return this.GName;
	}

	public void setGName(String GName) {
		this.GName = GName;
	}

	public Integer getGCount() {
		return this.GCount;
	}

	public void setGCount(Integer GCount) {
		this.GCount = GCount;
	}

	public Set getTWusers() {
		return this.TWusers;
	}

	public void setTWusers(Set TWusers) {
		this.TWusers = TWusers;
	}

}