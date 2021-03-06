class Admin::UsersController < ApplicationController
  def update
    @user = User.find_by(id: params[:id])
    if @user.change_role(params[:role])
      flash[:success] = "#{@user.full_name} now belongs to #{@user.list_roles}."
    else
      flash[:warn] = @user.errors.full_messages.join('. ')
    end
    redirect_to user_path(@user)
  end
end
