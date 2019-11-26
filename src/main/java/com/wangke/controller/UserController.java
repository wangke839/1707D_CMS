package com.wangke.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageInfo;
import com.google.gson.Gson;
import com.wangke.bean.Article;
import com.wangke.bean.ArticleType;
import com.wangke.bean.Image;
import com.wangke.bean.User;
import com.wangke.comm.CONTAINT;
import com.wangke.comm.CmcException;
import com.wangke.comm.CmsAssert;
import com.wangke.comm.ResultInformation;
import com.wangke.service.ArticleService;
import com.wangke.service.CategoryService;
import com.wangke.service.ChannelService;
import com.wangke.service.FavariteService;
import com.wangke.service.IndexService;
import com.wangke.service.UserServicde;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private IndexService is;
	@Autowired
	private FavariteService favariteService;
	@Autowired
	private UserServicde us;
	@Autowired
	private ChannelService channelService;
	@Autowired
	private ArticleService articleService;
	@Autowired
	private CategoryService categoryService;
	
	/**
	 * 
	    * @Title: list
	    * @Description: 显示普通用户界面
	    * @param @param m
	    * @param @return    参数
	    * @return String    返回类型
	    * @throws
	 */
	@RequestMapping("list.do")
	public String list (Model m,@RequestParam(defaultValue="1")Integer pageNum){
		//获取所有的频道
		List list = is.showChannel();
//		获得热点文章
		PageInfo info = is.getHotArticle(pageNum);
//		获得最新文章
		List newArticles = is.getNewArticle(5);
		m.addAttribute("list", list);
		m.addAttribute("info", info);
		m.addAttribute("newArticles", newArticles);
		return "user/index";
	}
	
	/**
	 * 
	    * @Title: channel
	    * @Description: 频道跳转
	    * @param @param request
	    * @param @param chnId
	    * @param @param categoryId
	    * @param @param page
	    * @param @return    参数
	    * @return String    返回类型
	    * @throws
	 */
	@RequestMapping("channel")
	public String channel(Model m, 
			@RequestParam(defaultValue = "1") int chnId,
			@RequestParam(defaultValue = "0") int categoryId,
			@RequestParam(defaultValue = "1") int pageNum) {
		
		
		// 回传参数数值
		m.addAttribute("chnId", chnId);
		m.addAttribute("categoryId", categoryId);
		
		//获取所有的频道
		List list = is.showChannel();
		m.addAttribute("list", list);
		
//		获得热点文章
		PageInfo info = is.getHotArticle(pageNum);
//		获得最新文章
		List newArticles = is.getNewArticle(5);
		m.addAttribute("list", list);
		m.addAttribute("info", info);
		m.addAttribute("newArticles", newArticles);
		
		// 获取这个频道下的所有的分类
		List categories =  categoryService.listByChannelId(chnId);
		m.addAttribute("categories", categories);
		
		PageInfo articles=  articleService.listByCat(chnId,categoryId,pageNum);
		m.addAttribute("articles", articles);
		
		
		
		return "user/channelindex";
	
	}
	
	
	@RequestMapping("tologin")
	public String tologin (User user,HttpServletRequest request) throws CmcException{
		/*User logUser = us.login(user);
		if(logUser != null){
			request.getSession().setAttribute(CONTAINT.USER_KEY, logUser);
			return "user/index";
		}*/
		return "user/login";
		
	}
