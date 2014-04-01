class DashboardsController < ApplicationController

  def show
    @contact = Contact.new
    @contacts = current_user.contacts
  end

end
