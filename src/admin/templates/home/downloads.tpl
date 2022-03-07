{* so we don't have to have super long thing for each link *}
{capture assign='extrnLink'}class="mini_button" style="white-space: normal;" onclick="window.open(this.href); return false;"{/capture}

<fieldset>
	<legend><span class="glyphicon glyphicon-download-alt"></span> Software Downloads</legend>
	<div class="medium_font">

		<div class="col_ftr">Free Downloads:</div>

		<div class="page_note">
			{if $stats.downloadLeft||$stats.downloadExpire=='never'}
				<img src="admin_images/bullet_success.png" alt="Download Access Active" style="margin:0 5px; vertical-align: middle; float: left;" />
				{if $stats.downloadLeft}
					You have <strong class="text_blue">{$stats.downloadLeft}</strong>
					remaining download access to new software updates.
				{elseif $stats.downloadExpire=='never'}
					Your ability to download GeoCoreCE from Github never expires.
				{/if}
			{else}
				<img src="admin_images/bullet_error.png" alt="Notice" style="margin:0 5px; vertical-align: middle;float: left;" />
				Download access has <strong style="color: red;">Expired</strong>.
				You will not be able to download software versions released after <strong class="text_blue">{$stats.downloadExpire|date_format}</strong>.
				See download access renewal options below.
			{/if}
			<div class="clr"></div>
		</div>

		<div class="center"></div>

		<a href="#" id="downloadToggle">See Options</a>
		<div id="download_Links" style="display: none;">
			<div style="margin-top: 15px;">
                <ul class="home_links center">
                    <li><a href="https://github.com/geodesicsolutions-community/geocore-community/releases" class="btn btn-default source">Source Code on GitHub</a></li>
                </ul>
			</div>
			<div class="clr"></div>
		</div>

	</div>
</fieldset>
