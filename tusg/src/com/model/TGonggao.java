package com.model;

import java.util.Date;

/**
 * TGonggao generated by MyEclipse Persistence Tools
 */

public class TGonggao implements java.io.Serializable
{

	private Integer gonggaoId;
	private String gonggaoTitle;
	private String gonggaoContent;
	private String gonggaoData;
	private String fujian;

	public String getGonggaoContent()
	{
		return gonggaoContent;
	}

	public void setGonggaoContent(String gonggaoContent)
	{
		this.gonggaoContent = gonggaoContent;
	}

	public String getGonggaoData()
	{
		return gonggaoData;
	}

	public void setGonggaoData(String gonggaoData)
	{
		this.gonggaoData = gonggaoData;
	}

	public Integer getGonggaoId()
	{
		return gonggaoId;
	}

	public String getFujian()
	{
		return fujian;
	}

	public void setFujian(String fujian)
	{
		this.fujian = fujian;
	}

	public void setGonggaoId(Integer gonggaoId)
	{
		this.gonggaoId = gonggaoId;
	}

	public String getGonggaoTitle()
	{
		return gonggaoTitle;
	}

	public void setGonggaoTitle(String gonggaoTitle)
	{
		this.gonggaoTitle = gonggaoTitle;
	}

}