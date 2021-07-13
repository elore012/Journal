class TasksController < ApplicationController
    def create
        @categories = Category.find(params[:category_id])
        @tasks = @categories.tasks.create(category_params)
        redirect_to category_tasks_path
    end

    def category_params
        params.require(:task).permit(:taskname, :body , :time)
    end

    def new
        @categories = Category.find(params[:category_id])
    end

    def show
       @categories = Category.find(params[:category_id])
       @tasks = Task.find(params[:id])
    end


    def destroy
    @categories = Category.find(params[:category_id])
    @tasks = @categories.tasks.find(params[:id])
    @tasks.destroy
    redirect_to category_path(@categories)

    end

    def index
        @tasks = Task.all
    end

    def edit
    end

    
end
