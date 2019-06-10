<div class="ty-nav-search-modal">
    <div aria-labelledby="clayDefaultModalLabel" class="fade modal" id="clayDefaultModal" role="dialog" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="modal-title" id="clayDefaultModalLabel">Search Toyota</div>
                    <button aria-labelledby="Close" class="close" data-dismiss="modal" role="button" type="button">
                        <@liferay_ui["icon"] icon="times" markupView="lexicon" />
                    </button>
                </div>
                <div class="modal-body">
                    <@liferay.search
                        default_preferences=freeMarkerPortletPreferences.getPreferences("portletSetupPortletDecoratorId", "decorate")
                    />
                </div>
                <div class="modal-footer">
                    <div class="modal-item-last">
                        <div class="btn-group">
                            <div class="btn-group-item">
                                <button class="btn btn-secondary" data-dismiss="modal" type="button">Close</button>
                            </div>
                            <div class="btn-group-item">
                                <button class="btn btn-primary" type="button">Primary</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>