module ApplicationHelper
  class HTML_Highlighter < Redcarpet::Render::HTML
    def block(code, language)
      Pygments.highlight(code, lexer: language)
    end
  end

  def markdown(text)
    render_options = {
      filter_html: true,
      link_attributes: { target: '_blank' },
      no_images: false,
      hard_wrap: true
    }

    markdown_options = {
      autolink: true,
      no_intra_emphasis: true,
      fenced_code_blocks: true,
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true,
      underline: true
    }

    renderer = HTML_Highlighter.new(render_options)
    Redcarpet::Markdown.new(renderer, markdown_options).render(text).html_safe
  end
end
