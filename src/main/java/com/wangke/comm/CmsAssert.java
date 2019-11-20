package com.wangke.comm;

public class CmsAssert {

	public static void AssertTrue(boolean express,String msg) throws CmcException{
		if(!express)
			throw new CmcException(msg);
	}
}
