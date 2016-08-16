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
      
      include ActionView::Helpers::SanitizeHelper
      include ActionView::Helpers::OutputSafetyHelper
      
      def truncate_stripped
        strip_tags(data.to_s)[0..truncation_length]
      end
      
      def to_html
        raw(data.to_s)
      end
      
      def ckeditor_options
        options.fetch(:ckeditor, {})
      end
      
    end
  end
end
