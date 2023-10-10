package com.app.vo;

public class FeedDTO {
	
	private Long id;
	private String boardtitle;
	private String boardcontents;
	private String boarddate;
	private Long memberid;
//	following feed에서는 내가 팔로우 한 사람의 게시글만 나와야 함
	private Long followingid;
//	좋아요, 댓글
	private Long feedid;
	private int goodCnt;
//	img
	private String filesystemname;
	private String fileoriginalname;
	private Long filesize;
	private Long feedimg;
//	reply
	private int renum;
	private String contents;
	private String replyid;
	private String rereply;
	private String feedredate;
	
	public FeedDTO() {;}


	public Long getId() {
		return id;
	}



	public void setId(Long id) {
		this.id = id;
	}



	public String getBoardtitle() {
		return boardtitle;
	}



	public void setBoardtitle(String boardtitle) {
		this.boardtitle = boardtitle;
	}



	public String getBoardcontents() {
		return boardcontents;
	}



	public void setBoardcontents(String boardcontents) {
		this.boardcontents = boardcontents;
	}



	public String getBoarddate() {
		return boarddate;
	}



	public void setBoarddate(String boarddate) {
		this.boarddate = boarddate;
	}



	public Long getMemberid() {
		return memberid;
	}



	public void setMemberid(Long memberid) {
		this.memberid = memberid;
	}



	public Long getFollowingid() {
		return followingid;
	}



	public void setFollowingid(Long followingid) {
		this.followingid = followingid;
	}



	public Long getFeedid() {
		return feedid;
	}



	public void setFeedid(Long feedid) {
		this.feedid = feedid;
	}



	public int getGoodCnt() {
		return goodCnt;
	}



	public void setGoodCnt(int goodCnt) {
		this.goodCnt = goodCnt;
	}



	public String getFilesystemname() {
		return filesystemname;
	}



	public void setFilesystemname(String filesystemname) {
		this.filesystemname = filesystemname;
	}



	public String getFileoriginalname() {
		return fileoriginalname;
	}



	public void setFileoriginalname(String fileoriginalname) {
		this.fileoriginalname = fileoriginalname;
	}



	public Long getFilesize() {
		return filesize;
	}



	public void setFilesize(Long filesize) {
		this.filesize = filesize;
	}



	public Long getFeedimg() {
		return feedimg;
	}



	public void setFeedimg(Long feedimg) {
		this.feedimg = feedimg;
	}



	public int getRenum() {
		return renum;
	}



	public void setRenum(int renum) {
		this.renum = renum;
	}



	public String getContents() {
		return contents;
	}



	public void setContents(String contents) {
		this.contents = contents;
	}



	public String getReplyid() {
		return replyid;
	}



	public void setReplyid(String replyid) {
		this.replyid = replyid;
	}



	public String getRereply() {
		return rereply;
	}



	public void setRereply(String rereply) {
		this.rereply = rereply;
	}



	public String getFeedredate() {
		return feedredate;
	}



	public void setFeedredate(String feedredate) {
		this.feedredate = feedredate;
	}

	@Override
	public String toString() {
		return "FeedDTO [id=" + id + ", boardtitle=" + boardtitle + ", boardcontents=" + boardcontents + ", boarddate="
				+ boarddate + ", memberid=" + memberid + ", followingid=" + followingid + ", feedid=" + feedid
				+ ", goodCnt=" + goodCnt + ", filesystemname=" + filesystemname + ", fileoriginalname="
				+ fileoriginalname + ", filesize=" + filesize + ", feedimg=" + feedimg + ", renum=" + renum
				+ ", contents=" + contents + ", replyid=" + replyid + ", rereply=" + rereply + ", feedredate="
				+ feedredate + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((feedid == null) ? 0 : feedid.hashCode());
		result = prime * result + ((feedimg == null) ? 0 : feedimg.hashCode());
		result = prime * result + ((filesize == null) ? 0 : filesize.hashCode());
		result = prime * result + ((followingid == null) ? 0 : followingid.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((memberid == null) ? 0 : memberid.hashCode());
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
		FeedDTO other = (FeedDTO) obj;
		if (feedid == null) {
			if (other.feedid != null)
				return false;
		} else if (!feedid.equals(other.feedid))
			return false;
		if (feedimg == null) {
			if (other.feedimg != null)
				return false;
		} else if (!feedimg.equals(other.feedimg))
			return false;
		if (filesize == null) {
			if (other.filesize != null)
				return false;
		} else if (!filesize.equals(other.filesize))
			return false;
		if (followingid == null) {
			if (other.followingid != null)
				return false;
		} else if (!followingid.equals(other.followingid))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (memberid == null) {
			if (other.memberid != null)
				return false;
		} else if (!memberid.equals(other.memberid))
			return false;
		return true;
	}
	
}
