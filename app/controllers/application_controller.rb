# frozen_string_literal: true

class ApplicationController < ActionController::Base
    before_filter :authenticate_user!, :except => [:show, :index]
end
