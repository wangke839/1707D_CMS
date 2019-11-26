package com.wangke.comm;

import com.wangke.comm.CmcExceptionHtml;

public class CmsAssert {

	public static void AssertTrue(boolean express,String msg) throws CmcException{
		if(!express)
			throw new CmcException(msg);
	}
	/** 
	 * @Title: AssertTrueHtml 
	 * @Description: TODO
	 * @param b
	 * @param string
	 * @return: void
	 */
	public static void AssertTrueHtml(boolean express, String msg) {
		// TODO Auto-generated method stub
		if(!express)
			throw new CmcExceptionHtml(msg);
	}
}
