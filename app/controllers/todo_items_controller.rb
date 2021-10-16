class TodoItemsController < ApplicationController
    #Call this acction 
    before_action :set_todo_list

    def create 
        @todo_item = @todo_list.todo_items.create(todo_item_params)
        redirect_to @todo_list
    end

    #Methods not accessible by the routes
    private

    def set_todo_list
        @todo_list = TodoList.find(params[:todo_list_id])
    end

    #User can only set these attributes
    def todo_item_params
        params[:todo_item].permit(:content)
    end
end
