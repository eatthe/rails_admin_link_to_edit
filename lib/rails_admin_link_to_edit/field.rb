require 'builder'
module RailsAdmin
  module Config
    module Fields
      module Types
        class LinkToEdit < RailsAdmin::Config::Fields::Base

          RailsAdmin::Config::Fields::Types::register(self)
          include RailsAdmin::Engine.routes.url_helpers

          register_instance_option :pretty_value do
            formatted_value = self.value.class.name == "Time" ? self.value.strftime("%D %r") : self.value
            str = "<span class='binding-id'>#{bindings[:object].id}</span>"
            str << "<a class='show-link' href='/admin/#{@abstract_model.to_s.underscore}/#{bindings[:object].id}'>"
            str << "<i class='icon-info-sign'></i>View"
            str << "</a>"
            if bindings[:view].authorized?(:edit, @abstract_model)
              str << "<a class='edit-link' href='/admin/#{@abstract_model.to_s.underscore}/#{bindings[:object].id}/edit'>"
              str << "<i class='icon-edit'></i>Edit"
              str << "</a>"
            end
            str.html_safe
           end

        end
      end
    end
  end
end