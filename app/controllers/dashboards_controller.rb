class DashboardsController < ApplicationController
  before_filter :authorize

  def show
    @contact = Contact.new
    @contacts = current_user.contacts
  end

end
