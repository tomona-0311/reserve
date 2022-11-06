# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  def index
  end

  def create

    @user = User.new(params.require(:user).permit(:name, :email, :confirmed_at,:password,:password_confirmation,:encrypted_password,:reset_password_token ,:reset_password_sent_at, :remember_created_at))






    if @user.save

   # binding.pry

    flash[:notice] = "ユーザーを新規登録しました"

    redirect_to :

    else



    #こちらの処理が実行されます。

    render "new", status: :unprocessable_entity

    #上のようにstatus: :unprocessable_entity をつけてあげないと、エラーメッセージ付きのフォームが描画されません。

    end

    end
  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  def detail
    @user = User.find_by(id: params[:id])
  end
  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    "/user/#{current_user.id}"
  end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
