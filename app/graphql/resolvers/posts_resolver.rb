module Resolvers
  class PostsResolver < Resolvers::BaseResolver
    description 'All Post'
    type [Types::PostType], null: false

    def resolve
      Post.all
    end
  end
end
