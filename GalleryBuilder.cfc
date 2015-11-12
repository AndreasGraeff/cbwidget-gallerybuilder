/**
* A widget that renders a lightbox image gallery built in the ContentBox GalleryBuilder Module.
*/
component extends="contentbox.model.ui.BaseWidget" singleton
{

	GalleryBuilder function init(controller)
	{
		super.init(controller);
		setPluginName("GalleryBuilder");
		setPluginVersion("1.0");
		setPluginDescription("Embed an image gallery built in the module GalleryBuilder into the content of your site.");
		setPluginAuthor("Andreas Graeff");
		setPluginAuthorURL("http://www.artificial-images.de");
		setIcon( "list.png" );
		setCategory( "Content" );
		setForgeBoxSlug("cbwidget-gallerybuilder");
		return this;
	}


	any function renderIt(required string slug, string defaultValue)
	{
		var content = runEvent(event='contentbox-gallerybuilder:render.gallery', eventArguments=arguments);
		if ( not isNull(content) )
		{
			return content;
		}
		if ( structKeyExists(arguments, "defaultValue") )
		{
			return arguments.defaultValue;
		}
		throw(message="The gallery slug '#arguments.slug#' does not exist!",type="GalleryBuilderWidget.InvalidGalleryBuilderSlug");
	}

}
