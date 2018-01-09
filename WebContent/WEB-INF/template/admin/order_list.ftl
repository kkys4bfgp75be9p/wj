<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>投保列表</title>
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
			<h1><span class="icon">&nbsp;</span>投保列表&nbsp;<span class="pageInfo">总记录数: ${pager.totalCount}(共${pager.pageCount}页)</span></h1>
		</div>
		<form id="listForm" action="order!list.action" method="post">
			<div class="operateBar">
				<label>查找:</label>
				<select name="pager.property">
					<option value="orderSn" <#if pager.property == "orderSn">selected="selected" </#if>>
						投保编号
					</option>
					<option value="member.username" <#if pager.property == "member.username">selected="selected" </#if>>
						用户名
					</option>
					<option value="shipName" <#if pager.property == "shipName">selected="selected" </#if>>
						收货人
					</option>
					<option value="shipAddress" <#if pager.property == "shipAddress">selected="selected" </#if>>
						收货地址
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
						<span class="sort" name="orderSn">投保编号</span>
					</th>
					<th>
						<span class="sort" name="member">用户名</span>
					</th>
					<th>
						<span class="sort" name="totalAmount">保费总额</span>
					</th>
					<th>
						<span class="sort" name="paymentStatus">付款状态</span>
					</th>
					<th>
						<span class="sort" name="shippingStatus">配送状态</span>
					</th>
					<th>
						<span class="sort" name="orderStatus">处理状态</span>
					</th>
					<th>
						<span class="sort" name="paymentConfigName">支付方式</span>
					</th>
					<th>
						<span class="sort" name="deliveryTypeName">配送方式</span>
					</th>
					<th>
						<span class="sort" name="createDate">下单时间</span>
					</th>
					<th>
						操作
					</th>
				</tr>
				<#list pager.list as list>
				<#if "${list.orderValid}" == true>
					<tr>
						<td>
							<input type="checkbox" name="ids" value="${(list.id)!}" />
						</td>
						<td>
							${list.orderSn}
						</td>
						<td>
							${(list.member.username)!"-"}
						</td>
						<td>
							${list.totalAmount?string(orderUnitCurrencyFormat)}
						</td>
						<td>
							${action.getText("PaymentStatus." + list.paymentStatus)}
						</td>
						<td>
							${action.getText("ShippingStatus." + list.shippingStatus)}
						</td>
						<td>
							${action.getText("OrderStatus." + list.orderStatus)}
						</td>
						<td>
							${list.paymentConfigName}
						</td>
						<td>
							${list.deliveryTypeName}
						</td>
						<td>
							<span title="${list.createDate?string("yyyy-MM-dd HH:mm:ss")}">${list.createDate}</span>
						</td>
						<td>
							<a href="order!view.action?order.id=${list.id}" title="查看">[查看]</a>
							<#if list.orderStatus != "completed" && list.orderStatus != "invalid" && list.paymentStatus == "unpaid" && list.shippingStatus == "unshipped">
								<a href="order!edit.action?order.id=${list.id}" title="编辑">[编辑]</a>
							<#else>
								<span title="投保状态无法编辑">[编辑]</span>
							</#if>
							<a href="order!process.action?order.id=${list.id}" title="处理">[处理]</a>
						</td>
					</tr>
				</#if>	
				</#list>
			</table>
			<#if (pager.list?size > 0)>
				<div class="pagerBar">
					<input type="button" class="deleteButton" url="order!delete.action" value="删 除" disabled hidefocus="true" />
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