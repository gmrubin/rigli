class RigsController < ApplicationController

  def new
    @rig = Rig.new
    @rig.links.build if @rig.links.empty?
  end

  def create
    @rig = Rig.create(params[:rig])
    @rig.user = current_user
    @rig.short = Short.create
    @rig.links.each { |link| link.short = Short.create }
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
    @shorts = Short.find(:all, order: "count")
  end

  def my_rigs
    @rigs = current_user.rigs
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

  def redirect
    @short = Short.find_by_surl!(params[:surl])
    @short.increment_count
    @short.save
    if @short.shortable_type == "Rig"
      @rig = @short.shortable
      redirect_to @rig
    elsif @short.shortable_type == "Link"
      redirect_to @short.shortable.target
    end
  end

end
