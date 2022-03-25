# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as carbonrelayng with context %}

carbon-relay-ng_deps:
  pkg.installed:
    - pkgs: {{ carbonrelayng.config.deps }}

{% if carbonrelayng.config.pkgrepo %}
carbon-relay-ng_repo:
  pkgrepo.managed:
    - name: 'deb {{ carbonrelayng.config.pkgrepo }} {{ salt['grains.get']('oscodename') }} main'
    - key_url: {{ carbonrelayng.config.pkgrepo_key }}
    - require:
      - pkg: carbon-relay-ng_deps
{% endif %}

carbon-relay-ng_pkg:
  pkg.installed:
    - name: {{ carbonrelayng.config.pkg }}
    - version: {{ carbonrelayng.config.pkg_version }}
    {% if carbonrelayng.config.pkgrepo %}
    - require:
      - pkgrepo: carbon-relay-ng_repo
    {% endif %}

carbon-relay-ng_service-dir:
  file.directory:
    - name: {{ carbonrelayng.config.service_dir }}
    - user: {{ carbonrelayng.config.user }}
    - group: {{ carbonrelayng.config.group }}

