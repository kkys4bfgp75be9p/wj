<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>产品属性列表</title>
<meta name="Author" content="SINOSOFT Team" />
<meta name="Copyright" content="SINOSOFT" />
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<#include "/WEB-INF/template/common/include.ftl">
<link href="${shopStaticPath}/template/admin/css/list.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${shopStaticPath}/template/admin/js/list.js"></script>
</head>
<body class="list">
	<div class="body">
		<div class="listBar">
			<h1><span class="icon">&nbsp;</span>${("[" + productInsType.name + "]")!} 产品属性列表&nbsp;<span class="pageInfo">总记录数: ${pager.totalCount}(共${pager.pageCount}页)</span></h1>
		</div>
		<form id="listForm" action="product_ins_attribute!list.action" method="post">
			<input type="hidden" name="productInsTypeId" value="${productInsTypeId}" />
			<div class="operateBar">
				<input type="button" class="addButton" onclick="location.href='product_ins_attribute!add.action${("?productInsTypeId=" + productInsTypeId)!}'" value="添加属性" />
				<label>查找:</label>
				<select name="pager.property">
					<option value="name" <#if pager.property == "name">selected="selected" </#if>>
						属性名称
					</option>
				</select>
				<label class="searchText"><input type="text" name="pager.keyword" value="${pager.keyword!}" /></label><input type="button" id="searchButton" class="searchButton" value="" />
				<label>每页显示:</label>
				<select name="pager.pageSize" id="pageSize">
					<option value="10" <#if pager.pageSize == 10>selected="selected" </#if>>
						10
					</option>
					<option value="20" <#if pager.pageSize == 20>selected="selected" </#if>>
						20
					</option>
					<option value="50" <#if pager.pageSize == 50>selected="selected" </#if>>
						50
					</option>
					<option value="100" <#if pager.pageSize == 100>selected="selected" </#if>>
						100
					</option>
				</select>
			</div>
			<table class="listTable">
				<tr>
					<th class="check">
						<input type="checkbox" class="allCheck" />
					</th>
					<th>
						<span class="sort" name="name">属性名称</span>
					</th>
					<th>
						<span class="sort" name="productInsType">产品类型</span>
					</th>
					<th>
						<span class="sort" name="attributeInsType">属性类型</span>
					</th>
					<th>
						<span class="sort" name="isRequired">是否必填</span>
					</th>
					<th>
						<span class="sort" name="isEnabled">是否启用</span>
					</th>
					<th>
						<span class="sort" name="orderList">排序</span>
					</th>
					<th>
						操作
					</th>
				</tr>
				<#list pager.list as list>
					<tr>
						<td>
							<input type="checkbox" name="ids" value="${list.id}" />
						</td>
						<td>
							${list.name}&nbsp;
						</td>
						<td>
							${list.productInsType.name}&nbsp;
						</td>
						<td>
							${action.getText("AttributeInsType." + list.attributeInsType)}
						</td>
						<td>
							<#if list.isRequired == true>
								<img src="${shopStaticPath}/template/admin/images/list_true_icon.gif" />
							<#else>
								<img src="${shopStaticPath}/template/admin/images/list_false_icon.gif" />
							</#if>
						</td>
						<td>
							<#if list.isEnabled == true>
								<img src="${shopStaticPath}/template/admin/images/list_true_icon.gif" />
							<#else>
								<img src="${shopStaticPath}/template/admin/images/list_false_icon.gif" />
							</#if>
						</td>
						<td>
							${list.orderList}
						</td>
						<td>
							<a href="product_ins_attribute!edit.action?id=${list.id}${("&productInsTypeId=" + productInsTypeId)!}" title="编辑">[编辑]</a>
						</td>
					</tr>
				</#list>
			</table>
			<#if (pager.list?size > 0)>
				<div class="pagerBar">
					<input type="button" class="deleteButton" url="product_ins_attribute!delete.action" value="删 除" disabled hidefocus="true" />
					<#include "/WEB-INF/template/admin/pager.ftl" />
				</div>
			<#else>
				<div class="noRecord">
					没有找到任何记录!
				</div>
			</#if>
		</form>
	</div>
</body>
</html>
