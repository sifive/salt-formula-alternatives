# set alternatives for things like choice of editor 

{% for section, args in salt['pillar.get']('alternatives', {}).items() %}
{% set name = args.get('name', section) %}
{% if args.disable|default(False) %}

alternatives_delete_{{section}}:
  alternatives.remove:
    - name: {{name}}

{% else %}

alternatives_create_{{section}}:
  alternatives.install:
    - name: {{name}}
    - link: {{args.link}}
    - path: {{args.path}}
    - priority: {{args.priority}}

{% endif %}

{% endfor %}
