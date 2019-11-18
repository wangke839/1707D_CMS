package com.wangke.comm;

/**
 * 
    * @ClassName: ResultInformation
    * @Description: 返回结果的类
    * @author Dell
    * @date 2019年11月13日
    *
 */
public class ResultInformation {

	private int result;
	private String errorMsg;
	private Object data;
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public String getErrorMsg() {
		return errorMsg;
	}
	public void setErrorMsg(String errorMsg) {
		this.errorMsg = errorMsg;
	}
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	public ResultInformation(int result, String errorMsg, Object data) {
		super();
		this.result = result;
		this.errorMsg = errorMsg;
		this.data = data;
	}
	public ResultInformation() {
		super();
	}
	@Override
	public String toString() {
		return "ResultInformation [result=" + result + ", errorMsg=" + errorMsg
				+ ", data=" + data + "]";
	}
	
	
}
