module Cols
  extend ActiveSupport::Concern

  module ClassMethods
    def cols(*args)
      reg_str = *args.map(&:to_s).join(')|(')
      regex = /(#{reg_str})/im
      column_names.select{|name| name =~ regex}.sort
    end
  end

  ActiveRecord::Base.send(:include, Cols)
end
