# LiquidSpanClassBlock

by Matt Gemmell - [mattgemmell.com](http://mattgemmell.com) - [@mattgemmell](http://twitter.com/mattgemmell)

License: [CC0 Universal (public domain)](https://creativecommons.org/publicdomain/zero/1.0/deed.en)

* * *

A basic [Liquid](http://docs.shopify.com/themes/liquid-documentation/basics) / [Jekyll](http://jekyllrb.com) block tag that generates `span` tags with one or more CSS classes applied. You can also optionally specify a `title` attribute for the `span`.

Features:

- Block-type tag, i.e. `{% class %} … {% endclass %}`

- Generates HTML output that wraps the contents of the block.

- You can apply one or more CSS classes to the resulting span tag.

- You can put other Liquid tags inside the block's contents.

- You can optionally add a `title` attribute to the resulting span tag.

* * *

This plugin takes block tags of the form:

    {% class foo[ bar][ "my title"] %}Text goes here{% endclass %}

And produces output like:

    <span class="foo[ bar]"[ title="my title"]>Text goes here</span>

Simple. Should be useful in all kinds of situations.
