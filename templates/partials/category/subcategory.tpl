<div class="subcategory">
	<!-- IF children.length --><p>[[category:subcategories]]</p><!-- ENDIF children.length -->

	<ul class="categories row" itemscope itemtype="http://www.schema.org/ItemList">
		{{{each children}}}
			<div class="content col-xs-12 col-xs-6 col-md-4">
				<!-- IMPORT partials/categories/subcat-item.tpl -->
			</div>
		{{{end}}}
	</ul>
</div>

<!-- IF children.length -->
	<hr />
<!-- ENDIF children.length -->