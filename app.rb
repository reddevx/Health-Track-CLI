require_relative 'controllers/persons_controller'
require_relative 'models/person'
require_relative 'models/menu'

class App
  def call
    menu = Menu.new
    menu.show_options
  end
end

App.new.call
