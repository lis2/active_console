module Agrep
  def agrep(pattern)
    regex = Regexp.new pattern
    agrep = self.dup.select { |k, v| k.to_s =~ regex || v.to_s =~ regex }
    agrep.present? ? agrep : self
  end
end

class Hash
  include Agrep
end

module AgrepActiveRecord
  extend ActiveSupport::Concern

  def agrep(pattern)
    self.attributes.agrep(pattern)
  end

  ActiveRecord::Base.send(:include, AgrepActiveRecord)
end

