module Cols

  extend ActiveSupport::Concern

  module ClassMethods

    def cols(name = nil)
      arr = []
      if name
        arr = columns.collect { |c| c unless (/#{name}/i =~ c.name).nil? }
      else
        arr = columns
      end
      ap arr.compact.map { |e| e.name }.try(:sort)
    end
  end

  module InstanceMethods

  end

  ActiveRecord::Base.send(:include, Cols)

end
