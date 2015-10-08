module ApplicationHelper
  def markdown(text)
    render = Redcarpet::Render::HTML.new({
      filter_html: true,
      link_attributes: {
          target: '_blank'
      },
      no_images: false
    })

    extensions = {
      no_intra_emphasis: true,
      highlight: true,
      space_after_headers: true,
      disable_indented_code_blocks: false,
      underline: true
    }

    Redcarpet::Markdown.new(renderer, extensions)
  end
end
