class TrainersController < ApplicationController
  before_action :set_trainer, only: %i[show]
  def index
    @trainers = Trainer.all;
  end

  def show
    @robots = Robot.all;
  end

  private

  def set_trainer
    @trainer = Trainer.find(params[:id])
  end
end
