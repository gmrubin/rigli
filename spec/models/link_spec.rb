require 'spec_helper'

describe Link do
  it { should belong_to(:rig) }

  before(:each) do
  @attr = {
    short_url: "a2435d",
    target: "http://www.google.com",
    count: 0,
    note: "This link is great for testing"
  }
  end

  it "should create a new link given valid attributes" do
    Link.create!(@attr)
  end
end
