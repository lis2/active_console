module Alias
  extend ActiveSupport::Concern

  module ClassMethods
    def w(args) ; where(args) ; end
    def li(args) ; limit(args) ; end
    def o(args) ; order(args) ; end
    def l ; last ; end
    def f ; first ; end
  end

  ActiveRecord::Base.send(:include, Alias)
end
