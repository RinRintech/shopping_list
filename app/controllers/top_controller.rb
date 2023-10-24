class TopController < ApplicationController
  def index
    if user_signed_in?
      # ログインしているユーザー用の処理を記述
    else
      # ログインしていないユーザー用の処理を記述
    end

    def destroy
      sign_out(current_user)
      redirect_to root_path, notice: 'ログアウトしました。'
    end
    
  end
end