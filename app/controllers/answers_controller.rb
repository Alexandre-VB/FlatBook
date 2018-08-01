class AnswersController < ApplicationController

  def create
    @topic = Topic.find(params[:topic_id])
    @answer = Answer.new(answer_params)
    @answer.topic = @topic
    @answer.user = current_user
    if @answer.save
      redirect_to topic_path(@topic)
    else
      render :new
    end
  end

  def edit
    # @topic = Topic.find(params[:topic_id])
    @answer = Answer.find(params[:id])
  end

  def update
    @answer = Answer.find(params[:id])
    if @answer.update(answer_params)
      redirect_to topic_path(@answer.topic)
    else
      render :edit
    end
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    redirect_to topic_path(@answer.topic)
  end

  private

  def answer_params
    params.require(:answer).permit(:description)
  end

end
