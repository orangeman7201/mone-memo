require 'rails_helper'

describe "Home", type: :request do
  describe 'GET root' do
    let(:user) { create(:user) }

    context 'ログインしていないとき' do
      it 'アクセスできないこと' do
        get root_path
        expect(response).to redirect_to(new_user_session_path)
      end
    end

    context 'ログインしているとき' do
      before do
        sign_in user
      end
      it 'アクセスできること' do
        get root_path
        expect(response).to have_http_status(200)
      end
    end
  end
end