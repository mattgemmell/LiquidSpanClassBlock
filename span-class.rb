# {% class %}
# by Matt Gemmell ~ mattgemmell.com ~ @mattgemmell
# 
# Generate <span> tags styled with one or more specified CSS class(es).
#
# A useful simple example of using Jekyll tags to generate
# some HTML output with custom CSS classes applied.
#
# To install, copy this file into your Jekyll/Octopress plugins folder.
# 
# To use: {% class foo[ bar][ "my title"] %}Text goes here{% endclass %}
# 
# Will produce:
# 
# <span class="foo[ bar]"[ title="my title"]>Text goes here</span>

class SpanClass < Liquid::Block
	ClassesRegexp = /([^"\s]+(\s+[^"\s]+){0,})/i
	TitleRegexp = /"([^"]+)"/i
	
	def initialize(tag, text, tokens)
		super
		@the_classes = nil
		@the_title = nil
  		if text =~ ClassesRegexp
			@the_classes = text.match(ClassesRegexp).to_s.strip
		end
		if text =~ TitleRegexp
			@the_title = text.match(TitleRegexp)[1].strip
		end
	end
	
	def render(context)
		contents = super.strip
		if @the_classes
			title_attr = ""
			if @the_title
				title_attr = " title=\"#{@the_title}\""
			end
			"<span class=\"#{@the_classes}\"#{title_attr}>#{contents}</span>"
		else
			"#{contents}"
		end			
	end
end

Liquid::Template.register_tag('class', SpanClass)
