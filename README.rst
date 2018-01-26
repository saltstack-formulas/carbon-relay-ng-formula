=======================
carbon-relay-ng-formula
=======================

A saltstack formula to install and configure [carbon-relay-ng](https://github.com/graphite-ng/carbon-relay-ng), an alternative carbon-cache written in Go.

At the moment, only Debian Jessie and Stretch are supported.
They are tested using [Test Kitchen](http://kitchen.ci/) and [Inspec](https://www.inspec.io/).

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.


Available states
================

.. contents::
    :local:

``carbon-relay-ng``
-------------------

Calls the install, config and service states below.


``carbon-relay-ng.install``
---------------------------

Installs the carbon-relay-ng package and manages some directories and files.


``carbon-relay-ng.config``
--------------------------

Manages the configuration file using defined pillars.


``carbon-relay-ng.service``
---------------------------

Manages the carbon-relay-ng service.

