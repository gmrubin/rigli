require 'spec_helper'

describe User do
  context "has an email and password" do
    let (:user) { User.new }

    before(:each) do
      user.email = "email@example.com"
      user.password = ""
    end
  end
end
