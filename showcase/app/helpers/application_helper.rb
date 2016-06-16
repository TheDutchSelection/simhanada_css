module ApplicationHelper

  def showcase_example(&block)
    sample = capture(&block).html_safe
    content_tag('div', class: 'showcase-example') do
      content_tag('div', sample, class: 'showcase-example__sample') +
        content_tag('pre', escape_once(sample), class: 'showcase-example__code code')
    end
  end

end
