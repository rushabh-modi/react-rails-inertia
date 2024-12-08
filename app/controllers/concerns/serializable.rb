require 'active_support/concern'

module Serializable
  extend ActiveSupport::Concern

  private

  def serialize(resource, serializer_class)
    if resource.respond_to?(:length)
      Panko::ArraySerializer.new(resource, each_serializer: serializer_class).to_a
    else
      serializer_class.new.serialize(resource)
    end
  end
end