<#assign isDaytime = ((.now)?string('HH')?number gt settings.light_theme_time?substring(0,2)?number) && ((.now)?string('HH')?number lt settings.dark_theme_time?substring(0,2)?number) />
<figure id="centerbg" class="centerbg" style="
	<#if isDaytime>
		background-image: url('${settings.focus_img_1!}');
	<#else>
		background-image: url('${settings.focus_img_1_dark!}');
	</#if>
	<#if !(settings.focus_height!true)>
		background-position: center center;background-attachment: inherit;
	</#if>
">
	<#if settings.focus_infos!true>
	<div class="focusinfo">
		<#if user.avatar??>
	     <div class="header-tou"><a href="${context!}" ><img src="${user.avatar!}"></a></div>
		<#else>
         <div class="header-tou" ><a href="${context!}"><img src="${static!}/images/avatar.jpg"></a></div>
		</#if>
		<div class="header-info"><p>${settings.header_description!}</p></div>
		<div class="top-social">
		<#if settings.wechat??>
			<li class="wechat"><a href="#"><img src="${static!}/images/sns/wechat.png"/></a>
				<div class="wechatInner">
					<img src="${settings.wechat!}" alt="微信公众号">
				</div>
			</li>
		</#if>
		<#if settings.sina??>
			<li><a href="${settings.sina!}" target="_blank" class="social-sina" title="sina"><img src="${static!}/images/sns/sina.png"/></a></li>
		</#if>
		<#if settings.qq??>
			<li class="qq"><a href="//wpa.qq.com/msgrd?v=3&uin=${settings.qq!}&site=qq&menu=yes" target="_blank" title="Initiate chat ?"><img src="${static!}/images/sns/qq.png"/></a></li>
		</#if>
		<#if settings.qzone??>
		<li><a href="${settings.qzone!}" target="_blank" class="social-qzone" title="qzone"><img src="${static!}/images/sns/qzone.png"/></a></li>
		</#if>
		<#if settings.github??>
		<li><a href="${settings.github!}" target="_blank" class="social-github" title="github"><img src="${static!}/images/sns/github.png"/></a></li>
		</#if>
		<#if settings.lofter??>
		<li><a href="${settings.lofter!}" target="_blank" class="social-lofter" title="lofter"><img src="${static!}/images/sns/lofter.png"/></a></li>
		</#if>
		<#if settings.bili??>
		<li><a href="${settings.bili!}" target="_blank" class="social-bili" title="bilibili"><img src="${static!}/images/sns/bilibili.png"/></a></li>
		</#if>
		<#if settings.wangyiyun??>
		<li><a href="${settings.wangyiyun!}" target="_blank" class="social-wangyiyun" title="CloudMusic"><img src="${static!}/images/sns/wangyiyun.png"/></a></li>
		</#if>
		<#if settings.twitter??>
		<li><a href="${settings.twitter!}" target="_blank" class="social-wangyiyun" title="Twitter"><img src="${static!}/images/sns/twitter.png"/></a></li>
		</#if>
		<#if settings.facebook??>
		<li><a href="${settings.facebook!}" target="_blank" class="social-wangyiyun" title="Facebook"><img src="${static!}/images/sns/facebook.png"/></a></li>
		</#if>
		<#if settings.googleplus??>
		<li><a href="${settings.googleplus!}" target="_blank" class="social-wangyiyun" title="Google+"><img src="${static!}/images/sns/googleplus.png"/></a></li>
		</#if>
		<#if settings.jianshu??>
		<li><a href="${settings.jianshu!}" target="_blank" class="social-wangyiyun" title="简书"><img src="${static!}/images/sns/jianshu.png"/></a></li>
		</#if>
		<#if settings.zhihu??>
		<li><a href="${settings.zhihu!}" target="_blank" class="social-wangyiyun" title="知乎"><img src="${static!}/images/sns/zhihu.png"/></a></li>
		</#if>
		<#if settings.csdn??>
		<li><a href="${settings.csdn!}" target="_blank" class="social-wangyiyun" title="CSDN"><img src="${static!}/images/sns/csdn.png"/></a></li>
		</#if>
	  	</div>		 
	</div>
	</#if>
</figure>