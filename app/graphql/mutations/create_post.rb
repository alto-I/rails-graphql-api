module Mutations
  class CreatePost < BaseMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false

    # TODO: define arguments
    # argument :name, String, required: true

    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end

    field :post, Types::PostType, null: false

    argument :body, String, required: true
    argument :title, String, required: true

    def resolve(**params)
      post = Post.create!(params)
      { post: post }
    end
  end
end
