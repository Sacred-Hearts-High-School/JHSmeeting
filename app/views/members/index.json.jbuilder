json.array!(@members) do |member|
  json.extract! member, :id, :name, :title, :personal_id, :office_phone, :mobile_phone, :address, :email, :school, :person_type, :room_type, :room_partiner, :room_date, :food, :transportation, :car_id, :group
  json.url member_url(member, format: :json)
end
