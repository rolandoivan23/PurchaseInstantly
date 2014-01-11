#encoding: utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

    helper_method :current_user_session, :current_user
    #before_filter :authenticate

  def create_order
    Order.create(:client_id => params[:cliente_id], :order_status_id => 1, :monto_total => 0, :payment_status_id => 1)
    respond_to do |format|
      format.js {render "shared/create_order.js"}
    end
  end

   protected
  def current_user_session
    @current_user_session ||= UserSession.find
  end

  def current_user
    @current_user ||= current_user_session && current_user_session.user
  end

  def authenticate
    unless current_user_session
      flash[:notice] = "Debe de iniciar sesión"
      redirect_to new_user_session_path
      return false
    end
  end

end
