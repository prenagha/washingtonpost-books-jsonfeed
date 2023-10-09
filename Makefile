
.DEFAULT_GOAL := zip
ZIP_FILE=wpb_feed.zip

# AWS documentation
# https://docs.aws.amazon.com/lambda/latest/dg/python-package.html

zip:
	pip3 install -r requirements.txt --target ./package
	rm $(ZIP_FILE) || true
	cd package && zip -r ../$(ZIP_FILE) .
	zip $(ZIP_FILE) main.py
	unzip -l $(ZIP_FILE)
