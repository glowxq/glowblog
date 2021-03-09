<header class="nav-wrapper -sticky" id="navHeader">
    <nav class="nav ">
        <button class="toggle-nav">
            <div class="burger -squeeze">
                <span class="burger-lines"></span>
            </div>
        </button>
        <#if settings.header_logoimg?? && settings.header_logoimg!=''>
            <a href="${blog_url!}" id="headerLogo" class="logo-link"
               onfocus="this.blur();">
                <img src="${settings.header_logoimg}" alt="${blog_title!}" class="logo" id="logo" style=""/>
            </a>
        </#if>
        <ul class="nav-list " role="navigation">
            <div class="list -left " id="menuLinks">
                <@menuTag method="tree">
                    <#list menus?sort_by('priority') as menu>
                        <li style="font-weight: 550;" class="item   <#if menu.children?? && menu.children?size gt 0> has-sub </#if>"
                            index="${menu_index}">
                            <#if menu.children?? && menu.children?size gt 0>
                                <a href="javascript:void(0)" target="${menu.target!}"
                                   class="void-link md:text-base sm:text-sm">${menu.name}</a>
                            <#else >
                                <a class="link md:text-base sm:text-sm" href="${menu.url!}"
                                   target="${menu.target!}">${menu.name}</a>
                            </#if>

                            <#if menu.children?? && menu.children?size gt 0>
                                <div class="sub-menu-tree hidden sh-box-t" id="subMenu_${menu_index}">
                                    <div class="sh-box-b">
                                        <ul class="sub-menu">
                                            <#list menu.children?sort_by('priority') as child>
                                                <li>
                                                    <a href="${child.url!}" class="link md:text-base sm:text-sm"
                                                       target="${child.target!}">
                                                        ${child.name}
                                                    </a>
                                                </li>
                                            </#list>
                                        </ul>
                                    </div>
                                </div>
                            </#if>
                        </li>
                    </#list>
                    <@categoryTag method="list">
                        <li style="font-weight: 550;"  class="item has-sub"
                            index="99">
                            <a href="/categories" target=""
                               class="void-link md:text-base sm:text-sm">全部分类</a>

                            <div class="sub-menu-tree hidden sh-box-t" id="subMenu_">
                                <div class="sh-box-b">
                                    <ul class="sub-menu">
                                        <#list categories as categorie>
                                            <li>
                                                <a href="${categorie.fullPath!}" class="link md:text-base sm:text-sm"
                                                   target="_blank">
                                                    ${categorie.name}(${categorie.postCount!})
                                                </a>
                                            </li>
                                        </#list>
                                    </ul>
                                </div>
                            </div>
                        </li>

                    </@categoryTag>
                             <@categoryTag method="list">
                        <li style="font-weight: 550;"  class="item has-sub"
                            index="99">
                            <a href="/categories" target=""
                               class="void-link md:text-base sm:text-sm">前端</a>

                            <div class="sub-menu-tree hidden sh-box-t" id="subMenu_">
                                <div class="sh-box-b">
                                    <ul class="sub-menu">
                                        <#list categories as categorie>
                                            <li>
                                                <a href="${categorie.fullPath!}" class="link md:text-base sm:text-sm"
                                                   target="_blank">
                                                    ${categorie.name}(${categorie.postCount!})
                                                </a>
                                            </li>
                                        </#list>
                                    </ul>
                                </div>
                            </div>
                        </li>

                    </@categoryTag>
                </@menuTag>
            </div>
            <div class="list-right">
                <div class="overlay"></div>
            </div>
        </ul>
        <#if settings.open_night_mode!true>
            <div class="day-night-mode">
                <input id="switch_Word" type="checkbox" class="switch_Word">
                <label for="switch_Word"><i></i></label>
            </div>
        </#if>
    </nav>
</header>