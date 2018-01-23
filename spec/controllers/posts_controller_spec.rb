require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  describe 'GET #index' do

    it 'returns all posts' do
      @posts = (1..5).collect { create(:post) }
      get :index
      expect(assigns[:posts].size).to eql(5)
    end

  end


end
