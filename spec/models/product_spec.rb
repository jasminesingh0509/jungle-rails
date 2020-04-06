# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    product = Product.new
    category = Category.new

    it 'is not valid without a name' do
      product.price = 10
      product.quantity = 2
      product.category_id = 1
      expect(product).to_not be_valid
    end
    it 'is not valid without a price' do
      product.name = 'jacket'
      product.quantity = 1
      product.category_id = 1
      expect(product).to_not be_valid
    end
    it 'is not valid without quantity' do
      product.name = 'jacket'
      product.price = 10
      product.category_id = 1
      expect(product).to_not be_valid
    end
    it 'is not valid without a category' do
      product.name = 'jacket'
      product.price = 10
      product.quantity = 1
      expect(product).to_not be_valid
    end
  end
end
