require 'spec_helper'

describe Rig do
  it { should have_many(:links) }

  before(:each) do
  @attr = {
    name: "test rig",
    description: "This rig is for testing"
  }
  end

  it "should create a new Rig given valid attributes" do
    Rig.create!(@attr)
  end

  it "should require an name" do
    no_name_rig = Rig.new(@attr.merge(:name => ""))
    no_name_rig.should_not be_valid
  end


end
