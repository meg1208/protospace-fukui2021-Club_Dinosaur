require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'email、encrypted_password、password_confirmation、name、profile、occupation、positionが存在すれば登録できる'
        expect(@user).to be_valid
      end
      it 'passwordとpassword_confirmationが６文字以上なら登録できる'
        @user.password = '000000'
        expect(@user).to be_valid
      end
    end
    context '新規登録できないとき' do  
      it 'emailが空だと登録できない'
        
      end
      it 'emailが重複していると登録できない'
      end
      it 'encrypted_passwordが空だと登録できない'
      end
      it 'encrypted_passwordは5文字以下だと登録できない'
      end
      it 'password_confirmationが空だと登録できない'
      end
      it 'encrypted_passwordとpassword_confirmationが一致していないと登録できない'
      end
      it 'nameが空だと登録できない'
      end
      it 'profileが空だと登録できない'
      end
      it 'occupationが空だと登録できない'
      end
      it 'positionが空だと登録できない'
      end
    end
  end
end
