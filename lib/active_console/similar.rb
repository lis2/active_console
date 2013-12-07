module Similar
  extend ActiveSupport::Concern

  def similar(*columns)
    attributes = {}
    columns.each { |c| attributes[c] = self.send(c) }
    self.class.where(attributes)
  end

  ActiveRecord::Base.send(:include, Similar)
end

