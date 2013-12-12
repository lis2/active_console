require 'spec_helper'

load File.dirname(__FILE__) + "/support/ar_relations.rb"

describe "Rels"  do

  shared_examples "show relations" do |klass, message|
    subject { klass }

    it "should show the relationship" do
      expect(subject.rels).to eq(message)
    end
  end


  context "when there is no relation" do
    it_behaves_like "show relations", NoRelation, []
  end

  context "when :has_many" do
    it_behaves_like "show relations", User, [{:has_many => :roles}]
  end

  context "when :belongs_to" do
    it_behaves_like "show relations", Role, [{:belongs_to => :user}]
  end

  context "when :has_one" do
    it_behaves_like "show relations", Company, [{:has_one => :user}]
  end

  context "when has_and_belongs_to" do
    it_behaves_like "show relations", Physician, [{:has_many=>:appointments}, {:has_many=>:patients, :through=>:appointments}]
  end
end
