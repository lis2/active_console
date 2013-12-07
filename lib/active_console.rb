require "active_record"

Dir[File.dirname(__FILE__) + "/active_console/*.rb"].each { |file| require file }

module ActiveConsole
  include Cols
  include Agrep
  include Alias
  include Similar
end
