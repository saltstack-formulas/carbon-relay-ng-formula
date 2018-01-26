
{% from "carbon-relay-ng/map.jinja" import carbonrelayng with context %}

carbon-relay-ng_service:
  service.running:
    - name: {{ carbonrelayng.service }}
    - enable: True
    - watch:
      - file: {{ carbonrelayng.conffile }}

