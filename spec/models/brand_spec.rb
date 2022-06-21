require 'rails_helper'

RSpec.describe Brand, type: :model do
  context 'validation tests' do
    it 'brand name presence' do
      brand = Brand.new().save
      expect(brand).to eq(false)
    end

    it 'save successfully' do
      brand = Brand.new(brand: "brand").save
        expect(brand).to eq(true)
    end

  end

  context 'scope tests' do
    before (:each) do
      brand1 = create(:brand)
      brand2 = create(:brand)
    end

    it 'should return brands' do
      expect(Brand.created_brands.size).to eq(2)
    end

  end
end
