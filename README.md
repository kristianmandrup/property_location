# Property Location

Add Location to property via [on_the_map](https://github.com/kristianmandrup/on_the_map) gem.

See `on_the_map` gem for more detailed usage instructions ;)

## Models

Concerns:

* location

Makes the Property *geo_locatable* and *mappable*

### Geolocatable

* includes *addressable* and *positionable* concerns
* performs geocoding to calculate new position after an address is created or updated
* adds `latitude` and `longitude` to model

*Addressable*

* embeds an `address` on the model
* adds delegate methods to all embedded address fields (setters/getters)
* adds `full_address` method that returns full adress from concatenation of all fields

Address fields: `city, state, state_code, province, province_code, postal_code, country, country_code`

*Positionable*

* includes `Mongoid::Geospatial` into the model to make GeoSpatial methods available
* Adds geo_field `position` (macro from Mongoid GeoSpatial)
* adds spatial indexing for position field
* positon field is indexed and used in geo-searches (fx find points near a point)

### Mappable

* includes `Gmaps4rails::ActsAsGmappable`
* adds field `normalized_address` to store full address calculated and returned by Google Maps geo-coding
* adds method `gmaps4rails_address` which returns adress used in gmaps geo-coding (if enabled)
* includes `geo_locatable` and `positionable` concerns.



## Controllers

Pending...

## Views

Pending...

## Copyright

See LICENSE file