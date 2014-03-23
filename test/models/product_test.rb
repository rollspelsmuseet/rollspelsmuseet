require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test 'should not save without title' do
    product = Product.new
    assert !product.save, 'Saved the article without a name'
  end

  test '#to_param appends name to URL' do
    product = products(:mutant)
    assert_equal "#{product.id}-mutant", product.to_param
  end

  test '#to_param parameterizes name' do
    product = products(:dod6)
    assert_match "drakar-och-demoner-6", product.to_param
  end
end
