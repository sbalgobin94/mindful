class GoalsController < ApplicationController
    def index
        @goals = @current_user.goals
    end

    def new
        @goal = Goal.new
    end

    def create
        goal_param = params.require(:goal).permit(:content)
        @goal = @current_user.goals.create(goal_param)
        redirect_to goals_path
    end

    def show
        @goal = Goal.find(params[:id])
    end

    def destroy
        @goal = Goal.find(params[:id])
        @goal.destroy
        redirect_to goals_path
    end

    def edit
        @goal = Goal.find(params[:id])
    end

    def update
        @goal = Goal.find(params[:id])
        goal_param = params.require(:goal).permit(:goal_status)
        @goal.update(goal_param)
        redirect_to goals_path
    end

end
