class TodoList < ApplicationRecord
    #Association
    has_many :todo_items
end
