
.DEFAULT_GOAL := zip
ZIP_FILE=wpb_feed.zip

# AWS documentation
# https://docs.aws.amazon.com/lambda/latest/dg/python-package.html

zip:
	rm $(ZIP_FILE) || true
	mkdir package || true
	cd package && zip -r ../$(ZIP_FILE) .
	zip $(ZIP_FILE) main.py
	unzip -l $(ZIP_FILE)
