<#--
	@package Akina
-->
<#include "header.ftl">
<@header title="${keyword!} - 搜索结果 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
	<#assign isDaytime = ((.now)?time gt settings.light_theme_time?time("HH:mm"))&&((.now)?time lt settings.dark_theme_time?time("HH:mm"))/>
	<#if (settings.patternimg!true) && isDaytime>
		<div class="pattern-center">
			<div class="pattern-attachment-img" style="background-image: url(${settings.searh_patternimg!})"> </div>
			<header class="pattern-header">
				<h1 class="entry-title search-title"> 关于“ ${keyword!} ”的搜索结果</h1>
			</header>
		</div>
	<#else>
		<div class="pattern-center">
			<div class="pattern-attachment-img" style="background-image: url(${settings.searh_patternimg_dark!})"> </div>
			<header class="pattern-header">
				<h1 class="entry-title search-title"> 关于“ ${keyword!} ”的搜索结果</h1>
			</header>
		</div>
	</#if>
</@header>

<section id="primary" class="content-area">
	<main id="main" class="site-main" role="main">
		<#if posts?? && posts.content?size gt 0>
			<#if !(settings.patternimg!true) || !(settings.searh_patternimg?? && settings.searh_patternimg!='')>
			<header class="page-header">
				<h1 class="page-title">搜索结果: <span>${keyword!}</span></h1>
			</header><!-- .page-header -->
			</#if>
			<#list posts.content as post>
				<#include "tpl/content.ftl">
			</#list>
			<nav class="navigator">
				<#if posts.hasPrevious()>
					<#if posts.number == 1>
						<a href="${context!}/search?keyword=${keyword!}"><i class="iconfont">&#xe679;</i></a>
					<#else>
						<a href="${context!}/search/page/${posts.number}?keyword=${keyword!}"><i class="iconfont">&#xe679;</i></a>
					</#if>
				</#if>
				<#if posts.hasNext()>
					<a href="${context!}/search/page/${posts.number+2}?keyword=${keyword!}"><i class="iconfont">&#xe6a3;</i></a>
				</#if>
			</nav>
        <#else>
			<div class="search-box">
				<!-- search start -->
				<form class="s-search">
					<i class="iconfont">&#xe65c;</i>
					<input class="text-input" type="search" name="keyword" placeholder="Search..." required>
				</form>
				<!-- search end -->
			</div>
			<#include "tpl/content-none.ftl">
        </#if>
	</main><!-- #main -->
</section><!-- #primary -->
<#include "footer.ftl">
