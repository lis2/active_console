
require 'spec_helper'

describe "model columns" do

  context "when passing no arguments" do

    it "should give all the column names" do
      expect(User.cols.count).to eq(3)
    end

    it "should return an array" do
      expect(User.cols.class).to eq(ActiveConsole::ActiveConsoleArray)
    end

    it "should be a Hash Array" do
      expect(User.cols.first.class).to eq(ActiveConsole::ActiveConsoleHash)
    end

  end

  context "when passing arguments" do

    it "should give one column" do
      expect(User.cols("name").count).to eq(1)
    end

    it "should give one column" do
      expect(User.cols("nam").count).to eq(1)
    end

    it "should give two columns" do
      expect(User.cols("nam, em").count).to eq(2)
    end

    it "should give two column" do
      expect(User.cols("name, id").count).to eq(2)
    end
  end

end
