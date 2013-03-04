class Property
  module Location
    extend ActiveSupport::Concern

    included do
      include_concern :geo_locatable, from: :on_the_map
    end

    def location= location
      geo_result = ::Geocoder.search(location).first

      geo_address_fields.each do |name|
        setter = "#{name}="
        geo_value = geo_result.send(name)
        send(setter, geo_value) if geo_value && self.respond_to?(setter)
      end
    end

    def configure_location
      self.address  = Address.new unless self.address
    end

    protected

    def geo_address_fields
      Address.geo_address_fields
    end

    def full_address_fields
      address_fields + position_fields
    end

    def position_fields
      %w{latitide longitude}
    end
  end
end

