require 'rails_helper'

RSpec.describe Teacher::LessonsController, :type => :controller do

  describe "GET inew" do
    it "returns http success" do
      get :inew
      expect(response).to be_success
    end
  end

end
