require 'spec_helper'

describe Whisper do
  before(:each) do
    @valid_attributes = {
      :user_id => 1,
      :content => "MyString",
      :geohash => "MyString"
    }
  end

  it "should create a new instance given valid attributes" do
    Whisper.create!(@valid_attributes)
  end
end
