module FormHelper
  def stacked_form_for(object, options = {}, &block)
    options[:builder] = StackedFormBuilder
    form_for(object, options, &block)
  end
end
