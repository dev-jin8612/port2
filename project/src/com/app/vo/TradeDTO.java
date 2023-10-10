package com.app.vo;

public class TradeDTO {
   
   private Long id;
   private String boardtitle;
   private String boardcontents;
   private String boarddate;
   private String boardstatus;
   private Long memberid;
//   함께해요
   private String togetherappcontent;
//   좋아요, 댓글
   private Long togetherid;
//   교환 신청
   private Long tradeappcontent;
   private Long tradeid;
   private String appimg;
//   img
   private int imgnum;
   private String filesystemname;
   private String fileoriginalname;
   private Long filesize;
   private Long tradeimg;
//   reply
   private int renum;
   private String contents;
   private String replyid;
   private String rereply;
   private String date;
   
   public TradeDTO() {;}

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



   public String getBoardstatus() {
      return boardstatus;
   }



   public void setBoardstatus(String boardstatus) {
      this.boardstatus = boardstatus;
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



   public Long getTradeappcontent() {
      return tradeappcontent;
   }



   public void setTradeappcontent(Long tradeappcontent) {
      this.tradeappcontent = tradeappcontent;
   }



   public Long getTradeid() {
      return tradeid;
   }



   public void setTradeid(Long tradeid) {
      this.tradeid = tradeid;
   }



   public String getAppimg() {
      return appimg;
   }



   public void setAppimg(String appimg) {
      this.appimg = appimg;
   }



   public int getImgnum() {
      return imgnum;
   }



   public void setImgnum(int imgnum) {
      this.imgnum = imgnum;
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



   public Long getTradeimg() {
      return tradeimg;
   }



   public void setTradeimg(Long tradeimg) {
      this.tradeimg = tradeimg;
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
      return "TradeDTO [id=" + id + ", boardtitle=" + boardtitle + ", boardcontents=" + boardcontents + ", boarddate="
            + boarddate + ", boardstatus=" + boardstatus + ", memberid=" + memberid + ", togetherappcontent="
            + togetherappcontent + ", togetherid=" + togetherid + ", tradeappcontent=" + tradeappcontent
            + ", tradeid=" + tradeid + ", appimg=" + appimg + ", imgnum=" + imgnum + ", filesystemname="
            + filesystemname + ", fileoriginalname=" + fileoriginalname + ", filesize=" + filesize + ", tradeimg="
            + tradeimg + ", renum=" + renum + ", contents=" + contents + ", replyid=" + replyid + ", rereply="
            + rereply + ", date=" + date + "]";
   }

   @Override
   public int hashCode() {
      final int prime = 31;
      int result = 1;
      result = prime * result + ((filesize == null) ? 0 : filesize.hashCode());
      result = prime * result + ((id == null) ? 0 : id.hashCode());
      result = prime * result + ((memberid == null) ? 0 : memberid.hashCode());
      result = prime * result + ((togetherid == null) ? 0 : togetherid.hashCode());
      result = prime * result + ((tradeid == null) ? 0 : tradeid.hashCode());
      result = prime * result + ((tradeimg == null) ? 0 : tradeimg.hashCode());
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
      TradeDTO other = (TradeDTO) obj;
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
      if (tradeid == null) {
         if (other.tradeid != null)
            return false;
      } else if (!tradeid.equals(other.tradeid))
         return false;
      if (tradeimg == null) {
         if (other.tradeimg != null)
            return false;
      } else if (!tradeimg.equals(other.tradeimg))
         return false;
      return true;
   }

   
}