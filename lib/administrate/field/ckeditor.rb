require "administrate/field/text"
require "rails"
require "administrate/engine"
require "ckeditor"

module Administrate
  module Field
    class Ckeditor < Administrate::Field::Text
      class Engine < ::Rails::Engine
        Administrate::Engine.add_javascript "administrate-field-ckeditor/application"
        Administrate::Engine.add_stylesheet "administrate-field-ckeditor/application"
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

module Ckeditor
  module Utils
    class << self
      alias_method :old_js_init_ckeditor, :js_init_ckeditor

      def js_init_ckeditor(dom_id, replace)
        %(document.addEventListener("DOMContentLoaded", function(event) {
          #{old_js_init_ckeditor(dom_id, replace)}
        });)
      end
    end
  end
end
