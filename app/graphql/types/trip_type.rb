Types::TripType = GraphQL::ObjectType.define do

  name 'Trip'

  field :id, !types.ID
  field :travel_reason, !types.String
end
