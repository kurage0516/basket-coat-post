require 'rails_helper'

RSpec.describe BasketArea, type: :model do
  describe '#create' do
    before do
      @basket_area = FactoryBot.build(:basket_area)
    end

    it 'image、coat_name、street_address,price、timeが存在すれば保存できること' do
      expect(@basket_area).to be_valid
    end

    it 'urlが空でも保存ができること' do
      @basket_area.url = nil
      expect(@basket_area).to be_valid
    end

    it 'imageが空では保存できないこと' do
      @basket_area.image = nil
      @basket_area.valid?
      expect(@basket_area.errors.full_messages).to include("Image can't be blank")
    end

    it 'coat_nameが空では保存できないこと' do
      @basket_area.coat_name = nil
      @basket_area.valid?
      expect(@basket_area.errors.full_messages).to include("Coat name can't be blank")
    end

    it 'street_addressが空では保存できないこと' do
      @basket_area.street_address = nil
      @basket_area.valid?
      expect(@basket_area.errors.full_messages).to include("Street address can't be blank")
    end

    it 'priceが空では保存できないこと' do
      @basket_area.price = nil
      @basket_area.valid?
      expect(@basket_area.errors.full_messages).to include("Price can't be blank")
    end

    it 'timeが空では保存できないこと' do
      @basket_area.time = nil
      @basket_area.valid?
      expect(@basket_area.errors.full_messages).to include("Time can't be blank")
    end
  end
end
