require 'json'

class ImportEventsJob < ApplicationJob
  def perform
    file = File.read('data/journees-europeennes-du-patrimoine-2024.json')
    data = JSON.parse(file)

    data.map do |hash|
      location = Location.find_or_initialize_by(uid: hash["location_uid"])
      location.name = hash["location_name"]
      location.address = hash["location_address"]
      location.postalcode = hash["location_postalcode"]
      location.city = hash["location_city"]
      location.region = hash["location_region"]
      location.department = hash["location_department"]
      location.description = hash["location_description_fr"]
      location.access = hash["location_access_fr"]

      location.save

      event = Event.find_or_initialize_by(uid: hash["uid"])
      event.title = hash["title_fr"]
      event.long_description = hash["longdescription_fr"]
      event.conditions = hash["conditions_fr"]
      event.daterange = hash["daterange_fr"]
      event.firstdate_begin = hash["firstdate_begin"]
      event.firstdate_end = hash["firstdate_end"]
      event.lastdate_begin = hash["lastdate_begin"]
      event.lastdate_end = hash["lastdate_end"]
      event.location_id = location.id
      event.year = 2024

      event.save
    end
  end
end