class RobotsController < ApplicationController
  before_action :set_robot, only: %i[show]
  def show
  end

  def new
    @robot = Robot.new;
  end

  private

  def set_robot
    @robot = Robot.find(params[:id])
  end
end
