require "administrate/field/text"
require "rails"
require "ckeditor"

module Administrate
  module Field
    class Ckeditor < Administrate::Field::Text
      VERSION = "0.0.1"

      class Engine < ::Rails::Engine
      end
    end
  end
end
