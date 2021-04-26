<div class="aa_login-video">
	<video playsinline autoplay muted loop disablePictureInPicture poster="{loginBgVideoUrl}.png" class="aa_login-video__video hidden-xs">
		<source src="{loginBgVideoUrl}.webm" type="video/webm">
		<source src="{loginBgVideoUrl}.mp4" type="video/mp4">
	</video>
	<img src="{loginBgVideoUrl}.png" class="aa_login-video__video aa_login-video__video--mobile visible-xs" />
</div>

<div class="aa_login-form" style="background-image: url('{loginBgFormUrl}');">

	<img src="{loginLogoUrl}" class="aa_login-form__logo" />
	<h2 class="aa_login-form__header">[[ariastel:sign-in]]</h2>
	
	<!-- IF allowLocalLogin -->
	<div>
		<div class="login-block">
			<div class="alert alert-danger" id="login-error-notify" <!-- IF error -->style="display:block"<!-- ELSE -->style="display: none;"<!-- ENDIF error -->>
				<button type="button" class="close" data-dismiss="alert">&times;</button>
				<strong>[[login:failed_login_attempt]]</strong>
				<p>{error}</p>
			</div>

			<form class="form-horizontal" role="form" method="post" id="login-form">
				<div class="form-group">
					<label for="username" class="control-label">{allowLoginWith}</label>
					<div>
						<input class="form-control" type="text" placeholder="{allowLoginWith}" name="username" id="username" autocorrect="off" autocapitalize="off" value="{username}"/>
					</div>
				</div>
				<div class="form-group">
					<label for="password" class="control-label">[[user:password]]</label>
					<div>
						<input class="form-control" type="password" placeholder="[[user:password]]" name="password" id="password" <!-- IF username -->autocomplete="off"<!-- ENDIF username -->/>
						<p id="caps-lock-warning" class="text-danger hidden">
							<i class="fa fa-exclamation-triangle"></i> [[login:caps-lock-enabled]]
						</p>
					</div>
				</div>
				<div class="form-group">
					<div class="checkbox">
						<label>
							<input type="checkbox" name="remember" id="remember" checked /> [[login:remember_me]]
						</label>
					</div>
				</div>
				{{{each loginFormEntry}}}
				<div class="form-group loginFormEntry">
					<label for="login-{loginFormEntry.styleName}" class="col-lg-4 control-label">{loginFormEntry.label}</label>
					<div id="login-{loginFormEntry.styleName}" class="col-lg-8">{{loginFormEntry.html}}</div>
				</div>
				{{{end}}}
				<input type="hidden" name="_csrf" value="{config.csrf_token}" />
				<input type="hidden" name="noscript" id="noscript" value="true" />
				<div class="form-group">
					<div>
						<button class="btn btn-primary btn-lg btn-block" id="login" type="submit">[[global:login]]</button>
						<!-- IF allowRegistration -->
						<span>[[login:dont_have_account]] <a href="{config.relative_path}/register">[[register:register]]</a></span>
						<!-- ENDIF allowRegistration -->
						<!-- IF allowPasswordReset -->
						&nbsp; <a id="reset-link" href="{config.relative_path}/reset">[[login:forgot_password]]</a>
						<!-- ENDIF allowPasswordReset -->
					</div>
				</div>
			</form>

		</div>
	</div>
	<!-- ENDIF allowLocalLogin -->

	<!-- IF alternate_logins -->
	<div class="alt-login-block">
		<ul class="alt-logins">
			{{{each authentication}}}
				<li class="alt-logins__item {authentication.name}" style="border-color: {authentication.borderColor}; background: {authentication.backgroundColor};">
					<a class="alt-logins__item__link" rel="nofollow noopener noreferrer" target="_top" href="{config.relative_path}{authentication.url}" style="color: {authentication.textColor};">
						<i class="fa {authentication.icon} fa-3x"></i>[[ariastel:login-in-with, {authentication.displayName}]]
					</a>
				</li>
			{{{end}}}
		</ul>
	</div>
	<!-- ENDIF alternate_logins -->
</div>