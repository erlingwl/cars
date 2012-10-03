# encoding: utf-8

class WelcomeController < ApplicationController

  def index
    @navn = "Erling"
    @sum = 2 + 2
  end

end