class ContactsController < ApplicationController

  def create
    contact = current_user.contacts.new(contact_params)
    if contact.save
      redirect_to root_path
    else
      flash[:error] = "We couldn't save your contact. Sorry"
      redirect_to root_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :frequency)
  end

end
