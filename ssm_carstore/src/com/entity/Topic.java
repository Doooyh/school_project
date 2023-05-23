package com.entity;

import com.util.VeDate;

public class Topic {
	private String topicid = "T" + VeDate.getStringId();
	private String usersid;
	private String ordersid;
	private String goodsid;
	private String num;
	private String contents;
	private String addtime;
	private String username;
	private String ordercode;
	private String goodsname;

	public String getTopicid() {
		return topicid;
	}

	public void setTopicid(String topicid) {
		this.topicid = topicid;
	}

	public String getUsersid() {
		return this.usersid;
	}

	public void setUsersid(String usersid) {
		this.usersid = usersid;
	}

	public String getOrdersid() {
		return this.ordersid;
	}

	public void setOrdersid(String ordersid) {
		this.ordersid = ordersid;
	}

	public String getGoodsid() {
		return this.goodsid;
	}

	public void setGoodsid(String goodsid) {
		this.goodsid = goodsid;
	}

	public String getNum() {
		return this.num;
	}

	public void setNum(String num) {
		this.num = num;
	}

	public String getContents() {
		return this.contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getAddtime() {
		return this.addtime;
	}

	public void setAddtime(String addtime) {
		this.addtime = addtime;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getOrdercode() {
		return this.ordercode;
	}

	public void setOrdercode(String ordercode) {
		this.ordercode = ordercode;
	}

	public String getGoodsname() {
		return goodsname;
	}

	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	@Override
	public String toString() {
		return "Topic [topicid=" + this.topicid + ", usersid=" + this.usersid + ", ordersid=" + this.ordersid + ", goodsid=" + this.goodsid + ", num="
				+ this.num + ", contents=" + this.contents + ", addtime=" + this.addtime + ", username=" + this.username + ", ordercode="
				+ this.ordercode + ", goodsname=" + this.goodsname + "]";
	}

}

/**
 * 
 */
