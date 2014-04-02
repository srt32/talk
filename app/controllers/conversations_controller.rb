class ConversationsController < ApplicationController

  def create
    contact = current_user.contacts.find(params[:contact_id])
    conversation = contact.conversations.new

    redirect_to root_path
  end

end
