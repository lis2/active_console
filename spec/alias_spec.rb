require 'spec_helper'

describe "Alias" do
  subject { User }
  it { subject.respond_to?(:w).should be_true }
  it { subject.respond_to?(:l).should be_true }
  it { subject.respond_to?(:f).should be_true }
  it { subject.respond_to?(:o).should be_true }
  it { subject.respond_to?(:li).should be_true }
end
