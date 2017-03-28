# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  # METHOD: initialize instance attributes
  
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # METHOD: calls predicted_deaths and speed_of_spread methods 
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # KEYWORD: code below is inaccessible from outside the class
  
  private

  def density_range
    case @population_density
    when 0...50 then 0
    when 50...100 then 50
    when 100...150 then 100
    when 150...200 then 150
    else 200
    end
  end

  # METHOD: uses population density to calculate number of deaths as a 
  #         percentage of population
  
  def predicted_deaths
    # predicted deaths is solely based on population density

    if density_range < 50
      percentage = 0.05
    else
      percentage / 500.0
    end

    # percentage = [[(@population_density / 500.0).round(1), 0.4].min, 0.05].max

    # if @population_density >= 200
    #   percentage = 0.4
    # elsif @population_density < 50
    #   percentage = 0.05
    # else
    #   percentage = (@population_density / 50) / 10.0

    # number_of_deaths = (@population * percentage).floor

    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # METHOD: returns speed of spread in months based on
  # population density
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    else
      speed = 2.5 - ((@population_density / 50) * 0.5)

    # speed = 0.0
      
    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, data|
  state_predictor = VirusPredictor.new(state, data[:population_density], data[:population])
  state_predictor.virus_effects
end


#=======================================================================
# Reflection Section
