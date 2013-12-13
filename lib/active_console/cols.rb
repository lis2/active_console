module Cols
  extend ActiveSupport::Concern

  module ClassMethods
    def cols(list = "")

      matching_cols = []
      searching_cols = list.split(",")

      columns.each do |col|
        if searching_cols.count > 0
          searching_cols.select do |c|
            matching_cols << Hash[col.name, col.sql_type] if c.strip.match(/^#{col.name}/)
          end
        else
          matching_cols << Hash[col.name, col.sql_type]
        end
      end
      matching_cols
    end
  end

  ActiveRecord::Base.send(:include, Cols)
end
