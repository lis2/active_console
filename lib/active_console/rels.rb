module Rels
 extend ActiveSupport::Concern

 module ClassMethods

   def rels(*args)
     rels =  self.reflect_on_all_associations
     display(rels)
   end


   private
    def display(rels)
      rels.map { |rel| Hash[rel.macro, rel.name].merge(rel.options) }
    end

 end

 ActiveRecord::Base.send(:include, Rels)

end
