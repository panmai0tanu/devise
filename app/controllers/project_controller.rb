class ProjectController < ApplicationController

  #ต้องทำการ login ก่อนถึงจะเข้ามาหน้านี้ได้
  before_action :authenticate_user! 
  def index
  end

end

