require 'rails_helper'

describe Client, type: 'model' do
  it "validates presence of name and phone" do
    build(:client, phone: nil).should_not be_valid
    build(:client, name: nil).should_not be_valid
  end

  it "validates uniq of phone number" do
    create(:client, phone: "123456789")
    build(:client, phone: "123456789").should_not be_valid
  end
end