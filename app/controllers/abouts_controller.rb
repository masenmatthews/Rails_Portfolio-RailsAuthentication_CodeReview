class AboutsController < ApplicationController
  before_action :authorize, only: [:new]


  def index

  end
end
