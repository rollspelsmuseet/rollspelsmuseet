class Product < ActiveRecord::Base
  validates :name, presence: true

  # Appends a parameterized version of the product's name to the URL
  def to_param
    "#{id}-#{name.parameterize}"
  end
end
