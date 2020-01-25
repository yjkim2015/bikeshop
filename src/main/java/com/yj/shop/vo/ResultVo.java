package com.yj.shop.vo;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

public class ResultVo {
private HttpStatus status;
	
	/**
	 * 사유
	 */
	private String reason;

	/**
	 * 결과 data
	 */
	private Object data;
	
	/**
	 * 생성자
	 * @param status
	 */
	public ResultVo(final HttpStatus status) {
		this(null, status);
	}

	/**
	 * 생성자
	 * @param data
	 * @param status
	 */
	public ResultVo(final Object data, final HttpStatus status) {
		this.status = status;
		this.data = data;
	}
	
	/**
	 * 생성자
	 * @param status
	 * @param reason
	 */
	public ResultVo(final HttpStatus status, final String reason) {
		this(null, status);
		this.reason = reason;
	}

	public HttpStatus getStatus() {
		return status;
	}

	public void setStatus(final HttpStatus status) {
		this.status = status;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(final String reason) {
		this.reason = reason;
	}

	public Object getData() {
		return data;
	}

	public void setData(final Object data) {
		this.data = data;
	}
	
	/**
	 * ResultVo를 ResponseEntity로 변환
	 * @return
	 */
	public ResponseEntity<ResultVo> build() {
		return new ResponseEntity<ResultVo>(this, status);
	}
	
	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
}
