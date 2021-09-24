require 'rails_helper'

RSpec.describe Prototype, type: :model do
  before do
    @prototype = FactoryBot.build(:prototype)
  end

  describe 'プロトタイプの保存' do
    context 'プロトタイプが投稿できる場合' do
      it 'titleとcatch_copyとconceptとimageが存在していれば保存できる' do
        expect(@prototype).to be_valid
      end
    end
    context 'プロトタイプが投稿できない場合' do
      it 'titleが空では投稿できない' do
        @prototype.title = ''
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include('プロトタイプの名称を入力してください')
      end
      it 'catch_copyが空では投稿できない' do
        @prototype.catch_copy = ''
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include('キャッチコピーを入力してください')
      end
      it 'conceptが空では投稿できない' do
        @prototype.concept = ''
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include('コンセプトを入力してください')
      end
      it 'imageが空では投稿できない' do
        @prototype.image = nil
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include('画像を入力してください')
      end
      it 'ユーザーが紐付いていなければ投稿できない' do
        @prototype.user = nil
        @prototype.valid?
        expect(@prototype.errors.full_messages).to include('Userを入力してください')
      end
    end
  end
end
