
{% from "carbon-relay-ng/map.jinja" import carbonrelayng with context %}

{% if grains.get('os_family') == 'Debian' %}

carbon-relay-ng_deps:
  pkg.installed:
    - pkgs: {{ carbonrelayng.deps }}

carbon-relay-ng_repo:
  pkgrepo.managed:
    - name: 'deb {{ carbonrelayng.pkgrepo }} {{ salt['grains.get']('oscodename') }} main'
    - key_url: 'https://packagecloud.io/raintank/raintank/gpgkey'
    - require:
      - pkg: carbon-relay-ng_deps

carbon-relay-ng_pkg:
  pkg.installed:
    - name: {{ carbonrelayng.pkg }}

{% endif %}
