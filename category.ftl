<#--
    @package Akina
-->
<#include "header.ftl">
<@header title="${category.name!} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}"> 
    <#assign isDaytime = ((.now)?string('HH')?number gt settings.light_theme_time?substring(0,2)?number) && ((.now)?string('HH')?number lt settings.dark_theme_time?substring(0,2)?number) />
    <#if (settings.patternimg!true) && isDaytime>
        <div class="pattern-center">
            <div class="pattern-attachment-img" style="background-image: url(${settings.category_patternimg!})"> </div>
            <header class="pattern-header">
                <h1 class="cat-title">${category.name!}</h1>
                <span class="cat-des">${category.description!}</span>
            </header>
        </div>
    <#else>
        <div class="pattern-center">
            <div class="pattern-attachment-img" style="background-image: url(${settings.category_patternimg_dark!})"> </div>
            <header class="pattern-header">
                <h1 class="cat-title">${category.name!}</h1>
                <span class="cat-des">${category.description!}</span>
            </header>
        </div>
    </#if>
</@header>
<div class="category">
    <@categoryTag method="list">
        <#list categories?sort_by('postCount')?reverse as category>
            <div class="category-nav">
                <a href="${context!}/categories/${category.slugName!}" 
                rel="${category.postCount}" data-encode="${category.slugName}" title="${category.name}" >${category.name}
                <sup>${category.postCount}</sup>
            </a>
        </div>
    </#list>
    </@categoryTag>
</div>
<div id="primary" class="content-area">
    <main id="main" class="site-main" role="main">
        <#if posts?? && posts.content?size gt 0>
            <#if !(settings.patternimg!true) || !(settings.category_patternimg?? && settings.category_patternimg!='')>
                <header class="page-header">
                    <h1 class="cat-title">${category.name!}</h1>
                    <span class="cat-des">
                        ${category.description!}
                    </span>
                </header><!-- .page-header -->
            </#if>
            <#-- Start the Loop -->
            <#list posts.content as post>
                <#include "tpl/content.ftl">
            </#list>
            <div class="clearer"></div>
        <#else>
            <#include "tpl/content-none.ftl">
        </#if>
    </main><!-- #main -->
    <#if (settings.pagenav_style!'ajax') == 'ajax'>
        <div id="pagination">
            <#if posts.hasNext()>
                <a href="${context!}/categories/${category.slugName!}/page/${posts.number+2}" class="">下一页</a>
            <#else>
                <span>没有更多文章了</span>
            </#if>
        </div>
    <#else>
        <nav class="navigator">
            <#if posts.hasPrevious()>
                <#if posts.number == 1>
                    <a href="${context!}/categories/${category.slugName!}"><i class="iconfont">&#xe679;</i></a>
                <#else>
                    <a href="${context!}/categories/${category.slugName!}/page/${posts.number}"><i class="iconfont">&#xe679;</i></a>
                </#if>
            </#if>
            <#if posts.hasNext()>
                <a href="${context!}/categories/${category.slugName!}/page/${posts.number+2}"><i class="iconfont">&#xe6a3;</i></a>
            </#if>
        </nav>
    </#if>
    </nav>
</div><!-- #primary -->
<#include "footer.ftl">
