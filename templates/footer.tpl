		</div><!-- /.container#content -->
	</main>

	<footer class="aa_footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-9 col-sm-12">
					<div class="aa_footer__navbar navbar-default">
						<ul id="main-nav" class="nav navbar-nav">
							{{{each navigation}}}
							<!-- IF function.displayMenuItem, @index -->
							<li class="{navigation.class}">
								<a class="navigation-link" href="{navigation.route}" title="{navigation.title}" <!-- IF navigation.id -->id="{navigation.id}"<!-- ENDIF navigation.id --><!-- IF navigation.properties.targetBlank --> target="_blank"<!-- ENDIF navigation.properties.targetBlank -->>
									<span class="{navigation.textClass}">{navigation.text}</span>
								</a>
							</li>
							<!-- ENDIF function.displayMenuItem -->
							{{{end}}}
						</ul>
					</div>
				</div>
				<div class="col-lg-3 col-sm-12">

				</div>
			</div>
		</div>
	</footer>



	<!-- IF !isSpider -->
	<div class="topic-search hidden">
		<div class="btn-group">
			<button type="button" class="btn btn-default count"></button>
			<button type="button" class="btn btn-default prev"><i class="fa fa-fw fa-angle-up"></i></button>
			<button type="button" class="btn btn-default next"><i class="fa fa-fw fa-angle-down"></i></button>
		</div>
	</div>

	<div component="toaster/tray" class="alert-window">
		<div id="reconnect-alert" class="alert alert-dismissable alert-warning clearfix hide" component="toaster/toast">
			<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
			<p>[[global:reconnecting-message, {config.siteTitle}]]</p>
		</div>
	</div>
	<!-- ENDIF !isSpider -->

	<div class="hide">
	<!-- IMPORT 500-embed.tpl -->
	</div>

	<!-- IMPORT partials/footer/js.tpl -->
</body>
</html>
