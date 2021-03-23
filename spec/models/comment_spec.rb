require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe '#create' do
    before do
      @comment = FactoryBot.build(:comment)
    end

    it 'textが存在していれば保存できること' do
      expect(@comment).to be_valid
    end

    it 'textが空だと保存できない' do
      @comment.text = nil
      @comment.valid?
      expect(@comment.errors.full_messages).to include("Text can't be blank")
    end

    it 'userが紐付いていないと保存できないこと' do
      @comment.user = nil
      @comment.valid?
      expect(@comment.errors.full_messages).to include('User must exist')
    end

    it 'basket_areaが紐付いていないと保存できないこと' do
      @comment.basket_area = nil
      @comment.valid?
      expect(@comment.errors.full_messages).to include('Basket area must exist')
    end
  end
end
