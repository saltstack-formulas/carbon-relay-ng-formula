=======================
carbon-relay-ng-formula
=======================

A saltstack formula to install and configure [carbon-relay-ng](https://github.com/graphite-ng/carbon-relay-ng), an alternative carbon-cache written in Go.

At the moment, only Debian Jessie and Stretch are supported.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.


Available states
================

.. contents::
    :local:

``carbon-relay-ng``
-------------------

Installs the carbon-relay-ng package, using pillar configures the service and manages the service.


``carbon-relay-ng.install``
---------------------------

Installs the carbon-relay-ng package.


``carbon-relay-ng.config``
--------------------------

Manages the configuration file using pillar defined.


``carbon-relay-ng.service``
---------------------------

Manages the carbon-relay-ng service.

