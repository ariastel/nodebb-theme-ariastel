'use strict';

const meta = require.main.require('./src/meta');
const navigation = require.main.require('./src/navigation');
const plugins = require.main.require('./src/plugins');
var user = require.main.require('./src/user');


const library = {};

library.init = function(params, callback) {
	var app = params.router;
	var middleware = params.middleware;

	app.get('/admin/plugins/ariastel', middleware.admin.buildHeader, renderAdmin);
	app.get('/api/admin/plugins/ariastel', renderAdmin);

	callback();
};

library.addAdminNavigation = function(header, callback) {
	header.plugins.push({
		route: '/plugins/ariastel',
		icon: 'fa-paint-brush',
		name: 'Ariastel Theme'
	});

	callback(null, header);
};

library.defineWidgetAreas = function(areas, callback) {
	const locations = ['header', 'sidebar', 'footer'];
	const templates = [
		'categories.tpl', 'category.tpl', 'topic.tpl', 'users.tpl',
		'unread.tpl', 'recent.tpl', 'popular.tpl', 'top.tpl', 'tags.tpl', 'tag.tpl'
	];
	function capitalizeFirst(str) {
		return str.charAt(0).toUpperCase() + str.slice(1)
	}
	templates.forEach(template => {
		locations.forEach(location => {
			areas.push({
				name: capitalizeFirst(template.split('.')[0]) + ' ' + capitalizeFirst(location),
				template: template,
				location: location,
			});
		});
	});

	areas = areas.concat([
		{
			name: "Account Header",
			template: "account/profile.tpl",
			location: "header"
		},
	]);

	callback(null, areas);
};

library.getThemeConfig = async function(config) {
	const settings = await meta.settings.get('ariastel');
	config.hideSubCategories = settings.hideSubCategories === 'on';
	config.hideCategoryLastPost = settings.hideCategoryLastPost === 'on';
	config.enableQuickReply = settings.enableQuickReply === 'on';
	return config;
};

function renderAdmin(req, res, next) {
	res.render('admin/plugins/ariastel', {});
}

library.addUserToTopic = async function (hookData) {
	if (hookData.req.user) {
		const userData = await user.getUserData(hookData.req.user.uid);
		hookData.templateData.loggedInUser = userData;
	} else {
		hookData.templateData.loggedInUser =  {
			uid: 0,
			username: '[[global:guest]]',
			picture: user.getDefaultAvatar(),
			'icon:text': '?',
			'icon:bgColor': '#aaa',
		};
	}
	return hookData;
};

library.renderFooter = async function(data) {
	data.templateValues.navigation = await navigation.get(data.req.uid);
	data.templateValues.superCategories = await plugins.hooks.fire('filter:super-categories.get') || [];
	return data;
}

library.addMetaToHeader = async function (payload) {

  const settings = await meta.settings.get('ariastel');

  if (settings?.cdnPreload) {
    if (!payload?.templateValues?.linkTags) {
      payload.templateValues.linkTags = [];
    }
    payload.templateValues.linkTags.push({
      rel: 'preconnect',
      href: settings.cdnPreload
    })
  }

  return payload;
}

library.updateLoginStyles = async function (payload) {
  const settings = await meta.settings.get('ariastel');
  if (settings?.loginLogoUrl) {
		payload.templateData.loginLogoUrl = settings.loginLogoUrl;
	}
  if (settings?.loginBgVideoUrl) {
		payload.templateData.loginBgVideoUrl = settings.loginBgVideoUrl;
  }
	if (settings?.loginBgFormUrl) {
		const values = settings.loginBgFormUrl.split('\n');
		payload.templateData.loginBgFormUrl = values[Math.floor(Math.random() * values.length)].trim();
	}
	return payload;
}

module.exports = library;