@RequestMapping("login.do")
public String login (User user,HttpServletRequest request) throws CmcException{
	User logUser = us.login(user);
		if(logUser != null){
			request.getSession().setAttribute(CONTAINT.USER_KEY, logUser);
			return logUser.getRole()==CONTAINT.USER_ROLE_ADMIN
					?"redirect:/admin/list.do":"redirect:/user/home";
		}else {
			request.setAttribute("errorMsg", "用户名或密码错误！！");
			request.setAttribute("user", user);
			return "user/login";
		}
	
	
}
	/**
	 * 处理用户提交的注册的数据
	 * @param request
	 * @param user
	 * @return
	 * @throws CmcException 
	 */
	@RequestMapping("register")
	public String register(HttpServletRequest request,User user) throws CmcException {
		
		
		int result = us.register(user);
		CmsAssert.AssertTrue(result>0,"用户注册失败，请稍后再试");
		return "user/login";
	}
	/**
	 * 
	    * @Title: loginOut
	    * @Description: 登出
	    * @param @param request
	    * @param @param user
	    * @param @return
	    * @param @throws CmcException    参数
	    * @return String    返回类型
	    * @throws
	 */
	@RequestMapping("loginOut")
	public String loginOut(HttpServletRequest request)  {
		request.getSession().removeAttribute(CONTAINT.USER_KEY);
		return "user/login";
	}
	/**
	 * 
	    * @Title: delArticle
	    * @Description: 管理员删除文章
	    * @param @param id
	    * @param @param status
	    * @param @return
	    * @param @throws CmcException    参数
	    * @return ResultInformation    返回类型
	    * @throws
	 */
	@RequestMapping("delArticle")
	@ResponseBody
	public ResultInformation delArticle(int id) throws CmcException {
		//判断文章是否存在
		Article article = articleService.checkExist(id);
		CmsAssert.AssertTrue(article!=null, "该文章已经不存在");
		//审核文章
		int result = articleService.delArticle(id);
		if(result>0) {
			return new ResultInformation(1,"处理成功",null);
		}else {
			return new ResultInformation(2,"处理失败",null);
		}
	}
	/**
	 * 
	    * @Title: home
	    * @Description: 进入普通用户界面
	    * @param @return    参数
	    * @return String    返回类型
	    * @throws
	 */
	@RequestMapping("home")
	public String home(){
		return "user/home";
	}
	@RequestMapping("myarticles")
	public String myarticles(HttpServletRequest request,
			@RequestParam(defaultValue="1") int page) {
		
		User loginUser = (User)request.getSession().getAttribute(CONTAINT.USER_KEY);
		
		PageInfo<Article> pageInfo=  articleService.listByUser(page,loginUser.getId());
		request.setAttribute("pageInfo", pageInfo);
		return "user/myarticles";
	}
	@GetMapping("postArticle")
	public String postArticle(Model m){
		List channel = channelService.showChannel();
		m.addAttribute("channel",channel);
		return "user/post";
	}
	@PostMapping("postArticle")
	@ResponseBody
	public ResultInformation postArticle(HttpServletRequest request, MultipartFile file,Article article) throws IllegalStateException, IOException{
		System.out.println("=========================="+uploadPath);
		if(!file.isEmpty()) {
			String fileUrl = processFile(file);
			article.setPicture(fileUrl);
		}
		User loginUser  = (User)request.getSession().getAttribute(CONTAINT.USER_KEY);
		article.setUserId(loginUser.getId());
		
		int result = articleService.addArticle(article);
		if(result>0) {
			return new ResultInformation(1, "处理成功",null);
		}else {
			return new ResultInformation(2, "添加失败，请稍后再试试！",null);
		}
	}
	
	//全局变量   下载地址
	@Value("${upload.path}")
	public  String uploadPath;
	/**
	 * 
	 * @param file
	 * @return  保存文件的相对路径
	 * @throws IllegalStateException
	 * @throws IOException
	 */
    private String processFile(MultipartFile file) throws IllegalStateException, IOException {
    	
    	//1 求扩展名  "xxx.jpg"
    	String suffixName =  file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf('.'));
    	String fileNamePre = UUID.randomUUID().toString();
    	// 计算出新的文件名称
    	String fileName = fileNamePre + suffixName;
    	
    	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
    	String path = dateFormat.format(new Date());
    	File pathFile  = new File("d:/pic/" + path);
    	if(!pathFile.exists()) {
    		pathFile.mkdirs();
    	}
    	
    	// 最终的新的文件名称
    	String newFileName = uploadPath + path + "/" + fileName;
    	file.transferTo(new File(newFileName));
    	
    	return path + "/" + fileName ;
    }
	/**
	 * 
	    * @Title: updateArticle
	    * @Description: 跳入修改文章界面
	    * @param @return    参数
	    * @return String    返回类型
	    * @throws
	 */
	@GetMapping("updateArticle")
	public String updateArticle(int id,Model m){
		Article article = articleService.getById2(id);
		List channel = channelService.showChannel();
		m.addAttribute("channel",channel);
		m.addAttribute("article", article);
		m.addAttribute("content1", htmlspecialchars(article.getContent()));
		System.out.println(" article " + article);
		return "article/updateArticle";
	}
	
	@PostMapping("updateArticle")
	@ResponseBody
	public ResultInformation updateArticle(HttpServletRequest request, MultipartFile file,Article article) throws IllegalStateException, IOException{
		if(!file.isEmpty()) {
			String fileUrl = processFile(file);
			article.setPicture(fileUrl);
		}
		
		int result = articleService.updateArticle(article);
		if(result>0) {
			return new ResultInformation(1, "处理成功",null);
		}else {
			return new ResultInformation(2, "添加失败，请稍后再试试！",null);
		}
	}
	
	private String htmlspecialchars(String str) {
		str = str.replaceAll("&", "&amp;");
		str = str.replaceAll("<", "&lt;");
		str = str.replaceAll(">", "&gt;");
		str = str.replaceAll("\"", "&quot;");
		return str;
	}
	@GetMapping("postImg")
	public String postImg(Model m){
		List channel = channelService.showChannel();
		m.addAttribute("channel",channel);
		return "article/img";
		
	}
	@PostMapping("postImg")
	@ResponseBody
	public ResultInformation postImg(HttpServletRequest request,MultipartFile file[],Article article,String desc[]) throws IllegalStateException, IOException{
		
		List<Image> list = new ArrayList<Image>();
		User loginUser = (User) request.getSession().getAttribute(CONTAINT.USER_KEY);
		for (int i = 0; i < file.length && i < desc.length; i++) {
			String url = processFile(file[i]);
			Image image = new Image();
			image.setUrl(url);
			image.setDesc(desc[i]);
			list.add(image);
		}
		Gson gson = new Gson();
		
		//设置作者
		article.setUserId(loginUser.getId());
		article.setContent(gson.toJson(list));
		article.setImgList(list);
		article.setArticleType(ArticleType.IMAGE);
		request.setAttribute("article", article);
		int add = articleService.addArticle(article);
		if(add > 0) {
			return new ResultInformation(1, "发布图片文章成功", null);
		}else {
			return new ResultInformation(2, "发布图片文章失败", null);
		}
		
	}
	@RequestMapping("myCollection")
	public String myCollection(HttpServletRequest request){
		User loginUser = (User) request.getSession().getAttribute(CONTAINT.USER_KEY);
		List colle = favariteService.getCollection(loginUser.getId());
		request.setAttribute("colle", colle);
		return "user/favarite";
		
		
	}
}
