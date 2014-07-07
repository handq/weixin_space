package com.csst.popular.bean;

/**
 * 关注者列表
 * 
 * @author LiYi
 * 
 */
public class FollowResult extends BaseResult {
	//关注该公众账号的总用户数
	private Integer total;
	//拉取的OPENID个数，最大值为10000
	private Integer count;
	//拉取列表的后一个用户的OPENID
	private String next_openid;
	//列表数据，OPENID的列表
	private Data data;

	public Integer getTotal() {
		return total;
	}

	public void setTotal(Integer total) {
		this.total = total;
	}

	public Integer getCount() {
		return count;
	}

	public void setCount(Integer count) {
		this.count = count;
	}

	public String getNext_openid() {
		return next_openid;
	}

	public void setNext_openid(String nextOpenid) {
		next_openid = nextOpenid;
	}

	public Data getData() {
		return data;
	}

	public void setData(Data data) {
		this.data = data;
	}

	public static class Data {
		
		private String[] openid;

		public String[] getOpenid() {
			return openid;
		}

		public void setOpenid(String[] openid) {
			this.openid = openid;
		}

	}
}
