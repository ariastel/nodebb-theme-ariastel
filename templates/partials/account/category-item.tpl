<li component="categories/category" data-cid="{../cid}" data-parent-cid="{../parentCid}" class="row clearfix aa_account-category">
	<meta itemprop="name" content="{../name}">

	<div class="content col-xs-9 depth-{../depth}">
		{{{ if ../backgroundImage }}}
			<div class="icon pull-left" style="{function.generateCategoryBackground}">
				<i class="fa fa-fw {../icon}"></i>
			</div>
		{{{ end }}}

		<h2 class="title">
			<!-- IMPORT partials/categories/link.tpl -->
		</h2>
		<!-- IF ../descriptionParsed -->
		<div>
			<div class="description">
				{../descriptionParsed}
			</div>
		</div>
		<!-- ENDIF ../descriptionParsed -->
	</div>

	<!-- IMPORT partials/category/watch.tpl -->
</li>
{{{ if !../depth }}}
</hr>
{{{ end }}}
