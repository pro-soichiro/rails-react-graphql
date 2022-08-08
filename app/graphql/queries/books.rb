module Queries
  class Books < Queries::BaseQuery
    argument :id, ID, required: true

    type [ObjectTypes::Book], null: false

    def resolve(id:)
      ::Book.find(id)
      # ::Book.all.order(:id)
    end
  end
end
