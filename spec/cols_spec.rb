
require 'spec_helper'

describe "model columns" do

  context "when passing no arguments" do

    it "should give all the column names" do
      expect(User.cols.count).to eq(3)
    end

  end

  context "when passing arguments" do

    it "should give one column" do
      expect(User.cols("name").count).to eq(1)
    end

    fit "should give two column" do
      expect(User.cols("name, id").count).to eq(2)
    end
  end

end
