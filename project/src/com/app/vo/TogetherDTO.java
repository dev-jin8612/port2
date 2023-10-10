package com.app.vo;

public class TogetherDTO {
	
	private Long id;
	private String boardtitle;
	private String boardcontents;
	private String boarddate;
	private Long memberid;
//	함께해요
	private String togetherappcontent;
//	좋아요, 댓글
	private Long togetherid;
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
	private String date;
	
	public TogetherDTO() {;}
	
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



	public String getTogetherappcontent() {
		return togetherappcontent;
	}



	public void setTogetherappcontent(String togetherappcontent) {
		this.togetherappcontent = togetherappcontent;
	}



	public Long getTogetherid() {
		return togetherid;
	}



	public void setTogetherid(Long togetherid) {
		this.togetherid = togetherid;
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



	public String getDate() {
		return date;
	}



	public void setDate(String date) {
		this.date = date;
	}



	@Override
	public String toString() {
		return "TogetherDTO [id=" + id + ", boardtitle=" + boardtitle + ", boardcontents=" + boardcontents
				+ ", boarddate=" + boarddate + ", memberid=" + memberid + ", togetherappcontent=" + togetherappcontent
				+ ", togetherid=" + togetherid + ", filesystemname=" + filesystemname + ", fileoriginalname="
				+ fileoriginalname + ", filesize=" + filesize + ", feedimg=" + feedimg + ", renum=" + renum
				+ ", contents=" + contents + ", replyid=" + replyid + ", rereply=" + rereply + ", date=" + date + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((feedimg == null) ? 0 : feedimg.hashCode());
		result = prime * result + ((filesize == null) ? 0 : filesize.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((memberid == null) ? 0 : memberid.hashCode());
		result = prime * result + ((togetherid == null) ? 0 : togetherid.hashCode());
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
		TogetherDTO other = (TogetherDTO) obj;
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
		if (togetherid == null) {
			if (other.togetherid != null)
				return false;
		} else if (!togetherid.equals(other.togetherid))
			return false;
		return true;
	}
}
