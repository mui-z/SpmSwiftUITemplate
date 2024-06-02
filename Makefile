.PHONY: template open


template:
	genesis generate templates/template.yml -d SpmSwiftUITemplatePackage/Sources/SpmSwiftUITemplatePackage/

open:
	xed .

