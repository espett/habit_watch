class HabitsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @habits = Habit.all
  end

  def show
    @habit = Habit.find(params[:id])
    # count = Count.create!(habit_id: @habit.id)
    # redirect_to habits_url
  end

  def new
    @habit = Habit.new
  end

  def edit
    @habit = Habit.find(params[:id])
  end

  def create
    @habit = Habit.new(params[:habit])

    if @habit.save
      redirect_to habits_path, notice: 'Habit added successfully.'
    else
      render action: "new"
    end

  end

  def update
    @habit = Habit.find(params[:id])

    if @habit.update_attributes(params[:habit])
      redirect_to habits_path, notice: 'Habit updated successfully.'
    else
      render action: "edit"
    end

  end

  def destroy
    @habit = Habit.find(params[:id])
    @habit.destroy
    redirect_to habits_url
  end

  def add_count
    @habit = Habit.find(params[:id])
    count = Count.create!(habit_id: @habit.id)
    redirect_to :back, notice: 'Activity recorded.'
  end

end
