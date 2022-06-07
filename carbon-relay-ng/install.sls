# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as carbonrelayng with context %}

{%- if carbonrelayng.config.deps is defined %}
carbon-relay-ng_deps:
  pkg.installed:
    - pkgs: {{ carbonrelayng.config.deps }}
{%- endif %}

{% if carbonrelayng.config.pkgrepo is defined and carbonrelayng.config.pkgrepo %}
carbon-relay-ng_repo:
  pkgrepo.managed:
    # Deactivate this method until OS supported
    {%- set oscodename = carbonrelayng.config.fake_oscodename if carbonrelayng.config.get('fake_oscodename', False) else salt['grains.get']('oscodename') %}
    - name: 'deb {{ carbonrelayng.config.pkgrepo }} {{ oscodename }} main'
    - key_url: {{ carbonrelayng.config.pkgrepo_key }}
    - require:
      - pkg: carbon-relay-ng_deps
{% endif %}

carbon-relay-ng_pkg:
  pkg.installed:
    - name: {{ carbonrelayng.config.pkg }}
    - version: {{ carbonrelayng.config.pkg_version }}
    {% if carbonrelayng.config.pkgrepo is defined %}
    - require:
      - pkgrepo: carbon-relay-ng_repo
    {% endif %}

carbon-relay-ng_service-dir:
  file.directory:
    - name: {{ carbonrelayng.config.service_dir }}
    - user: {{ carbonrelayng.config.user }}
    - group: {{ carbonrelayng.config.group }}

