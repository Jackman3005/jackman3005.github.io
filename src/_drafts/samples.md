
# Include icons in links
You can find the source code for the Jekyll Material Bliss Theme at:
{% include icon-github.html username="InsidiousMind" %} /
[material-bliss](https://github.com/InsidiousMind/material-bliss-jekyll-theme)

# code blocks with highlighting
[jekyll docs on highlighting](https://jekyllrb.com/docs/templates/#code-snippet-highlighting)

{% highlight zsh %}
demo_mod1_generator() {
  local mod="$1" ice="$2"

  \# Content, no hyper-links
  reply=( "Hello World from ${ZUI[YELLOW]}ZUI${ZUI[COLOR_END]}! Module $mod, instance $ice." )

  \# Non-selectable lines   Hops to jump with [ and ]   Local anchors
  reply2=( )               reply3=( 1 )                reply4=( )
}
{% endhighlight %}


# code blocks with line numbers
{% highlight python linenos %}
\#!/usr/bin/python3

def something:
  print("Hello World!")

something

{% endhighlight %}
