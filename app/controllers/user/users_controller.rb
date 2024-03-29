class User::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :check_guest_login,only: [:show]

  def show
    @user = current_user
    @reviews = current_user.reviews.page(params[:page]).per(10)
    @contacts = current_user.contacts
    @comment = Comment.new
    @comment_comment = CommentComment.new
    @questions = current_user.questions
    @comment_questions = Question.joins(:comments).where(comments: { user: current_user }).distinct #あくまでとってきたいのはquestionのデータ
    @comment_comment_questions = Question.joins(:comment_comments).where(comment_comments: { user: current_user }).distinct#あくまでとってきたいのはquestionのデータ
    @property_rules = Property.joins(:rules).where(rules: {user: current_user}).distinct
    @comments = current_user.comments
    @comment_comments = current_user.comment_comments
  end

  def edit
    @user = current_user
  end

  def update
    user=current_user
    user.update(user_params)
    redirect_to user_path
  end

  def favorite
    @favorites_count = current_user.favorites.count
    @favorites = current_user.favorites.page(params[:page]).per(10)
  end

  def out
    user=current_user
    user.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  private

  def check_guest_login
    if current_user.email == "guest@example.com"
      redirect_to root_path
    end
  end

  def user_params
    params.require(:user).permit(:nickname, :age, :gender)
  end
end