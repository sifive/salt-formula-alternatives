# set alternatives for things like choice of editor 

{% for name, args in salt['pillar.get']('alternatives', {}).items() %}

{% if args.disable|default(False) %}

alternatives_delete_{{name}}:
  alternatives.remove:
    - name: {{name}}

{% else %}
alternatives_create_{{name}}:
  alternatives.install:
    - name: {{name}}
    - link: {{args.link}}
    - path: {{args.path}}
    - priority: {{args.priority}}
{% endif %}

{% endfor %}
