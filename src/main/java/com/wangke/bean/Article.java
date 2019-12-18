package com.wangke.bean;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.data.annotation.Id;
import org.springframework.data.elasticsearch.annotations.Document;
import org.springframework.data.elasticsearch.annotations.Field;
import org.springframework.data.elasticsearch.annotations.FieldType;

import com.fasterxml.jackson.annotation.JsonIgnore;


/**
 * 
 * @author wk
 *
 */
@Document(indexName="cms_article",type="article")
public class Article implements Serializable {
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 6320126833474686896L;
	@Id
	private Integer id               ;
	// 文章标题
	@Field(index=true,store=true,analyzer="ik_smart",searchAnalyzer="ik_smart",type=FieldType.text)
	private String title            ;
	// 文章内容
	@Field(index=true,store=true,analyzer="ik_smart",searchAnalyzer="ik_smart",type=FieldType.text)
	private String content          ;
	//标题图片的url 地址
	private String picture          ;
	// 频道
	private Integer channelId       ;
	@JsonIgnore
	private Channel channel       ;
	
	private String categoryId      ;
	// 文章的分类
	@JsonIgnore
	private Category category;
	
	@JsonIgnore
	private Integer userId          ;
	@JsonIgnore
	private User user          ;
	
	private int cid;
	private Date created2;
	
	
	public Date getCreated2() {
		return created2;
	}
	public void setCreated2(Date created2) {
		this.created2 = created2;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	// 点击数量
	private int  hits             ;
	// 是否为热门文章 1 是  0 否
	private int hot              ;
	// 0 待审核  1 审核通过  2 审核未通过
	private int status           ;
	//是否被删除
	private int deleted          ;
	
	//发表时间
	private Date created          ;
	
	//最后修改时间
	private Date updated          ;
	
	// 评论的数量
	private int commentCnt       ;
	//文章类型
	@JsonIgnore
	private ArticleType articleType =ArticleType.HTML     ;
	// 该文章的所有的图片
	@JsonIgnore
	private List<Image> imgList;
	
	private String cname1;
	private String cname2;
	private String username;
	private Integer channel_id       ;
	private String category_id      ;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public Integer getChannelId() {
		return channelId;
	}
	public void setChannelId(Integer channelId) {
		this.channelId = channelId;
	}
	public Channel getChannel() {
		return channel;
	}
	public void setChannel(Channel channel) {
		this.channel = channel;
	}
	public String getCategoryId() {
		return categoryId;
	}
	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public int getHot() {
		return hot;
	}
	public void setHot(int hot) {
		this.hot = hot;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public int getDeleted() {
		return deleted;
	}
	public void setDeleted(int deleted) {
		this.deleted = deleted;
	}
	public Date getCreated() {
		return created;
	}
	public void setCreated(Date created) {
		this.created = created;
	}
	public Date getUpdated() {
		return updated;
	}
	public void setUpdated(Date updated) {
		this.updated = updated;
	}
	public int getCommentCnt() {
		return commentCnt;
	}
	public void setCommentCnt(int commentCnt) {
		this.commentCnt = commentCnt;
	}
	public ArticleType getArticleType() {
		return articleType;
	}
	public void setArticleType(ArticleType articleType) {
		this.articleType = articleType;
	}
	public List<Image> getImgList() {
		return imgList;
	}
	public void setImgList(List<Image> imgList) {
		this.imgList = imgList;
	}
	public String getCname1() {
		return cname1;
	}
	public void setCname1(String cname1) {
		this.cname1 = cname1;
	}
	public String getCname2() {
		return cname2;
	}
	public void setCname2(String cname2) {
		this.cname2 = cname2;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public Integer getChannel_id() {
		return channel_id;
	}
	public void setChannel_id(Integer channel_id) {
		this.channel_id = channel_id;
	}
	public String getCategory_id() {
		return category_id;
	}
	public void setCategory_id(String category_id) {
		this.category_id = category_id;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	public Article() {
		super();
	}
	
	@Override
	public String toString() {
		return "Article [id=" + id + ", title=" + title + ", content="
				+ content + ", picture=" + picture + ", channelId=" + channelId
				+ ", channel=" + channel + ", categoryId=" + categoryId
				+ ", category=" + category + ", userId=" + userId + ", user="
				+ user + ", cid=" + cid + ", created2=" + created2 + ", hits="
				+ hits + ", hot=" + hot + ", status=" + status + ", deleted="
				+ deleted + ", created=" + created + ", updated=" + updated
				+ ", commentCnt=" + commentCnt + ", articleType=" + articleType
				+ ", imgList=" + imgList + ", cname1=" + cname1 + ", cname2="
				+ cname2 + ", username=" + username + ", channel_id="
				+ channel_id + ", category_id=" + category_id + "]";
	}
	public Article(Integer id, String title, String content, String picture,
			Integer channelId, Channel channel, String categoryId,
			Category category, Integer userId, User user, int cid,
			Date created2, int hits, int hot, int status, int deleted,
			Date created, Date updated, int commentCnt,
			ArticleType articleType, List<Image> imgList, String cname1,
			String cname2, String username, Integer channel_id,
			String category_id) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.picture = picture;
		this.channelId = channelId;
		this.channel = channel;
		this.categoryId = categoryId;
		this.category = category;
		this.userId = userId;
		this.user = user;
		this.cid = cid;
		this.created2 = created2;
		this.hits = hits;
		this.hot = hot;
		this.status = status;
		this.deleted = deleted;
		this.created = created;
		this.updated = updated;
		this.commentCnt = commentCnt;
		this.articleType = articleType;
		this.imgList = imgList;
		this.cname1 = cname1;
		this.cname2 = cname2;
		this.username = username;
		this.channel_id = channel_id;
		this.category_id = category_id;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((articleType == null) ? 0 : articleType.hashCode());
		result = prime * result
				+ ((category == null) ? 0 : category.hashCode());
		result = prime * result
				+ ((categoryId == null) ? 0 : categoryId.hashCode());
		result = prime * result
				+ ((category_id == null) ? 0 : category_id.hashCode());
		result = prime * result + ((channel == null) ? 0 : channel.hashCode());
		result = prime * result
				+ ((channelId == null) ? 0 : channelId.hashCode());
		result = prime * result
				+ ((channel_id == null) ? 0 : channel_id.hashCode());
		result = prime * result + ((cname1 == null) ? 0 : cname1.hashCode());
		result = prime * result + ((cname2 == null) ? 0 : cname2.hashCode());
		result = prime * result + commentCnt;
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + ((created == null) ? 0 : created.hashCode());
		result = prime * result + deleted;
		result = prime * result + hits;
		result = prime * result + hot;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((imgList == null) ? 0 : imgList.hashCode());
		result = prime * result + ((picture == null) ? 0 : picture.hashCode());
		result = prime * result + status;
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		result = prime * result + ((updated == null) ? 0 : updated.hashCode());
		result = prime * result + ((user == null) ? 0 : user.hashCode());
		result = prime * result + ((userId == null) ? 0 : userId.hashCode());
		result = prime * result
				+ ((username == null) ? 0 : username.hashCode());
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
		Article other = (Article) obj;
		if (articleType != other.articleType)
			return false;
		if (category == null) {
			if (other.category != null)
				return false;
		} else if (!category.equals(other.category))
			return false;
		if (categoryId == null) {
			if (other.categoryId != null)
				return false;
		} else if (!categoryId.equals(other.categoryId))
			return false;
		if (category_id == null) {
			if (other.category_id != null)
				return false;
		} else if (!category_id.equals(other.category_id))
			return false;
		if (channel == null) {
			if (other.channel != null)
				return false;
		} else if (!channel.equals(other.channel))
			return false;
		if (channelId == null) {
			if (other.channelId != null)
				return false;
		} else if (!channelId.equals(other.channelId))
			return false;
		if (channel_id == null) {
			if (other.channel_id != null)
				return false;
		} else if (!channel_id.equals(other.channel_id))
			return false;
		if (cname1 == null) {
			if (other.cname1 != null)
				return false;
		} else if (!cname1.equals(other.cname1))
			return false;
		if (cname2 == null) {
			if (other.cname2 != null)
				return false;
		} else if (!cname2.equals(other.cname2))
			return false;
		if (commentCnt != other.commentCnt)
			return false;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (created == null) {
			if (other.created != null)
				return false;
		} else if (!created.equals(other.created))
			return false;
		if (deleted != other.deleted)
			return false;
		if (hits != other.hits)
			return false;
		if (hot != other.hot)
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (imgList == null) {
			if (other.imgList != null)
				return false;
		} else if (!imgList.equals(other.imgList))
			return false;
		if (picture == null) {
			if (other.picture != null)
				return false;
		} else if (!picture.equals(other.picture))
			return false;
		if (status != other.status)
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		if (updated == null) {
			if (other.updated != null)
				return false;
		} else if (!updated.equals(other.updated))
			return false;
		if (user == null) {
			if (other.user != null)
				return false;
		} else if (!user.equals(other.user))
			return false;
		if (userId == null) {
			if (other.userId != null)
				return false;
		} else if (!userId.equals(other.userId))
			return false;
		if (username == null) {
			if (other.username != null)
				return false;
		} else if (!username.equals(other.username))
			return false;
		return true;
	}
	
	
	
	
	
	                                

	

}
