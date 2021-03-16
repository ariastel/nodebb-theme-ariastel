<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="aa_cat-item">
	<meta itemprop="name" content="{../name}">

		{{{ if ../backgroundImage }}}
			<div class="icon aa_cat-item__icon" style="{function.generateCategoryBackground}"></div>
		{{{ end }}}

		<div class="aa_cat-item__content">
			<h2 class="title aa_cat-item__title">
				<!-- IMPORT partials/categories/link.tpl -->
			</h2>
			<!-- IF !config.hideSubCategories -->
			{function.generateChildrenCategories}
			<!-- ENDIF !config.hideSubCategories -->
		</div>

</li>
