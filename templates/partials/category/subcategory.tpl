<div class="subcategory">
	<!-- IF children.length --><p>[[category:subcategories]]</p><!-- ENDIF children.length -->

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