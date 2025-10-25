require 'rails_helper'

RSpec.describe RoomsController, type: :controller do
  describe "GET #index" do
    it "returns a success response" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      room = create(:room)
      get :show, params: { id: room.to_param }
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Room" do
        expect {
          post :create, params: { room: attributes_for(:room) }
        }.to change(Room, :count).by(1)
      end

      it "redirects to the created room" do
        post :create, params: { room: attributes_for(:room) }
        expect(response).to redirect_to(Room.last)
      end
    end

    context "with invalid params" do
      it "does not create a new Room" do
        expect {
          post :create, params: { room: { name: "" } }
        }.to change(Room, :count).by(0)
      end

      it "renders the 'index' template" do
        post :create, params: { room: { name: "" } }
        expect(response).to render_template("index")
      end
    end
  end
end