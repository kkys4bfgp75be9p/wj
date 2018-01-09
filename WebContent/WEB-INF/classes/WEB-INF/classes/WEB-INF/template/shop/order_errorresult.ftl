<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>提示信息</title>
<meta name="Author" content="SINOSOFT Team" />
<meta name="Copyright" content="SINOSOFT" />
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<#include "/WEB-INF/template/common/include.ftl">
</head>
<body class="message">
	<div class="main">
		<div class="messageBox">
			<div class="boxTop">
				<div class="boxTitle">提示信息 </div>
				<a class="boxClose windowClose" href="#" hidefocus="true"></a>
			</div>
			<div class="boxMiddle">
				<div class="messageContent">
					<span class="icon success"> </span>
					<span class="messageText">
						<#if (errorMessages?size > 0)!>
							<#list errorMessages as list>${list}<br></#list>
						<#elseif (actionMessages?size > 0)!>
							<#list actionMessages as list>${list}<br></#list>
						<#elseif (fieldErrors?size > 0)!>
							<#list (fieldErrors?keys)! as key>
								${fieldErrors[key]?replace('^\\[', '', 'r')?replace('\\]$', '', 'r')}<br>
							</#list>
						<#else>
							
							<strong class="red">还有未填写的产品投保信息</strong>
						</#if>
					</span>
				</div>
				<input type="button" class="formButton messageButton" onclick="window.location.href='${base}/shop/order!infosave.action?orderItemId=${orderItem.id}&productId=${product.id}&orderId=${orderId}'" value="确  定" hidefocus="true" />
			</div>
			<div class="boxBottom"></div>
		</div>
	</div>
</body>
</html>