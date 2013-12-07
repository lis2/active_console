require 'spec_helper'

describe "similar" do
  let(:user) { FactoryGirl.create(:user) }
  let!(:user2) { FactoryGirl.create(:user) }

  it "return similar objects" do
    puts user.inspect
    expect(user.similar(:email, :name).size).to eq(2)
  end
end
