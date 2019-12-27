<#--
    @package Akina
-->
<#include "header.ftl">
<@header title="${post.title!} - ${options.blog_title!}" keywords="${post.title!},${options.seo_keywords!},${tagWords!}" description="${post.summary!}">
    <#if settings.patternimg!true && post.thumbnail?? && post.thumbnail!=''>
        <div class="pattern-center single-center">
            <div class="pattern-attachment-img" style="background-image: url(${post.thumbnail!})"> </div>
            <header class="pattern-header single-header">
                <h1 class="entry-title">${post.title!}</h1>
                <p class="entry-census">
                    <span>
                        <a href="${context!}">
                            <img src="${user.avatar!}">
                        </a>
                    </span>
                    <span>
                        <a href="${context!}">${user.nickname!}</a>
                    </span>
                    <span class="bull">·</span>${post.createTime?string('yyyy-MM-dd')}
                    <span class="bull">·</span>${post.visits!0} 次阅读
                </p>
            </header>
        </div>
    <#else>
        <div class="blank"></div>
    </#if>
</@header>
<div id="primary" class="content-area">
    <main id="main" class="site-main" role="main">
        <#include "tpl/content-single.ftl">
        <#include "layouts/post-nextprev.ftl">
        <#include "layouts/authorprofile.ftl">
    </main><!-- #main -->
</div><!-- #primary -->
<#include "footer.ftl">
