class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_name = @user.name
    @prototype = @user.prototypes
    @user_profile = @user.profile # プロフィール情報が含まれていると仮定
    @user_occupation = @user.occupation # 所属情報が含まれていると仮定
    @user_position = @user.position # 役職情報が含まれていると仮定
    @user_prototypes = @user.prototypes
  end

end
