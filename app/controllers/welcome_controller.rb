class WelcomeController < ApplicationController
  def index
  	@countries = Country.all.order( 'countries.name ASC' )
  	@programs = Program.all.order( 'programs.name ASC' )
  	@years = Year.all.order( 'year.year ASC' )
  end
end
