Types::MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :allLinks, !types[Types::LinkType] do
    resolve -> (obj, args, ctx) { Link.all }
  end

  field :createLink, function: Resolvers::CreateLink.new
  field :createVote, function: Resolvers::CreateVote.new
  field :createUser, function: Resolvers::CreateUser.new
  field :signinUser, function: Resolvers::SignInUser.new
end
