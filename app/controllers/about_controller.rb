class AboutController < ApplicationController
  def read
  end
  def send_mail
    Contact.new(
      :name => params[:name],
      :message => params[:message],
      :email => params[:email]
    ).deliver
    redirect_to action: "read"
  end
end
