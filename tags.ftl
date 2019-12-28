<#include "header.ftl">
<@header title="文章归档 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <#if (settings.patternimg!true) && (settings.archives_patternimg?? && settings.archives_patternimg!='')>
        <div class="pattern-center">
            <div class="pattern-attachment-img" style="background-image: url(${settings.archives_patternimg!})"> </div>
            <header class="pattern-header">
                <h1 class="entry-title">标签</h1>
            </header>
        </div>
    <#else>
        <div class="blank"></div>
    </#if>
</@header>
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
<#include "footer.ftl">