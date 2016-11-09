---
layout: page
root: .
---

![Building Powerful Community Organizations]({{ page.root }}/assets/img/bpco.jpg)

A study group around Michael Jacoby Brown's *[{{ site.bpco_title }}]({{ site.bpco_url }})*
(available on [Amazon]({{ site.bpco_book }})).

## Testing

{% for ex in site.exercises %}
1.  [{{ ex.title }}]({{ ex.url }}){% endfor %}
