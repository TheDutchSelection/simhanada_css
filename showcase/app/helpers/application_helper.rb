module ApplicationHelper

  def showcase(&block)
    content_tag('div', capture(&block).html_safe, class: 'showcase-example')
  end

  def showcase_sample(&block)
    content_tag('div', capture(&block).html_safe, class: 'showcase-example__sample')
  end

  def showcase_code(&block)
    code = capture(&block).html_safe
    content_tag('pre', escape_once(code), class: 'showcase-example__code code')
  end

  def showcase_example(&block)
    sample = capture(&block).html_safe
    content_tag('div', class: 'showcase-example') do
      content_tag('div', sample, class: 'showcase-example__sample') +
        content_tag('pre', escape_once(sample), class: 'showcase-example__code code')
    end
  end

end
