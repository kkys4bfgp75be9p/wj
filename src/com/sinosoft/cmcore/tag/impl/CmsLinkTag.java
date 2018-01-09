package com.sinosoft.cmcore.tag.impl;

import com.sinosoft.cmcore.tag.SimpleTag;

public class CmsLinkTag extends SimpleTag {

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.sinosoft.cmcore.tag.TagBase#getAllAttributeNames()
	 */
	public String[] getAllAttributeNames() {
		return new String[] { "type", "spliter" };
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.sinosoft.cmcore.tag.TagBase#getMandantoryAttributeNames()
	 */
	public String[] getMandantoryAttributeNames() {
		return new String[] { "type" };
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.sinosoft.cmcore.tag.TagBase#getPrefix()
	 */
	public String getPrefix() {
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.sinosoft.cmcore.tag.TagBase#getTagName()
	 */
	public String getTagName() {
		return null;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.sinosoft.cmcore.tag.TagBase#onTagStart()
	 */
	public int onTagStart() {
		return 0;
	}

}