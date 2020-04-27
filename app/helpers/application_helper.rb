module ApplicationHelper

  def markdown(text)
    render_options = {
      filter_html: false,
      hard_wrap: true
    }
    # renderer = Redcarpet::Render::HTML.new(render_options)
    renderer = CustomMarkdownRenderer.new(render_options)

    extensions = {
      autolink: true,
      fenced_code_blocks: true,
      lax_spacing: true,
      no_intra_emphasis: true,
      strikethrough: true,
      superscript: true,
      tables: true
    }

    Redcarpet::Markdown.new(renderer, extensions).render(text).html_safe
  end

  def background_color_class
      controller_name == "lines" ? "bg-success" : "bg-primary"
  end

  def add_level_display
    (controller_name == "movies" && @search_category == @default_categories) ? true : false
  end
  
end
