class EntryController < ApplicationController
  def index
    @entries = Entry.all.order(:id)
  end

  def new
    @entry = Entry.new
  end

  # # create
  # post "/entries" do
  #   @entry = Entry.new( params[:entry] )
  #   @entry.update( date_taken: Time.now.strftime("%B %d, %Y") )
  #   if @entry.save
  #     redirect_to ("/entries/#{@entry.id}")
  #   else
  #     redirect_to "/entries/new"
  #   end
  # end

  def edit
      @entry = Entry.find( params[:id] )
  end

  def update
    @entry = Entry.find( params[:id] )
    @entry.update(params[:entry] )
    redirect_to ("/entries/#{@entry.id}")
  end

  def show
    @entry = Entry.find( params[:id] )
  end

  def destroy
    @entry = Entry.find( params[:id] )
  end

end
