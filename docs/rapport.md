---
layout: default
order: 1
---

{% assign pages = site.pages | sort: "order" %}

{% for page in pages %}
  {% if page.url != "/feed.xml" and  page.url != "/" and page.url != "/rapport.html" and page.url != "/assets/css/style.css" and page.url != "/presentation.html"  and page.url != "/feature/processus-apprentissage.html" and page.url != "/111/1.processus-d%C3%A9veloppement/processus-d%C3%A9veloppement.html
" and page.url != "/111/2.autoformation/autoformation.html" and page.url != "/111/3.liste-des-t%C3%A2ches/2.Liste%20des%20t%C3%A2ches.html" and page.url != "/111/3.liste-des-t%C3%A2ches/exemple.readme.html" and page.url != "/111/3.liste-des-t%C3%A2ches/Gestion%20des%20t%C3%A2ches.html" and page.url != "/111/3.liste-des-t%C3%A2ches/r%C3%A9alisation-t%C3%A2che.html" and page.url != "/111/4.d%C3%A9p%C3%B4ts/liste-d%C3%A9p%C3%B4ts.html " and page.url != "/111/5.validation/Validation%20App.html" and page.url != "/111/5.validation/Validation%20de%20Test.html " and page.url != "/111/5.validation/Validation-analyse.html" and page.url != "/111/5.validation/validation-conception.html" and page.url != "/111/5.validation/validation-maquetteage.html " and page.url != "/111/5.validation/validation-prototype.html" %}

{{ page.content | markdownify }}

  {% endif %}

{% endfor %}

 