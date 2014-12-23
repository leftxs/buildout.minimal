SHELL := /bin/bash
VENV=.
NO_COLOR    = \x1b[0m
OK_COLOR    = \x1b[32;01m

.PHONY: build

build:
	@echo -e "${OK_COLOR}>>> Creating virtuelenv...${NO_COLOR}"
	virtualenv --python=python2.7 --no-setuptools --clear $(VENV)

	@echo -e "${OK_COLOR}>>> Downloading bootstrap file...${NO_COLOR}"
	wget http://downloads.buildout.org/2/bootstrap.py

	@echo -e "${OK_COLOR}>>>Running python bootstrap...${NO_COLOR}"
	python bootstrap.py --setuptools-version=7.0 --version=2.2.5

	@echo -e "${OK_COLOR}>>>Running buildout...${NO_COLOR}"
	bash -c "source bin/activate && ./bin/buildout"

	@echo -e "${OK_COLOR}Do not forget to activate your virtualenv !${NO_COLOR}"
