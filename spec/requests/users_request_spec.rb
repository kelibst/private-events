require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'authentication tests' do
    it 'returns http success for signup page' do
      get '/signup'
      expect(response).to have_http_status(:success)
    end
  end
end
