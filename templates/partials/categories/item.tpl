<li component="categories/category" data-cid="{../cid}" data-numRecentReplies="1" class="aa_cat-item">
	<meta itemprop="name" content="{../name}">

		{{{ if ../backgroundImage }}}
			<!-- IF ../isSection -->
				<div class="icon aa_cat-item__icon" style="{function.generateCategoryBackground}"></div>
			<!-- ELSE -->
				<!-- IF ../link -->
					<a href="{../link}" itemprop="url" class="aa_cat-item__icon-link">
				<!-- ELSE -->
					<a href="{config.relative_path}/category/{../slug}" itemprop="url" class="aa_cat-item__icon-link">
				<!-- ENDIF ../link -->
					<div class="icon aa_cat-item__icon" style="{function.generateCategoryBackground}"></div>
				</a>
			<!-- ENDIF ../isSection -->
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
