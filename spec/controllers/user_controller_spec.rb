require 'rails_helper'

RSpec.describe UsersController, type: :controller do
    render_views

    describe "GET /users" do
        it "shows all users" do
            users = create_list(:user, 3)

            get :index

            users.each do |user|
                expect(response.body).to include user.name
            end
        end
    end

    describe "POST /users" do
        it "create a user given valid params" do
            map = attributes_for :user
            post :create, params: {user: map}

            expect(response.status).to eq 302
        end

        it "does not create a user with invalid params" do
            post :create, params: {user: {name: ""}}

            expect(response.status).to eq 406
        end
    end
end
