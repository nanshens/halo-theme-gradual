<#--
    Template Name: links
-->
<#include "header.ftl">
<@header title="友情链接 - ${options.blog_title!}" keywords="${options.seo_keywords!}" description="${options.seo_description!}">
    <#assign isDaytime = ((.now)?time gt settings.light_theme_time?time("HH:mm"))&&((.now)?time lt settings.dark_theme_time?time("HH:mm"))/>
    <#if (settings.patternimg!true) && isDaytime>
        <div class="pattern-center">
            <div class="pattern-attachment-img" style="background-image: url(${settings.links_patternimg!})"> </div>
            <header class="pattern-header">
                <h1 class="entry-title">友情链接</h1>
            </header>
        </div>
    <#else>
        <div class="pattern-center">
            <div class="pattern-attachment-img" style="background-image: url(${settings.links_patternimg_dark!})"> </div>
            <header class="pattern-header">
                <h1 class="entry-title">友情链接</h1>
            </header>
        </div>
    </#if>
</@header>
	<#if !(settings.patternimg!true) || !(settings.links_patternimg?? && settings.links_patternimg!='')>
	    <span class="linkss-title">友情链接</span>
	</#if>
    <article <?php post_class("post-item"); ?>
        <div class="links">
            <ul class="link-items fontSmooth">
                <@linkTag method="list">
                    <#list links as link>
                        <li class="link-item">
                            <a class="link-item-inner effect-apollo" href="${link.url!}" title="${link.name!}" target="_blank">
                                <span class="sitename">${link.name!}</span>
                                <div class="linkdes">${link.description!}</div>
                            </a>
                        </li>
                    </#list>
                </@linkTag>
            </ul>
        </div>
    </article>
<#include "footer.ftl">