# vim: ft=sls
# How to install openldap
{%- from "openldap/map.jinja" import openldap with context %}

openldap_pkg:
  pkg.installed:
    - name: {{ openldap.pkg }}

{% if openldap.extras_install %}
openldap_extra_pkgs:
  pkg.installed:
    - pkgs: {{ openldap.extra_pkgs }}
{% endif %}
