# -*- coding: utf-8 -*-
# vim: ft=sls

{#- Get the `tplroot` from `tpldir` #}
{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import mapdata as carbonrelayng with context %}

carbon-relay-ng_service:
  service.running:
    - name: {{ carbonrelayng.config.service }}
    - enable: True
    - watch:
      - file: {{ carbonrelayng.config.conffile }}

