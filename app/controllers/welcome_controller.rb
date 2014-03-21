class WelcomeController < ApplicationController
  def index
  	@countries = Country.all.order( 'countries.name ASC' )
  	@years = Year.all.order( 'year.year ASC' )
  end
end
