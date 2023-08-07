class PagesController < ApplicationController
  # controller -> view .... instance variable
  # view -> controller .... params (via a form)

  def about
    # load stuff from DB, put it in an instance var
    # render 'about.html.erb'
  end

  def contact
    @members = ['doug', 'sylvain', 'yann', 'sasha', 'noemi', 'soufiane'].sort
    # if the user searched for a team member, we want to filter @members
    # raise
    if params[:member].present?
      @members = @members.select do |member|
        member.start_with?(params[:member])
      end
    end
    # raise
    # raise
    # render 'contact.html.erb'
  end

  def home
  end
end
