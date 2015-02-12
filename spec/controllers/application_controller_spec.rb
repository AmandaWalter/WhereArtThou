require 'rails_helper'

RSpec.describe ApplicationController, :type => :controller do
  describe 'After sign in path for user' do
    before :each do
      @user333 = FactoryGirl.create(:user333)
      @user222 = FactoryGirl.create(:user222)
      @user444 = FactoryGirl.create(:user444)
      @artist = FactoryGirl.create(:artist503)
      @venue = FactoryGirl.create(:venue604)
    
    end
    context 'user is an artist' do
      it 'finds the correct artist' do
        expect(@artist.user_id).to eq(@user333.id)
      end
    end

    context 'user is a venue' do
      it 'finds the correct venue' do
        expect(@venue.user_id).to eq(@user444.id)
      end
    end
  end
end