<!-- IF config.loggedIn -->
<div class="btn-group topic-watch-dropdown bottom-sheet" component="topic/watch">

	<!-- IF ../isWatched -->
	<button component="category/watching" data-state="notwatching" type="button" class="btn btn-primary">
		<i class="fa fa-fw fi-rr-bell-ring" title="[[category:watching]]"></i>
	</button>
	<!-- ENDIF ../isWatched -->

	<!-- IF ../isNotWatched -->
	<button component="category/notwatching" data-state="watching" type="button" class="btn btn-primary">
		<i class="fa fa-fw fi-rr-bell" title="[[category:not-watching]]"></i>
	</button>
	<!-- ENDIF ../isNotWatched -->

</div>
<!-- ENDIF config.loggedIn -->