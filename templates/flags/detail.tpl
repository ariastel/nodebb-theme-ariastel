<div class="row">
	<div class="col-sm-4 col-md-3">
		<!-- IMPORT partials/flags/quick-filters.tpl -->
	</div>
	<div class="col-sm-6 col-md-9">
		<h2>
			{target_readable}
			<small><span class="timeago" title="{datetimeISO}"></span></small>
		</h2>

		<hr />

		<div class="media">
			<div class="media-left">
				<a href="{config.relative_path}/user/{target.user.userslug}">
					<!-- IF target.user.picture -->
					<img class="media-object avatar avatar-lg" src="{target.user.picture}" alt="{target.user.username}" />
					<!-- ELSE -->
					<div class="media-object avatar avatar-lg" style="background-color: {target.user.icon:bgColor}">{target.user.icon:text}</div>
					<!-- ENDIF target.user.picture -->
				</a>
			</div>
			<div class="media-body">
				<h4 class="media-heading"><a href="{config.relative_path}/user/{target.user.userslug}">{target.user.username}</a></h4>
				{target.content}
			</div>
		</div>

		<hr />

		<div class="row">
			<div class="col-sm-6">
				<form role="form">
					<div class="form-group">
						<label for="state">[[flags:state]]</label>
						<select class="form-control" name="state">
							<option value="open">[[flags:state-open]]</option>
							<option value="wip">[[flags:state-wip]]</option>
							<option value="resolved">[[flags:state-resolved]]</option>
							<option value="rejected">[[flags:state-rejected]]</option>
						</select>
					</div>
					<div class="form-group">
						<label for="assignee">[[flags:assignee]]</label>
						<select class="form-control" name="assignee">
							<option value="">[[flags:no-assignee]]</option>
							<!-- BEGIN assignees -->
							<option value="{../userslug}">{../username}</option>
							<!-- END assignees -->
						</select>
					</div>
					<button type="button" class="btn btn-block btn-primary" data-action="update">[[flags:update]]</button>
				</form>

				<hr />

				<form role="form">
					<div class="form-group">
						<label for="note">[[flags:notes]]</label>
						<textarea id="note" class="form-control"></textarea>
					</div>
					<button type="button" class="btn btn-block btn-primary">[[flags:add-note]]</button>
				</form>

				<!-- BEGIN notes -->
				<div class="media">
					<div class="media-left">
						<a href="{config.relative_path}/user/{../user.userslug}">
							<!-- IF ../user.picture -->
							<img class="media-object avatar avatar-lg" src="{../user.picture}" alt="{../user.username}" />
							<!-- ELSE -->
							<div class="media-object avatar avatar-lg" style="background-color: {../user.icon:bgColor}">{../user.icon:text}</div>
							<!-- ENDIF ../user.picture -->
						</a>
					</div>
					<div class="media-body">
						<h4 class="media-heading">
							<a href="{config.relative_path}/user/{../user.userslug}">{../user.username}</a>
							<small><span class="timeago" title="{../datetimeISO}"></span></small>
						</h4>
						{../content}
					</div>
				</div>
				<!-- END notes -->
			</div>
		</div>
	</div>
</div>