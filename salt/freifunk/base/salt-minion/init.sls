{# FFDD Salt-Minion (masterless) #}
salt-minion:
  pkg.installed:
    - name: salt-minion
  service:
    - dead
    - enable: False

{# Configuration #}
/etc/salt/minion.d/freifunk-masterless.conf:
  file.managed:
    - source:
      - salt://salt-minion/etc/salt/minion.d/freifunk-masterless.tmpl
    - template: jinja
    - user: root
    - group: root
    - mode: 644
