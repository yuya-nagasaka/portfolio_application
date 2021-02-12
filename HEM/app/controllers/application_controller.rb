class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  
  def after_sign_in_path_for(resource)
    user_path(current_user)
  end
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
  
  def current_draft
    if session[:draft_id]#セッションにdraft_idがあれば
      @draft = Draft.find(session[:draft_id])#@draftに代入
    else
      @draft = Draft.create#無ければ、別途作成
      session[:draft_id] = @draft.id#idをセッションに代入
    end
  end
  
end
