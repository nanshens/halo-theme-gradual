<#--
/**
 * The template for displaying archive pages.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Akina
 */
-->
<#include "header.ftl">
<@header title="${tag.name!} - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <#if (settings.patternimg!true) && (settings.tag_patternimg?? && settings.tag_patternimg!='')>
        <div class="pattern-center">
            <div class="pattern-attachment-img" style="background-image: url(${settings.tag_patternimg!})"> </div>
            <header class="pattern-header">
                <h1 class="cat-title">${tag.name!}</h1>
            </header>
        </div>
    <#else>
        <div class="blank"></div>
    </#if>
</@header>
<div class="tags">
<@tagTag method="list">
  <#list tags?sort_by('postCount')?reverse as tag>
  <div class="tag-nav">
    <a href="${context!}/tags/${tag.slugName!}" 
    rel="${tag.postCount}" data-encode="${tag.slugName}" title="${tag.name}" >${tag.name}
        <sup>${tag.postCount}</sup>
    </a>
  </div>
  </#list>
</@tagTag>
</div>

<div id="primary" class="content-area">
    <main id="main" class="site-main" role="main">
        <#if posts?? && posts.content?size gt 0>
            <#if !(settings.patternimg!true) || !(settings.tag_patternimg?? && settings.tag_patternimg!='')>
                <header class="page-header">
                    <h1 class="cat-title">${tag.name!}</h1>
                    <span class="cat-des">

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
                <a href="${context!}/tags/${tag.slugName!}/page/${posts.number+2}" class="">下一页</a>
            <#else>
                <span>没有更多文章了</span>
            </#if>
        </div>
    <#else>
        <nav class="navigator">
            <#if posts.hasPrevious()>
                <#if posts.number == 1>
                    <a href="${context!}/tags/${tag.slugName!}"><i class="iconfont">&#xe679;</i></a>
                <#else>
                    <a href="${context!}/tags/${tag.slugName!}/page/${posts.number}"><i class="iconfont">&#xe679;</i></a>
                </#if>
            </#if>
            <#if posts.hasNext()>
                <a href="${context!}/tags/${tag.slugName!}/page/${posts.number+2}"><i class="iconfont">&#xe6a3;</i></a>
            </#if>
        </nav>
    </#if>
    </nav>
</div><!-- #primary -->
<#include "footer.ftl">