{% from "openldap/map.jinja" import openldap with context %}

openldap_service:
 service.{{ openldap.service.state }}:
   - name: {{ openldap.service.name }}
   - enable: {{ openldap.service.enable }}
