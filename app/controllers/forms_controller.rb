class FormsController < ApplicationController
  def new
    @form = Form.new
    render :json => @form 
  end
end
