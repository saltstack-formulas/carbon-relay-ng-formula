
{% from "carbon-relay-ng/map.jinja" import carbonrelayng with context %}

carbon-relay-ng_config:
  file.managed:
    - name: {{ carbonrelayng.conffile }}
    - source: {{ carbonrelayng.conffile_source }}
    - template: jinja
    - mode: 644
    - user: root
    - group: root

