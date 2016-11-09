---
layout: page
root: .
---

## Exercises

{% for permalink in site.order %}
  {% for exercise in site.exercises %}
    {% if exercise.permalink == permalink %}
1.  [{{ exercise.title }}]({{ exercise.url }})
    {% endif %}
  {% endfor %}
{% endfor %}
