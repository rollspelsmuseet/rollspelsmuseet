class StackedFormBuilder < ActionView::Helpers::FormBuilder
  delegate :content_tag, :tag, to: :@template

  def label(attribute, *args)
    options = args.extract_options!
    args << options.merge(class: 'block')
    super
  end

  def text_field(attribute, *args)
    options = args.extract_options!
    args << options.merge(class: 'full-width')
    super
  end

  def text_area(attribute, *args)
    options = args.extract_options!
    args << options.reverse_merge(class: 'full-width')
    super
  end

  # Render inline capitalized joined errors for a model attribute
  def error_messages_for(attribute)
    if object.errors.present?
      content_tag :div, object.errors.full_messages_for(attribute).join(', ').capitalize
    end
  end
end
