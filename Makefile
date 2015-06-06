VIRTUALENV_BINARY?=virtualenv
VIRTUALENV_PYTHON_BINARY?=python

PYTHON_BINARY=./bin/python
PIP_BINARY=./bin/pip
MANAGEPY_BINARY=$(PYTHON_BINARY) manage.py


all: requirements

virtualenv:
	test -x $(PYTHON_BINARY) || $(VIRTUALENV_BINARY) --python $(VIRTUALENV_PYTHON_BINARY) .

requirements: virtualenv
	$(PIP_BINARY) install -r requirements.txt

clean:
	rm -rf lib include bin share local
