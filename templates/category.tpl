{{{ if superCategory }}}
	<div class="aa_category__header" style="background-image: url({{ superCategory.headerBG }}); background-color: {{ superCategory.headerBGColor }}"></div>
{{{ end }}}

<div data-widget-area="header_out">
	{{{each widgets.header_out}}}
	{{widgets.header_out.html}}
	{{{end}}}
</div>

{{{ if superCategory }}}
	<div class="aa_category__holder">
		<div class="aa_category__holder__container">
			<img src="{{ superCategory.pageBG }}" class="aa_category__holder__bg hidden-xs hidden-sm hidden-md" />
		</div>
{{{ end }}}

<div class="container">
	<!-- IMPORT partials/breadcrumbs.tpl -->
	<div data-widget-area="header">
		{{{each widgets.header}}}
		{{widgets.header.html}}
		{{{end}}}
	</div>
	<div class="row">
		<div class="category <!-- IF widgets.sidebar.length -->col-lg-8 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length -->">
			<!-- IMPORT partials/category/subcategory.tpl -->

			<div class="topic-list-header clearfix">
				<!-- IF privileges.topics:create -->
				<a href="{config.relative_path}/compose?cid={cid}" component="category/post" id="new_topic" class="btn btn-primary aa_btn" data-ajaxify="false" role="button">[[category:new_topic_button]]</a>
				<!-- ELSE -->
					<!-- IF !loggedIn -->
					<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
					<!-- ENDIF !loggedIn -->
				<!-- ENDIF privileges.topics:create -->

				<a href="{url}" class="inline-block">
					<div class="alert alert-warning hide" id="new-topics-alert"></div>
				</a>

				<span class="pull-right" component="category/controls">
					<!-- IMPORT partials/category/watch.tpl -->
					<!-- IMPORT partials/category/sort.tpl -->
					<!-- IMPORT partials/category/tools.tpl -->
				</span>
			</div>

			<!-- IF !topics.length -->
			<!-- IF privileges.topics:create -->
			<hr class="visible-xs" />
			<div class="alert alert-warning" id="category-no-topics">
				[[category:no_topics]]
			</div>
			<!-- ENDIF privileges.topics:create -->
			<!-- ENDIF !topics.length -->

			<!-- IMPORT partials/topics_list.tpl -->

			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
		<div data-widget-area="sidebar" class="col-lg-4 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
			{{{each widgets.sidebar}}}
			{{widgets.sidebar.html}}
			{{{end}}}
		</div>
	</div>
	<div data-widget-area="footer">
		{{{each widgets.footer}}}
		{{widgets.footer.html}}
		{{{end}}}
	</div>

	<!-- IF !config.usePagination -->
	<noscript>
		<!-- IMPORT partials/paginator.tpl -->
	</noscript>
	<!-- ENDIF !config.usePagination -->

</div>

{{{ if superCategory }}}
	</div>
{{{ end }}}