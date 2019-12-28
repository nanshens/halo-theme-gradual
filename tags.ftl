<#include "header.ftl">
<@header title="文章标签 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <#if (settings.patternimg!true) && (settings.tag_patternimg?? && settings.tag_patternimg!='')>
        <div class="pattern-center">
            <div class="pattern-attachment-img" style="background-image: url(${settings.tag_patternimg!})"> </div>
            <header class="pattern-header">
                <h1 class="entry-title">标签</h1>
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
<#include "footer.ftl">
</div>
