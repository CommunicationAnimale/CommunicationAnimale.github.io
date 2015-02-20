---
layout: page
title: Introduction
---
Voici l'introduction.
<!--more-->
Ceci n'est pas dans l'extrait.


{% for post in site.tpe %}
	{% if found %}
      <a href="{{ post.url | prepend: site.url }}" class="button" >
        {{ site.theme.str_next }} 
        <i class="fa fa-chevron-right"></i>
      </a>
	{% break %}
	{% endif %}

	{% if post.title == page.title %}
		{% assign found = 1 %}
		{% unless previous_post %}
          <a href="{{ previous_post | prepend: site.url }}" class="button" >
            <i class="fa fa-chevron-left"></i> 
            {{ site.theme.str_prev }}
          </a>
		{% endunless %}
	{% endif %}
	
	{% assign previous_post = post.url %}
{% endfor %}



