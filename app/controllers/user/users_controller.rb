class User::UsersController < ApplicationController

  def show
    @user = current_user
    @reviews = current_user.reviews
    @comment = Comment.new
    @comment_comment = CommentComment.new
    @questions = current_user.questions
    @comment_questions = Question.joins(:comments).where(comments: { user: current_user }) #あくまでとってきたいのはquestionのデータ
    @comment_comment_questions = Question.joins(:comment_comments).where(comment_comments: { user: current_user })#あくまでとってきたいのはquestionのデータ
    @rules = current_user.rules
    @property_rules = Property.joins(:rules).where(rules: {user: current_user}).distinct

  end

  def edit

    @user = current_user
  end

  def update
    user=current_user
    user.update(user_params)
    redirect_to user_path
  end

  def review
    #@reviews = current_user.reviews
  end

  def question
    # @user = current_user
    # @questions = current_user.questions
    # @comment = Comment.new
    # @comment_comment = CommentComment.new
    #@comments = current_user.comments
    #@question = @comments.question


  end

  def comment
    # @user = current_user
    # @questions = Question.joins(:comments).where(comments: { user: current_user }) #あくまでとってきたいのはquestionのデータ
    # @comment = Comment.new
    # @comment_comment = CommentComment.new
  end

  def comment_comment
    # @user = current_user
    # @questions = Question.joins(:comment_comments).where(comment_comments: { user: current_user })#あくまでとってきたいのはquestionのデータ
    # @comment = Comment.new
    # @comment_comment = CommentComment.new
  end

  def favorite
    @favorites = current_user.favorites

  end

  # def destroy
  #   property = Property.find(params[:id])
  #   property.destroy
  #   redirect_to favorite_path

  # end

  def quit

  end

  def out
      user=current_user
      user.update(is_deleted: true)
      reset_session
      redirect_to root_path
  end

  def user_params
    params.require(:user).permit(:nickname,:age,:gender,:image,:email)
  end
end
