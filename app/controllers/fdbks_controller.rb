class FdbksController < ApplicationController
  def index
    @fdbks = Fdbk.all
  end

  def new
    @fdbk = Fdbk.new
  end

  def create
    @fdbk = Fdbk.new(params[:fdbk])
    @fdbk.save
    redirect_to fdbks_path
  end

  def show
    @fdbk = Fdbk.find(params[:id])
  end

  def edit
    @fdbk = Fdbk.find(params[:id])
  end

  def update
    @fdbk = Fdbk.find(params[:id])
    @fdbk.update_attributes(params[:fdbk])
    @fdbk.save
    redirect_to @fdbk
  end

  def destroy
    @fdbk = Fdbk.find(params[:id])
    @fdbk.destroy
    redirect_to fdbks_path
  end
end
