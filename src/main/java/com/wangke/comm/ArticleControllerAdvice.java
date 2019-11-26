package com.wangke.comm;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;



@ControllerAdvice
public class ArticleControllerAdvice {

	@ExceptionHandler(CmcException.class)
	@ResponseBody
	public ResultInformation slfhids(CmcException excetion) {
		
		
		return new ResultInformation(2, excetion.getMessage(), null);
		
	}
	@ExceptionHandler(CmcExceptionHtml.class)
	public ModelAndView  interceptorExceptionHtml(CmcExceptionHtml excetion) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("error");// 跳转到jsp
		modelAndView.addObject("errorInfo", excetion.getMessage());
		return modelAndView;
	}
}
