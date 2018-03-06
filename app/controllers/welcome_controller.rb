class WelcomeController < ApplicationController
  def index
    @initiative1 = Initiative.first
    @initiative2 = Initiative.second
    @initiative3 = Initiative.third
    @initiative4 = Initiative.fourth
    @initiatives = Initiative.first(4)
  end
end
