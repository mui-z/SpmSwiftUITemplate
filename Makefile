.PHONY: template open


template:
	genesis generate templates/template.yml -d SpmSwiftUITemplatePackage/Sources/SpmSwiftUITemplatePackage/

format:
	swiftformat .

open:
	xed .

