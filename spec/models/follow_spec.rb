require 'spec_helper'

describe Follow do
  before(:each) do
    @valid_attributes = {
      :follower_id => 1,
      :following_id => 1
    }
  end

  it "should create a new instance given valid attributes" do
    Follow.create!(@valid_attributes)
  end
end
