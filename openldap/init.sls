# vim: ft=sls
# Init openldap
{%- from "openldap/map.jinja" import openldap with context %}
{# Below is an example of having a toggle for the state #}

{% if openldap.enabled %}
include:
  - openldap.install
  - openldap.config
  - openldap.service
{% else %}
'openldap-formula disabled':
  test.succeed_without_changes
{% endif %}

