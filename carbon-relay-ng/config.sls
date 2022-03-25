# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as carbonrelayng with context %}

carbon-relay-ng_config:
  file.managed:
    - name: {{ carbonrelayng.config.conffile }}
    - source: {{ carbonrelayng.config.conffile_source }}
    - template: jinja
    - mode: 644
    - user: root
    - group: root
    - context:
    {% set settings = carbonrelayng %}
    {% do settings.pop('lookup', None) %}
        settings: {{ settings }}
