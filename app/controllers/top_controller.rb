class TopController < ApplicationController
  skip_before_action :login_required
  def show
  end
end
