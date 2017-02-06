require "administrate/field/text"
require "rails"
require "administrate/engine"
require "ckeditor"

module Administrate
  module Field
    class Ckeditor < Administrate::Field::Text
      class Engine < ::Rails::Engine
        Administrate::Engine.add_javascript "administrate-field-ckeditor/application"
      end

      include ActionView::Helpers::SanitizeHelper
      include ActionView::Helpers::OutputSafetyHelper
      include ActionView::Helpers::JavaScriptHelper
      include ActionView::Helpers::TagHelper

      def truncate_stripped
        strip_tags(data.to_s)[0..truncation_length]
      end

      def to_html
        raw(data.to_s)
      end

      def ckeditor_options
        options.fetch(:ckeditor, {})
      end
      
      def js_tag(form)
        javascript_tag ::Ckeditor::Utils.js_replace(id_for(form), ckeditor_options)
      end
      
      private
      
      # Copied from ActionView::Helpers::Tags::Base because they're not public methods
      def id_for(form)
        sanitized_object_name = form.object_name.gsub(/\]\[|[^-a-zA-Z0-9:.]/, "_").sub(/_$/, "")
        "#{sanitized_object_name}_#{attribute}"
      end
      
    end
  end
end
