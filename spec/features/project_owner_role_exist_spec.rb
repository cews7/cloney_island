require 'rails_helper'

describe "a registered user in the create project page" do
  xit "they can create project and gain project owner role" do

    user= create(:user)
    registered_role = Role.create(name: "registered_user")
    user.roles << registered_role

    allow_any_instance_of(ApplicationController).to receive(:current_user).and_return(user)

    visit "/projects/new"
    expect(page).to have_content("Name")
  end
end
