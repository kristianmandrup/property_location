class Property
  include Mongoid::Document

  include_concern :location

  field :name
end