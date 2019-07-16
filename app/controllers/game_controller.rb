class GameController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def rand_number
    @number = rand(1000...9999)
  end
end
