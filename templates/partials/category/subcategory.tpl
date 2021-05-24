<div class="subcategory">
	{{{ if hasMoreSubCategories }}}
	<div><!-- IMPORT partials/category-selector.tpl --></div>
	{{{ else }}}
	<p>[[category:subcategories]]</p>
	{{{ end }}}

	<ul class="categories" itemscope itemtype="http://www.schema.org/ItemList">
		{{{each children}}}
			<div class="aa__subcat-item">
				<!-- IMPORT partials/categories/subcat-item.tpl -->
			</div>
		{{{end}}}
	</ul>
</div>

<!-- IF children.length -->
	<hr />
<!-- ENDIF children.length -->