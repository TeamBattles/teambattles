require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Games configured for a league.
            class LeagueGames
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Number of configured games returned.
                @count
                ## 
                # Games configured for the league.
                @games
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Gets the count property value. Number of configured games returned.
                ## @return a integer
                ## 
                def count
                    return @count
                end
                ## 
                ## Sets the count property value. Number of configured games returned.
                ## @param value Value to set for the count property.
                ## @return a void
                ## 
                def count=(value)
                    @count = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a league_games
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeagueGames.new
                end
                ## 
                ## Gets the games property value. Games configured for the league.
                ## @return a league_games_games
                ## 
                def games
                    return @games
                end
                ## 
                ## Sets the games property value. Games configured for the league.
                ## @param value Value to set for the games property.
                ## @return a void
                ## 
                def games=(value)
                    @games = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "count" => lambda {|n| @count = n.get_number_value() },
                        "games" => lambda {|n| @games = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueGamesGames.create_from_discriminator_value(pn) }) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("count", @count)
                    writer.write_collection_of_object_values("games", @games)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the timestamp property value. Response generation time (ISO 8601).
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. Response generation time (ISO 8601).
                ## @param value Value to set for the timestamp property.
                ## @return a void
                ## 
                def timestamp=(value)
                    @timestamp = value
                end
            end
        end
    end
end
