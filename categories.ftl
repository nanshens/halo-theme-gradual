<#include "header.ftl">
<@header title="文章归档 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <#if (settings.patternimg!true) && (settings.archives_patternimg?? && settings.archives_patternimg!='')>
        <div class="pattern-center">
            <div class="pattern-attachment-img" style="background-image: url(${settings.archives_patternimg!})"> </div>
            <header class="pattern-header">
                <h1 class="entry-title">文章分类</h1>
            </header>
        </div>
    <#else>
        <div class="blank"></div>
    </#if>
</@header>
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