module Cols
  extend ActiveSupport::Concern

  module ClassMethods
    def cols(list = "")

      matching_cols = ActiveConsole::ActiveConsoleArray.new
      searching_cols = list.split(",")

      columns.each do |col|
        if searching_cols.count > 0
          searching_cols.select do |c|
            matching_cols << ActiveConsole::ActiveConsoleHash[col.name, col.sql_type] if col.name.match(/^#{c.strip}/)
          end
        else
          matching_cols << ActiveConsole::ActiveConsoleHash[col.name, col.sql_type]
        end
      end
      matching_cols
    end
  end

  ActiveRecord::Base.send(:include, Cols)
end
