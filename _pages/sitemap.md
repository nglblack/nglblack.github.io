---
layout: archive
title: "Sitemap"
permalink: /sitemap/
author_profile: true
---

{% include base_path %}

A list of all the posts and pages found on the site. For robots, an [XML version]({{ base_path }}/sitemap.xml) is available for digesting.

<h2>Pages</h2>
{% for page in site.pages %}
  {% include archive-single.html %}
{% endfor %}

<h2>Posts</h2>
{% for post in site.posts %}
  {% include archive-single.html %}
{% endfor %}

{% capture written_label %}'None'{% endcapture %}

{% for collection in site.collections %}
  {% unless collection.output == false or collection.label == "posts" or collection.label == "talks" or collection.label == "publications" or collection.label == "teaching" %}
    {% capture label %}{{ collection.label }}{% endcapture %}
    {% if label != written_label %}
      <h2>{{ label }}</h2>
      {% capture written_label %}{{ label }}{% endcapture %}
    {% endif %}
    {% for post in collection.docs %}
      {% include archive-single.html %}
    {% endfor %}
  {% endunless %}
{% endfor %}
