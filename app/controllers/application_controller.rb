class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  set_current_tenant_through_filter
  before_action :set_tenant

  def set_tenant
    return unless current_user.present?
    set_current_tenant(current_user)
  end
end
