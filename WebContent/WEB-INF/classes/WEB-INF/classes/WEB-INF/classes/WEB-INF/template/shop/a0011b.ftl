<html>
<head>
<title>开心保-订单支付成功通知</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
body{ background:#ffffff;}
a { outline:none; color: #63a426; text-decoration: none; }
a{blr:expression_r(this.onFocus=this.blur());outline:none;}
a:hover {color: #e35b00; text-decoration: underline}
td {
	font: 12px/1.5 宋体; color: #4e4e4e
}
font {
	font: 12px/1.5 宋体; color: #4e4e4e
}
a:focus {
	outline-style: none; outline-color: invert; outline-width: medium
}
img {
	border-bottom: medium none; border-left: medium none; border-top: medium none; border-right: medium none
}
.table-fsf{ border-collapse:collapse;}
.table-fsf td{ border-top:1px solid #99d1d6;border-left:1px solid #99d1d6;border-right:1px solid #99d1d6;border-bottom:1px solid #99d1d6; height: 40px; text-align: center ; color: #222222;  border-collapse:collapse;}
</style>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
	<table id="__01" width="600"  border="0"  align="center" cellpadding="0" cellspacing="0">
		<#include "/wwwroot/kxb/block/MailTemplateHeaderNew.shtml">
		<tr>
			<td  colspan="10" style="padding-top:10px;height:100px;"><b style="font-size:14px;">${MemberRealName}</b> <br>
			<#if (paySuccessList?size > 1)>
				<p style="color:#222222; font-size:12px;">您购买的产品已支付成功！<br>
	稍后您将收到保单信息。<br>
				<#if (financeFlag??) && (financeFlag == true)>
                    <p style="color:darkorange; font-size:12px;">您可关注“开心保保险”（kaixinbbx）官方微信，登陆会员中心，随时随地查看理财收益。</p><br>
				</#if>
					恭喜您选到了合适的保险保障，感谢您选择开心保！	</p>
			<#else>
				<#list paySuccessList as list>
				<p style="color:#222222; font-size:12px;">您购买的${list.ProductName}（订单号${list.OrderSn}）已支付成功！<br>
	稍后您将收到保单信息。<br>
					<#if (financeFlag??) && (financeFlag == true)>
						<p style="color:darkorange; font-size:12px;">您可关注“开心保保险”（kaixinbbx）官方微信，登陆会员中心，随时随地查看理财收益。</p><br>
					</#if>
						恭喜您选到了合适的保险保障，感谢您选择开心保！	</p>
				</#list>
			</#if>
			</td>
		</tr>
		<tr>
			<td colspan="10">
				<span style="font-size:14px; ">&nbsp;<br>订单详情：<br></span> 
				<#list paySuccessList as list>
				<table border="0" class="table-fsf" cellpadding="0" cellspacing="0" style="width:600px;margin-top:10px; margin-bottom:10px; border-collapse:collapse;">
					<tr>
						<td colspan="4" bgcolor="#caf5f9" style="padding-left:8px; text-align:left;font-size:12px; border-top:1px solid #99d1d6;border-left:1px solid #99d1d6;border-right:1px solid #99d1d6;border-bottom:1px solid #99d1d6; height: 30px; color: #222222; " >订单号&nbsp;${list.OrderSn}</td>
					</tr>
					<tr>
						<td bgcolor="#f1fdfe" style="padding-left:8px;font-size:12px; border-top:1px solid #99d1d6;border-left:1px solid #99d1d6;border-right:1px solid #99d1d6;border-bottom:1px solid #99d1d6; height: 30px; text-align: center ; color: #222222; ">投保人</td>
						<td bgcolor="#f1fdfe" style="padding-left:8px;font-size:12px; border-top:1px solid #99d1d6;border-left:1px solid #99d1d6;border-right:1px solid #99d1d6;border-bottom:1px solid #99d1d6; height: 30px; text-align: center ; color: #222222; ">产品名称</td>
						<td bgcolor="#f1fdfe" style="padding-left:8px;font-size:12px; border-top:1px solid #99d1d6;border-left:1px solid #99d1d6;border-right:1px solid #99d1d6;border-bottom:1px solid #99d1d6; height: 30px; text-align: center ; color: #222222; ">份数</td>
						<td bgcolor="#f1fdfe" style="padding-left:8px;font-size:12px; border-top:1px solid #99d1d6;border-left:1px solid #99d1d6;border-right:1px solid #99d1d6;border-bottom:1px solid #99d1d6; height: 30px; text-align: center ; color: #222222; ">已支付金额</td>
					
					</tr>
					<tr>
						<td style="padding-left:8px;font-size:12px; border-top:1px solid #99d1d6;border-left:1px solid #99d1d6;border-right:1px solid #99d1d6;border-bottom:1px solid #99d1d6; height: 30px; text-align: center ; color: #222222; ">${list.ApplicantName}</td>
						<td style="padding-left:8px;font-size:12px; border-top:1px solid #99d1d6;border-left:1px solid #99d1d6;border-right:1px solid #99d1d6;border-bottom:1px solid #99d1d6; height: 30px; text-align: center ; color: #222222; ">${list.ProductName}</td>
						<td style="padding-left:8px;font-size:12px; border-top:1px solid #99d1d6;border-left:1px solid #99d1d6;border-right:1px solid #99d1d6;border-bottom:1px solid #99d1d6; height: 30px; text-align: center ; color: #222222; ">${list.MulNum}</td>
						<td style="padding-left:8px;font-size:12px; border-top:1px solid #99d1d6;border-left:1px solid #99d1d6;border-right:1px solid #99d1d6;border-bottom:1px solid #99d1d6; height: 30px; text-align: center ; color: #222222; ">￥${list.payPrice}</td>

					</tr>
				</table>
				<br>&nbsp;
				</#list>
			</td>
		</tr>
		<#if ('${Points}'!='0')!>
		<tr>
			<td colspan="10">
				<table border="0" cellpadding="0" cellspacing="0">
					<td bgcolor="#fafafa" style="height:40px;width:600px;border:1px solid #e8e8e8; padding-left:20px; font-size:12px; "><p style="line-height:1.4em;">
						本次购买您获得了<b style="color:#ff7600; font-size:12px; ">${Points}</b>个积分，下次购买可抵值<b style="color:#ff0000; font-size:12px; ">${PointsValue}</b>元&nbsp;<a href="${QueryPointsDesc}" style="color: #ed6d00;text-decoration: underline; font-size:12px; ">积分使用说明</a></p></td>
				</table>
					
			</td>
		</tr>
		</#if>
		<#include "/wwwroot/kxb/block/MailTemplateMiddleNew.shtml">

	<#if (MailProductList?size > 0)>	
		<tr>
			<td colspan="10" style="height:22px; width:600px;bgcolor:#ffffff;"></td>
		</tr>
		<tr>
			<td colspan="10">
				<table border="0"  cellpadding="0" cellspacing="0">
					<tr>
						<td colspan="6" style="height:32px; width:166px;bgcolor:#ffffff;font-size:14px; color:#222222;">
							您可能感兴趣的商品：</td>
						<td colspan="16" style="height:32px; width:356px;bgcolor:#ffffff;"></td>
						<td style="height:32px; width:78px;">
							<a href="${ProductCategory}?banner_id=youjiantuijangengduo" style="font-size:14px; color:#555555;">查看更多&gt;</a></td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="10" style="border-top:1px solid #e8e8e8;border-left:1px solid #e8e8e8;border-right:1px solid #e8e8e8; width:600px; height:24px; "></td>
		</tr>
		<tr>
			<td colspan="10" style="border-right:1px solid #e8e8e8;">
				<table border="0"  cellpadding="0" cellspacing="0" >
					<tr>
					<#list MailProductList as list>
						<td style="border-left:1px solid #e8e8e8; width:198px; height:116px;">
							<table border="0"  cellpadding="0" cellspacing="0" width="198px;">
								<tr><td style="width:20px;"></td><td colspan="2" style="height:48px;">
								<table border="0"  cellpadding="0" cellspacing="0">
									<tr>
										<td style="width:103px; height:46px; border:1px solid #e8e8e8;">
										<a href="${list.Url}?banner_id=youjiantuijan${list_index+1}" target="_blank"><img src="${list.ComanyPic}" width="103px" style="width:103px; " alt="${list.ProductName}"></a>
										</td>
									</tr>
								</table>
								
								</td><td style="width:20px;"></td></tr>
								<tr><td style="width:20px;"></td><td colspan="2" style="height:40px;"><a href="${list.Url}?banner_id=youjiantuijan${list_index+1}" target="_blank" style="color:#888888; font-size:12px;">${list.ProductName}</a></td><td style="width:20px;"></td></tr>
								<tr><td style="width:20px;"></td><td style="width:97px;font-size:18px;color:#ef8642"><em style="font-family:'Microsoft YaHei';font-size:15px; font-style: normal;">￥</em>${list.InitPrem}</td><td style="width:62px;"><a href="${list.Url}?banner_id=youjiantuijan${list_index+1}"><img src="http://resource.kaixinbao.com/active_file/images/email/btn_17.gif" alt="去看看"></a></td> <td style="width:20px;"></td></tr>
							</table>
						</td>
					</#list>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="10" style="height:25px; width:600px;border-bottom:1px solid #e8e8e8;border-left:1px solid #e8e8e8;border-right:1px solid #e8e8e8"></td>
		</tr>
	</#if>

	<#if (MailActivityList?size > 0)>
		<tr>
			<td colspan="10" style="height:30px; width:600px;bgcolor:#ffffff;"></td>
		</tr>
		<#list MailActivityList as list>
		<tr>
			<td colspan="10">
			<a href="${list.ImageLink}?banner_id=youjiantuijantupian" target="_blank"><img width="600" height="276" style="width:600px; height:276px; " alt="${list.ImageDesc}" src="${list.ImagePath}"></a></td>
		</tr>
		</#list>
	</#if>
		<#include "/wwwroot/kxb/block/MailTemplateFooterNew.shtml">
	</table>
</body>
</html>