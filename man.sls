man:
  pkg.installed:
    {%- if grains.os_family == 'suse' %}
    - refresh: true
    {% endif %}
    - aggregate: true
    {%- if grains.os_family == 'Suse' or (grains['os'] == 'CentOS' and grains['osmajorrelease']|int <= 6) %}
    - name: man
    {%- else %}
    - name: man-db
    {%- endif %}
