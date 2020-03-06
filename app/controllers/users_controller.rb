class UsersController < ApplicationController
  def show
    @user = current_user

    @first_three = @user.choices.first(3)
    if @user.choices.count > 3
      @remainder = @user.choices.last(@user.choices.count - 3)
    end

    @first_three_likes = @user.likes.first(3)
    if @user.likes.count > 3
      @remainder_likes = @user.likes.last(@user.likes.count - 3)
    end
  end
end
