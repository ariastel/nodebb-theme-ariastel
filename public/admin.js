'use strict';
/* globals $, app */

define('admin/plugins/ariastel', ['settings'], function(Settings) {

	var ACP = {};

	ACP.init = function() {
		Settings.load('ariastel', $('.ariastel-settings'));

		$('#save').on('click', function() {
			Settings.save('ariastel', $('.ariastel-settings'), function() {
				app.alert({
					type: 'success',
					alert_id: 'ariastel-saved',
					title: 'Settings Saved',
					message: 'Ariastel settings saved'
				});
			});
		});
	};

	return ACP;
});