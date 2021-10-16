class TodoItemsController < ApplicationController
    #Call this action 
    before_action :set_todo_list

    def create 
        @todo_item = @todo_list.todo_items.create(todo_item_params)
        redirect_to @todo_list
    end
    
    def destroy 
        @todo_item = @todo_list.todo_items.find(params[:id])
        if @todo_item.destroy
          flash[:success] = "Todo List item was deleted."
        else 
          flash[:error] = "Todo List item could not be deleted."
        end
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
