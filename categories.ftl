<#include "header.ftl">
<@header title="文章分类 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <#assign isDaytime = ((.now)?string('HH')?number gt settings.light_theme_time?substring(0,2)?number) && ((.now)?string('HH')?number lt settings.dark_theme_time?substring(0,2)?number) />
    <#if (settings.patternimg!true) && isDaytime>
        <div class="pattern-center">
            <div class="pattern-attachment-img" style="background-image: url(${settings.category_patternimg!})"> </div>
            <header class="pattern-header">
                <h1 class="entry-title">分类</h1>
            </header>
        </div>
    <#else>
        <div class="pattern-center">
            <div class="pattern-attachment-img" style="background-image: url(${settings.category_patternimg_dark!})"> </div>
            <header class="pattern-header">
                <h1 class="entry-title">分类</h1>
            </header>
        </div>
    </#if>
</@header>
<div class="categories">
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
<#include "footer.ftl">
</div>
