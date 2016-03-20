---
title: News
layout: page
permalink: /news
---
# News
<div class="post-list">
  <ul>
    {% for post in site.posts %}
      <li>
        <h3><a href="{{ post.url }}">{{ post.title }}</a></h3>
        {{ post.excerpt }}
      </li>
    {% endfor %}
  </ul>
</div>
