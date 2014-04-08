module ApplicationHelper
	def render_sans_linebreaks(some_text)
		some_text.gsub(/\n/, "<br/>").html_safe
	end
end
