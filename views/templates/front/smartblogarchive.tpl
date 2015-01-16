{if isset($archives) AND !empty($archives)}
<div id="smartblogarchive"  class="block blogModule boxPlain">
    <h2 class='sdstitle_block'><a href="{smartblog::GetSmartBlogLink('smartblog_archive')}">{l s='Blog Archive' mod='smartblogarchive'}</a></h2>
   <div class="block_content list-block">
         <ul>
	{foreach from=$archives item="archive"}
                {foreach from=$archive.month item="months"}
                    {assign var="linkurl" value=null}
                            {$linkurl.year = $archive.year}
                        {$linkurl.month = $months.month}
                        {assign var="yearmonthtime" value=strtotime("`$archive.year`-`$months.month`")}
    <li>
		  <a href="{smartblog::GetSmartBlogLink('smartblog_month',$linkurl)}">{$yearmonthtime|date_format:"%B"|capitalize}-{$archive.year}</a>
		</li>
                {/foreach}
	{/foreach}
        </ul>
   </div>
</div>
{/if}