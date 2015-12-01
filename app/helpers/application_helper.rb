module ApplicationHelper
  def markdown(text)
    render_options = {
      filter_html: true,
      link_attributes: { target: '_blank' },
      no_images: false,
      hard_wrap: true
    }

    markdown_options = {
      no_intra_emphasis: true,
      highlight: true,
      space_after_headers: true,
      disable_indented_code_blocks: false,
      underline: true
    }

    renderer = Redcarpet::Render::HTML.new(render_options)
    Redcarpet::Markdown.new(renderer, markdown_options).render(text).html_safe
  end
end
