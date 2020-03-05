class UsersController < ApplicationController
  def show
    @user = current_user

    @first_two = @user.choices.first(2)
    if @user.choices.count > 2
      @remainder = @user.choices.last(@user.choices.count - 2)
    end

    @first_two_likes = @user.likes.first(2)
    if @user.likes.count > 2
      @remainder_likes = @user.likes.last(@user.likes.count - 2)
    end
  end
end
