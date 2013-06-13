class ContactsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @contact = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end
  
  def edit
    @contact = Contact.find(params[:id]) 
  end

  def update
    @contact = Contact.where(:id => params[:id]).first


    respond_to do |format|
      if @contact.update_attributes(params[:contact])
        format.html { redirect_to contacts_path, :notice => 'This contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @contact.errors, :status => :unprocessable_entity }
      end
    end
  end  

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      flash[:success] = "New Contact Created!"
      redirect_to (contacts_path)
    else
      redirect_to (:back)
    end
  end
  
  def destroy
    @contact.destroy
  end
end
