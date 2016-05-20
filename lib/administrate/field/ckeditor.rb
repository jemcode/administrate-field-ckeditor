require "administrate/field/text"
require "rails"
require "administrate/engine"
require "ckeditor"

module Administrate
  module Field
    class Ckeditor < Administrate::Field::Text
      VERSION = "0.0.2"

      class Engine < ::Rails::Engine
        Administrate::Engine.add_javascript "administrate-field-ckeditor/application"
      end
    end
  end
end
