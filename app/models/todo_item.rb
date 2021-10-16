class TodoItem < ApplicationRecord
  #Association
  belongs_to :todo_list
end
