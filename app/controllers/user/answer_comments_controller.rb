class User::AnswerCommentsController < ApplicationController
  def create
     @answer_comment = AnswerComment.new(answer_comment_params)
     @answer_comment.user_id = current_user.id
     @answer_comment.answer_id = params[:answer_id]
     @answer_comment.save
     answer = Answer.find(params[:answer_id])
     redirect_to property_questions_path(answer.question.property_id)
  end

  private

  def answer_comment_params
      params.require(:answer_comment).permit(:body,:relation)
  end
end
