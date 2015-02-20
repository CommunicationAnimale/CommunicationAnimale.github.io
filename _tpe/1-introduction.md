---
layout: page
title: Introduction
---
Voici l'introduction.
<!--more-->
Ceci n'est pas dans l'extrait.

{% for post in site.tpe %}
	{% if found %}
		button with next page
	{% endif %}

	{% if post.title == page.title %}
		{{ assign found = 1 }}
		{% unless previous_post}
			button with previous post
		{% endunless %}
	{% endif %}
	
	{{ assign previous_post = post.title }}
{% endfor %}