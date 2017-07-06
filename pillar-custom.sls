# vim: ft=yaml
# Custom Pillar Data for openldap

openldap:
  enabled: true
  extras_install: true
  service:
    name: slapd
    state: running
    enable: true
