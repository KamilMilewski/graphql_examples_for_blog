# frozen_string_literal: true

class PostsEdgeType < GraphQL::Types::Relay::BaseEdge
  node_type(Types::PostType)
end

class Types::PostsConnection < GraphQL::Types::Relay::BaseConnection
  field :total_count, Integer, null: false
  def total_count
    object.nodes.size
  end
  edge_type(PostsEdgeType)
end
