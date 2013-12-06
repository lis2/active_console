require 'spec_helper'

describe "agrep" do
  context "hash" do
    let(:hash) { { a: "b", b: "a", c: "c" } }

    it "filter hash when value exists" do
      expect(hash.agrep("a")).to eq({ a: "b", b: "a"})
    end

    it "all hash when value not exists" do
      expect(hash.agrep("d")).to eq(hash)
    end
  end

  context "active record" do
    let(:user) { FactoryGirl.build(:user) }

    it "filter user attributes" do
      expect(user.agrep("oh")).to eq( {"name"=>"John"} )
    end

    it "filter user columns" do
      expect(user.agrep("mail")).to eq( {"email" => "test@mailinator.com"} )
    end
  end
end
