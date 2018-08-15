module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false
    field :title, String, null: true
    field :content, String, null: true
    field :published, Boolean, null: true
    field :total_count, Integer, null: false
    def total_count
      object.nodes.size
    end
  end
end
