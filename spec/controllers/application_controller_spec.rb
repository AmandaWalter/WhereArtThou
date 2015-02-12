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
        expect(@user333.artist_id).to eq()
      end
      it 'redirects to the correct artist path' do
        expect(response).to redirect_to artist_path(@artist)
      end
    end
    context 'user is a venue' do
      it 'finds the correct artist' do
        expect (@user444.id).to eq(@venue.user_id)
      end
      it 'redirects to the correct venue path' do
        expect(response).to redirect_to venue_path(@venue)
      end
    end
    context 'user is a user' do
      it 'redirects to correct user path' do
      expect(response).to redirect_to user_path(@user222)
    end
    end
  end
end