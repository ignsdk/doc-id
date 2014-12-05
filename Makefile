INSTALL_LOG = install.log
VERSION = 1.0.8
.PHONY : build

all:
	@echo "Create README.md"
	cat `pwd`/src/* > README.md
	sed -i.txt 's|(../img|(img|g' README.md
	rm README.md.txt
