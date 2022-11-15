module Resolvers
  class PostResolver < Resolvers::BaseResolver
    description 'Find a post by ID'
    type Types::PostType, null: false

    argument :id, ID

    def resolve(id:)
      Post.find(id)
    end
  end
end
