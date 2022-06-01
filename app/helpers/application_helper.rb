require 'redcarpet'
require 'redcarpet/render_strip'

module ApplicationHelper
    # def markdown(text)
    #     options = {   
    #         :autolink => true, 
    #         :space_after_headers => true,
    #         :fenced_code_blocks => true,
    #         :no_intra_emphasis => true,
    #         :hard_wrap => true,
    #         :strikethrough =>true
    #       }
    #     markdown = Redcarpet::Markdown.new(Redcarpet::Render::StripDown)
    #     markdown.render(text)
    # end
      
    # class HTMLwithCodeRay < Redcarpet::Render::HTML
    #     def block_code(code, language)
    #       CodeRay.scan(code, language).div(:tab_width=>2)
    #     end
    # end
    def markdown(text)
        renderer = Redcarpet::Render::HTML.new(no_links: true, hard_wrap: true)
        markdown = Redcarpet::Markdown.new(renderer, 
                                           fenced_code_blocks: true,
                                           autolink: true,
                                           tables: true)
        markdown.render(text).html_safe
    end
end
