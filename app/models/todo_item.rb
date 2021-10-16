class TodoItem < ApplicationRecord
  #Association
  belongs_to :todo_list

  #method being called in the todo_item partial
  
  def completed?
    !completed_at.blank?
  end
end
