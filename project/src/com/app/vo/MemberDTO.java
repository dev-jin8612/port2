package com.app.vo;

public class MemberDTO {
	private Long id;
//	팔로잉 팔로워랑 필드명이 겹침 join할 때 구분지으면 같아도 상관 없음
	private String memberid;
	private String memberpw;
	private String membername;
	private String membernick;
	private String memberimg;
	private String memberhp;
	
//	팔로잉
	private Long followerid;;
	
	public MemberDTO() {;}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getMemberid() {
		return memberid;
	}

	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}

	public String getMemberpw() {
		return memberpw;
	}

	public void setMemberpw(String memberpw) {
		this.memberpw = memberpw;
	}

	public String getMembername() {
		return membername;
	}

	public void setMembername(String membername) {
		this.membername = membername;
	}

	public String getMembernick() {
		return membernick;
	}

	public void setMembernick(String membernick) {
		this.membernick = membernick;
	}

	public String getMemberimg() {
		return memberimg;
	}

	public void setMemberimg(String memberimg) {
		this.memberimg = memberimg;
	}

	public String getMemberhp() {
		return memberhp;
	}

	public void setMemberhp(String memberhp) {
		this.memberhp = memberhp;
	}

	public Long getFollowerid() {
		return followerid;
	}

	public void setFollowerid(Long followerid) {
		this.followerid = followerid;
	}


	@Override
	public String toString() {
		return "MemberDTO [id=" + id + ", memberid=" + memberid + ", memberpw=" + memberpw + ", membername="
				+ membername + ", membernick=" + membernick + ", memberimg=" + memberimg + ", memberhp=" + memberhp
				+ ", followerid=" + followerid + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((memberhp == null) ? 0 : memberhp.hashCode());
		result = prime * result + ((memberid == null) ? 0 : memberid.hashCode());
		result = prime * result + ((memberimg == null) ? 0 : memberimg.hashCode());
		result = prime * result + ((membername == null) ? 0 : membername.hashCode());
		result = prime * result + ((membernick == null) ? 0 : membernick.hashCode());
		result = prime * result + ((memberpw == null) ? 0 : memberpw.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		MemberDTO other = (MemberDTO) obj;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (memberhp == null) {
			if (other.memberhp != null)
				return false;
		} else if (!memberhp.equals(other.memberhp))
			return false;
		if (memberid == null) {
			if (other.memberid != null)
				return false;
		} else if (!memberid.equals(other.memberid))
			return false;
		if (memberimg == null) {
			if (other.memberimg != null)
				return false;
		} else if (!memberimg.equals(other.memberimg))
			return false;
		if (membername == null) {
			if (other.membername != null)
				return false;
		} else if (!membername.equals(other.membername))
			return false;
		if (membernick == null) {
			if (other.membernick != null)
				return false;
		} else if (!membernick.equals(other.membernick))
			return false;
		if (memberpw == null) {
			if (other.memberpw != null)
				return false;
		} else if (!memberpw.equals(other.memberpw))
			return false;
		return true;
	}


	


}
