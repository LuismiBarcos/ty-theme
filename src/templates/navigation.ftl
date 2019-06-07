<nav class="navbar navbar-expand-lg ty-nav">
	<div class="navbar-header mr-md-auto mr-lg-0" id="heading">
		<a class="${logo_css_class}" href="${site_default_url}" title="<@liferay.language_format arguments="${site_name}" key="go-to-x" />">
			<img alt="${logo_description}" height="64" src="${site_logo}" width="73" />
		</a>
	</div>
	<#if has_navigation && is_setup_complete>
		<div class="order-2 order-lg-1 mr-lg-auto">
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<span class="glyphicon glyphicon-menu-hamburger"></span>
			</button>
			<div class="${nav_css_class} site-navigation navbar-collapse collapse" id="navigation" role="navigation">
				<div class="ty-nav-navigation-menu" >
					<@liferay.navigation_menu default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "barebone")  />
				</div>
			</div>
		</div>
	</#if>

	<div class="order-1 ty-nav-right-items">
		<div class="ty-nav-network">
			<div class="ty-nav-network-icon" >
				<@liferay_ui["icon"] icon="geolocation" markupView="lexicon" />
			</div>
			<div class="ty-nav-network-text">
				Toyota network
			</div>
		</div>

		<div class="ty-nav-search">
			<button class="btn" type="button" data-toggle="collapse" data-target="#search" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
				<div class="ty-nav-search-btn">
					<div class="ty-nav-search-btn-icon">
						<@liferay_ui["icon"] icon="search" markupView="lexicon" />
					</div>
					<div class="ty-nav-search-btn-text">
						Search
					</div>
				</div>
			</button>
		</div>

		<div class="ty-nav-user-personal-bar">
			<@liferay.user_personal_bar />
		</div>

		<div class="ty-nav-language">
			<div class="ty-nav-language-icon" >
				<@liferay_ui["icon"] icon="globe" markupView="lexicon" />
			</div>
			<div class="ty-nav-language-portlet">
				<@liferay_portlet["runtime"]
					defaultPreferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "decorate")
					portletProviderAction=portletProviderAction.VIEW
					portletProviderClassName="com.liferay.portal.kernel.servlet.taglib.ui.LanguageEntry"
				/>
			</div>
		</div>
	</div>

	<div class="order-4 collapse" id="search">
		<@liferay.search
			default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "decorate")
		/>
	</div>
</nav>