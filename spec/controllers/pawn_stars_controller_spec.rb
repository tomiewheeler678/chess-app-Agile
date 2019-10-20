require 'rails_helper'

RSpec.describe PawnStarsController, type: :controller do

  describe "pawnStars#index action" do
    it "should show the page" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

end
