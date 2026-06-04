require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # League standings for a season.
            class LeagueStandings
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Number of teams returned.
                @count
                ## 
                # Approved teams with season stats, ordered by standings position. Each item is a team-with-stats document plus a computed rank.
                @standings
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Gets the count property value. Number of teams returned.
                ## @return a integer
                ## 
                def count
                    return @count
                end
                ## 
                ## Sets the count property value. Number of teams returned.
                ## @param value Value to set for the count property.
                ## @return a void
                ## 
                def count=(value)
                    @count = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a league_standings
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeagueStandings.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "count" => lambda {|n| @count = n.get_number_value() },
                        "standings" => lambda {|n| @standings = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueStandingsStandings.create_from_discriminator_value(pn) }) },
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
                    writer.write_collection_of_object_values("standings", @standings)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the standings property value. Approved teams with season stats, ordered by standings position. Each item is a team-with-stats document plus a computed rank.
                ## @return a league_standings_standings
                ## 
                def standings
                    return @standings
                end
                ## 
                ## Sets the standings property value. Approved teams with season stats, ordered by standings position. Each item is a team-with-stats document plus a computed rank.
                ## @param value Value to set for the standings property.
                ## @return a void
                ## 
                def standings=(value)
                    @standings = value
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
