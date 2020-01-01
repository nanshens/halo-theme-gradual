<#include "header.ftl">
<@header title="文章标签 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">  
    <#assign isDaytime = ((.now)?string('HH')?number gt settings.light_theme_time?substring(0,2)?number) && ((.now)?string('HH')?number lt settings.dark_theme_time?substring(0,2)?number) />    
    <#if (settings.patternimg!true) && isDaytime>
        <div class="pattern-center">
            <div class="pattern-attachment-img" style="background-image: url(${settings.tag_patternimg!})"> </div>
            <header class="pattern-header">
                <h1 class="entry-title">标签</h1>
            </header>
        </div>
    <#else>
        <div class="pattern-center">
            <div class="pattern-attachment-img" style="background-image: url(${settings.tag_patternimg_dark!})"> </div>
            <header class="pattern-header">
                <h1 class="entry-title">标签</h1>
            </header>
        </div>
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
