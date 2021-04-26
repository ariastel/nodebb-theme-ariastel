<div class="row">
	<div class="col-sm-2 col-xs-12 settings-header">Theme Settings</div>
	<div class="col-sm-10 col-xs-12">	
		<form role="form" class="ariastel-settings">
			<div class="checkbox">
				<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect">
					<input class="mdl-switch__input" type="checkbox" id="hideSubCategories" name="hideSubCategories">
					<span class="mdl-switch__label"><strong>Hide subcategories on categories view</strong></span>
				</label>
			</div>
			<div class="checkbox">
				<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect">
					<input class="mdl-switch__input" type="checkbox" id="hideCategoryLastPost" name="hideCategoryLastPost">
					<span class="mdl-switch__label"><strong>Hide last post on categories view</strong></span>
				</label>
			</div>
			<div class="checkbox">
				<label class="mdl-switch mdl-js-switch mdl-js-ripple-effect">
					<input class="mdl-switch__input" type="checkbox" id="enableQuickReply" name="enableQuickReply">
					<span class="mdl-switch__label"><strong>Enable quick reply</strong></span>
				</label>
			</div>
			<div class="form-group row">
				<label for="loginLogoUrl" class="col-sm-4 control-label">Logo URL for Auth page </label>
				<div class="col-sm-8">
					<input type="url" id="loginLogoUrl" name="loginLogoUrl" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label for="loginBgFormUrl" class="col-sm-4 control-label">Form Background URL for Auth page </label>
				<div class="col-sm-8">
					<textarea id="loginBgFormUrl" name="loginBgFormUrl" class="form-control" rows="5">
					</textarea>
				</div>
			</div>
			<div class="form-group row">
				<label for="loginBgVideoUrl" class="col-sm-4 control-label">Background Video URL for Auth page (without extension! - we'll take .mp4, .webm and .png)</label>
				<div class="col-sm-8">
					<input type="url" id="loginBgVideoUrl" name="loginBgVideoUrl" class="form-control">
				</div>
			</div>
			<div class="form-group row">
				<label for="cdnPreload" class="col-sm-4 control-label">Preload CDN</label>
				<div class="col-sm-8">
					<input type="url" id="cdnPreload" name="cdnPreload" class="form-control">
				</div>
			</div>
		</form>
	</div>
</div>
	
<button id="save" class="floating-button mdl-button mdl-js-button mdl-button--fab mdl-js-ripple-effect mdl-button--colored">
    <i class="material-icons">save</i>
</button>