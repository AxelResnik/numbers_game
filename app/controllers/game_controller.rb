class GameController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def rand_number
    number = Array.new(4) { rand(1..9) } until number.uniq.length == 4
  end
end
