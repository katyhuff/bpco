---
layout: page
root: .
---

<h2>Exercises</h2>
<ol>
  {% for ex in site.exercises %}<li><a href="{{ ex.permalink | absolute_url }}">{{ex.title}}</a></li>{% endfor %}
</ol>
