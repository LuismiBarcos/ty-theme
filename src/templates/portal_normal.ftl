<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />

	<link rel="stylesheet" type="text/css" href="${javascript_folder}/vendor/lightcase-2.5.0/src/css/lightcase.css">
    <script type="text/javascript" src="${javascript_folder}/vendor/lightcase-2.5.0/src/js/lightcase.js"></script>
	<script type="text/javascript" src="${javascript_folder}/vendor/lightcase-2.5.0/vendor/jQuery/jquery.events.touch.js"></script>
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div id="wrapper">
	<header class="container-fluid" id="banner" role="banner">
		<div class="row">
			<#include "${full_templates_path}/navigation.ftl" />
		</div>
	</header>

	<section id="content">
		<#if add_container>
			<div class="container">
		<#else>
			<div class="container-fluid px-0">
		</#if>
			<h1 class="hide-accessible">${the_title}</h1>

			<#if selectable>
				<@liferay_util["include"] page=content_include />
			<#else>
				${portletDisplay.recycle()}

				${portletDisplay.setTitle(the_title)}

				<@liferay_theme["wrap-portlet"] page="portlet.ftl">
					<@liferay_util["include"] page=content_include />
				</@>
			</#if>
		</div>
	</section>

	<#include "${full_templates_path}/footer.ftl" />
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

</body>

</html>