module Types
  class QueryType < Types::BaseObject

    field :posts, [Types::PostType, null: true], null: false
    def posts(**_args)
      Post.all
    end

    field :posts_connection, Types::PostsConnection, null: false, connection: true
    def posts_connection(**_args)
      Post.all
    end
  end
end
