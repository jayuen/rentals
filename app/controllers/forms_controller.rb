class FormsController < ApplicationController
  def new
    @form = Form.new
    render :json => @form 
  end

  def create
    @form = Form.create! params[:form]
    FormMailer.notification.deliver
    render :json => @form 
  end
end
