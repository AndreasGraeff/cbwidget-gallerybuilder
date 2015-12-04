#!/bin/sh

cd ..
file="install-widget.zip"
if [ -f "$file" ]
then
	rm -f install-widget.zip
fi

zip -r cbwidget-gallerybuilder/install-widget.zip cbwidget-gallerybuilder -x *.git* *build.sh
cd cbwidget-gallerybuilder
