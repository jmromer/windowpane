# frozen_string_literal: true

require "rails_helper"

RSpec.describe UsersController, type: :controller do

  describe "GET #show" do
    it "returns a success response" do
      user = User.create(name: "user", email: "user@example.com")
      get :show, params: { id: user.id }
      expect(response).to be_ok
    end
  end

end
