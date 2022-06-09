
Changelog
=========

`1.0.1 <https://github.com/saltstack-formulas/carbon-relay-ng-formula/compare/v1.0.0...v1.0.1>`_ (2022-06-09)
-----------------------------------------------------------------------------------------------------------------

Documentation
^^^^^^^^^^^^^


* update pillar.example (\ `24bddaf <https://github.com/saltstack-formulas/carbon-relay-ng-formula/commit/24bddafee18cb3c892ea8e9ff06c15eb22621599>`_\ )

`1.0.0 <https://github.com/saltstack-formulas/carbon-relay-ng-formula/compare/v0.1.0...v1.0.0>`_ (2022-06-09)
-----------------------------------------------------------------------------------------------------------------

Code Refactoring
^^^^^^^^^^^^^^^^


* only use single quotes in config file (\ `8633ff9 <https://github.com/saltstack-formulas/carbon-relay-ng-formula/commit/8633ff926edc2cfc2801933f4989d2eea0fa6c9a>`_\ )

Continuous Integration
^^^^^^^^^^^^^^^^^^^^^^


* only enable Debian (\ `f114ee7 <https://github.com/saltstack-formulas/carbon-relay-ng-formula/commit/f114ee7ee1f0f5d98ce084fc51dc2ae4512fdf24>`_\ )
* update from latest template-formula (\ `f7dc081 <https://github.com/saltstack-formulas/carbon-relay-ng-formula/commit/f7dc081b9930b9ecd633e5e36836b9e93ce79d67>`_\ )
* **kitchen:** rename kitchen.yml file (\ `44f6792 <https://github.com/saltstack-formulas/carbon-relay-ng-formula/commit/44f67922f5d49fbc9e07f75d0f1977085995c9cf>`_\ )

Features
^^^^^^^^


* apt repo hack for unsupported platforms (\ `3fd03f6 <https://github.com/saltstack-formulas/carbon-relay-ng-formula/commit/3fd03f6657e7cc6ca78a6ca15e1ce0f07619787a>`_\ )
* no default configuration for carbon-relay-ng (\ `58094b4 <https://github.com/saltstack-formulas/carbon-relay-ng-formula/commit/58094b4c5afddddada490a07dd661223c6ed0ae5>`_\ )
* update map.jinja (\ `843859c <https://github.com/saltstack-formulas/carbon-relay-ng-formula/commit/843859c86ffd5debf33cc7aace1e3c50dbb6ec14>`_\ )

Tests
^^^^^


* working Inspec tests (\ `711e619 <https://github.com/saltstack-formulas/carbon-relay-ng-formula/commit/711e619bdf8577afc7168ac29279c0ad86a40550>`_\ )

BREAKING CHANGES
^^^^^^^^^^^^^^^^


* no default configuration provided, you must update formula configuration
