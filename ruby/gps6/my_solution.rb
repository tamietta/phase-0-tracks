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

  # METHOD: calls predicted_deaths and speed_of_spread private methods 
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  # KEYWORD: code below is inaccessible from outside the class
  private

  def density_index
    case @population_density
    when 0...50 then 0
    when 50...100 then 1
    when 100...150 then 2
    when 150...200 then 3
    else 4
    end
  end

  # METHOD: uses population density to calculate number of deaths as a 
  #         percentage of the population

  def predicted_deaths
    # predicted deaths is solely based on population density

=begin

    ORIGINAL VERSION

    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    REFACTOR: VERSION #1

    percentage = [[((@population_density / 50) / 10.0), 0.4].min, 0.05].max
    number_of_deaths = (@population * percentage).floor

=end

    # REFACTOR: VERSION #2

    percentage = [0.05, 0.1, 0.2, 0.3, 0.4]

    number_of_deaths = (@population * percentage[density_index]).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  
  # METHOD: returns speed of spread in months based on population density
  
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

=begin

    ORIGINAL VERSION

    speed = 0.0
      
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    REFACTOR: VERSION #1

    if @population_density >= 200
      speed = 0.5
    else
      speed = 2.5 - ((@population_density / 50) * 0.5)
    end

=end

    # REFACTOR VERSION #2

    speed_scale = [2.5, 2.0, 1.5, 1.0, 0.5]

    speed = speed_scale[density_index]

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

=begin

What are the differences between the two different hash syntaxes shown in the state_data file?

  Syntax #1: {"Alabama" => {}}
    - Sets key to a string

  Syntax #2: {population_density: 94.65}
    - Sets key to a symbol (:population_density)
    - This syntax is a shorthand for {:population_density => 94.65}

What does require_relative do? How is it different from require?

  1. require_relative
    - If path given is not an absolute path, loads the file path given relative to the directory of the current program from which the method is called.

  2. require
    - If the path given is not an absolute path, the directories stored in the $LOAD_PATH variable are searched for the matching file name.


What are some ways to iterate through a hash?

  1. Hash#each
    - Iterates through the key-value pairs.

  2. Hash#each_key
    - Iterates through the keys of the hash.

  3. Hash#each_value
    - Iterates through the values of the hash.

When refactoring virus_effects, what stood out to you about the variables, if anything?

  1. Redundant Parameters
    - Instance variables referenced in the method are accessible to the method without the need for passing in arguments.
    - Thus parameters declared were redundant.

  2. Extraneous Parameters
    - Some parameters declared were not referenced in the code implementation of the method.
    - Thus those parameters served no purpose to the method's code, and were extraneous.

What concept did you most solidify in this challenge?

  1. 'require' vs. 'require_relative'
  2. 'private' keyword
  3. Scopes of variable types declared in the loaded files

=end
