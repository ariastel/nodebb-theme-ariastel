<div class="clearfix post-header">
	<div class="icon pull-left">
		<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
			{buildAvatar(posts.user, "sm2x", true, "", "user/picture")}
			<i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i>
		</a>
	</div>

	<small class="pull-left aa_post-author">
		<strong>
			<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.displayname}</a>
		</strong>

		<!-- IMPORT partials/topic/badge.tpl -->

		<!-- IF posts.user.banned -->
		<span class="label label-danger">[[user:banned]]</span>
		<!-- ENDIF posts.user.banned -->

		<span>
			<!-- IF posts.toPid -->
			<a component="post/parent" class="btn btn-xs btn-default" data-topid="{posts.toPid}" href="{config.relative_path}/post/{posts.toPid}"><i class="fa fa-reply"></i> <!-- IF posts.parent.fullname -->{posts.parent.fullname}<!-- ELSE -->@<!-- IF posts.parent.username -->{posts.parent.username}<!-- ELSE -->[[global:guest]]<!-- ENDIF posts.parent.username --><!-- ENDIF posts.parent.displayname --></a>
			<!-- ENDIF posts.toPid -->

			<span>
				<!-- IF posts.user.custom_profile_info.length -->
				&#124;
				{{{each posts.user.custom_profile_info}}}
				{posts.user.custom_profile_info.content}
				{{{end}}}
				<!-- ENDIF posts.user.custom_profile_info.length -->
			</span>
		</span>

		<span class="label label-danger post--deleted-label">[[topic:post_is_deleted]]</span>
	</small>
	<small class="pull-right">
		<span class="bookmarked"><i class="fa fa-bookmark-o"></i></span>
	</small>
	<small class="pull-right">
		<i component="post/edit-indicator" class="fa fa-pencil-square<!-- IF privileges.posts:history --> pointer<!-- END --> edit-icon <!-- IF !posts.editor.username -->hidden<!-- ENDIF !posts.editor.username -->"></i>

		<small data-editor="{posts.editor.userslug}" component="post/editor" class="hidden">[[global:last_edited_by, {posts.editor.username}]] <span class="timeago" title="{posts.editedISO}"></span></small>

		<span class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">
			<a class="permalink" href="{config.relative_path}/post/{posts.pid}"><span class="timeago" title="{posts.timestampISO}"></span></a>
		</span>
	</small>
</div>

<br />

<div class="content" component="post/content" itemprop="text">
	{{{ if !posts.deleted }}}
			{posts.content}
	{{{ else }}}
		{{{ if logicalOr(privileges.view_deleted, posts.selfPost) }}}
			<section class="spoiler-wrapper spoiler-wrapper--deleted">
				<button class="spoiler-control btn btn-default">[[ariastel:show-deleted-content]]</button>
				<section style="display: none;" class="spoiler-content">
					{posts.content}
				</section>
			</section>
		{{{ end }}}
	{{{ end }}}
</div>

<div class="post-footer">
	{{{ if posts.user.signature }}}
		<div component="post/signature" data-uid="{posts.user.uid}" class="post-signature">{posts.user.signature}</div>
	{{{ end }}}

	<div class="clearfix">

	<small class="pull-right">
		<span class="post-tools">
			<a component="post/reply" href="#" class="no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:reply]]</a>
			<a component="post/quote" href="#" class="no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:quote]]</a>
		</span>

		<!-- IF !reputation:disabled -->
		<span class="votes">
			<a component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
				<i class="fa fa-chevron-up"></i>
			</a>

			<span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>

			<!-- IF !downvote:disabled -->
			<a component="post/downvote" href="#" class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
				<i class="fa fa-chevron-down"></i>
			</a>
			<!-- ENDIF !downvote:disabled -->
		</span>
		<!-- ENDIF !reputation:disabled -->

		<!-- IMPORT partials/topic/post-menu.tpl -->
	</small>
	</div>
	<div component="post/replies/container"></div>
</div>