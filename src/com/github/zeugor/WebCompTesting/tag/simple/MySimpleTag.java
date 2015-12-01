package com.github.zeugor.WebCompTesting.tag.simple;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class MySimpleTag extends SimpleTagSupport {
	private String myCar;
	
	public String getMyCar() {
		return myCar;
	}

	public void setMyCar(String myCar) {
		this.myCar = myCar;
	}

	@Override
	public void doTag() throws IOException, JspException {
		JspWriter out = getJspContext().getOut();
		out.println("mySimpleTag->doTag()=>");	
		getJspBody().invoke(out);
		
		out.println("my car is: " + getMyCar());
	}

}
