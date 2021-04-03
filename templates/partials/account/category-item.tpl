<li component="categories/category" data-cid="{../cid}" data-parent-cid="{../parentCid}" class="row clearfix">
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
		<div>
			<!-- IF ../descriptionParsed -->
			<div class="description">
				{../descriptionParsed}
			</div>
			<!-- ENDIF ../descriptionParsed -->
		</div>
	</div>

	<!-- IMPORT partials/category/watch.tpl -->
</li>
