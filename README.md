buildout.minimal
================

[![Build Status](https://drone.io/github.com/leftxs/buildout.minimal/status.png)](https://drone.io/github.com/leftxs/buildout.minimal/latest)

Minimal Plone Buildout

Features
--------

This is a minimal buildout for [Plone](https://plone.com). Setuptools is pinned to 7.0 and zc.buildout to 2.2.5. This is because of the changes in Setuptools 8, this will hopefully change in the future.

Installation
------------

Install/Setup it::

    git clone https://github.com/leftxs/buildout.minimal.git

Run Makefile::

    make build

If you do not like Makefiles::

    virtualenv --python=python2.7 --no-setuptools --clear .

    wget http://downloads.buildout.org/2/bootstrap.py

    python bootstrap.py --setuptools-version=7.0 --version=2.2.5

    source bin/activate && ./bin/buildout

This will:

- create a virtualenv with python 2.7 with no setuptools
- download a up to date bootstrap.py
- bootstrap your virtualenv with setuptools version 7 and buildout version 2.2.5
- activate the virtualenv and run buildout

Contribute
----------



License
-------

[GPLv2](https://www.gnu.org/licenses/gpl-2.0.html)
