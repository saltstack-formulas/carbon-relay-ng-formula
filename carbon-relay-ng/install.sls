
{% from "carbon-relay-ng/map.jinja" import carbonrelayng with context %}

carbon-relay-ng_deps:
  pkg.installed:
    - pkgs: {{ carbonrelayng.deps }}

{% if carbonrelayng.pkgrepo %}
carbon-relay-ng_repo:
  pkgrepo.managed:
    - name: 'deb {{ carbonrelayng.pkgrepo }} {{ salt['grains.get']('oscodename') }} main'
    - key_url: {{ carbonrelayng.pkgrepo_key }}
    - require:
      - pkg: carbon-relay-ng_deps
{% endif %}

carbon-relay-ng_pkg:
  pkg.installed:
    - name: {{ carbonrelayng.pkg }}
    - version: {{ carbonrelayng.pkg_version }}
    {% if carbonrelayng.pkgrepo %}
    - require:
      - pkgrepo: carbon-relay-ng_repo
    {% endif %}

carbon-relay-ng_service-dir:
  file.directory:
    - name: {{ carbonrelayng.service_dir }}
    - user: {{ carbonrelayng.user }}
    - group: {{ carbonrelayng.group }}

