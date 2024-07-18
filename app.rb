require_relative 'controllers/persons'
require_relative 'models/info'
require_relative 'models/menu'

class App
  def call
    menu = Menu.new
    menu.show_options
  end
end

App.new.call
