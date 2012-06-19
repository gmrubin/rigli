class RigsController < ApplicationController

  def new
    @rig = Rig.new
    @rig.links.build if @rig.links.empty?
  end

  def create
    @rig = Rig.create(params[:rig])
    if @rig.save
      flash[:notice] = "Successfully created a rig!"
      redirect_to @rig
    else
      errors = @rig.errors.full_messages.join("</br>")
      flash.now['error'] = errors
      render :action => :new
    end
  end

  def destroy
    @rig = Rig.find(params[:id])
    flash[:success] = "Rig destroyed"
  end

  def index
    @rig = Rig.all
  end

  def update
    if @rig.update_attributes(params[:user])
      flash[:success] = "Rig updated!"
      redirect_to @user
    else
      render "edit"
    end
  end

  def show
    @rig = Rig.find(params[:id])
  end
end
