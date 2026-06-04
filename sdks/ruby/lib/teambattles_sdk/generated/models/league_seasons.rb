require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Seasons for a league.
            class LeagueSeasons
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Number of seasons returned.
                @count
                ## 
                # Season documents for the league.
                @seasons
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Gets the count property value. Number of seasons returned.
                ## @return a integer
                ## 
                def count
                    return @count
                end
                ## 
                ## Sets the count property value. Number of seasons returned.
                ## @param value Value to set for the count property.
                ## @return a void
                ## 
                def count=(value)
                    @count = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a league_seasons
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeagueSeasons.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "count" => lambda {|n| @count = n.get_number_value() },
                        "seasons" => lambda {|n| @seasons = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueSeasonsSeasons.create_from_discriminator_value(pn) }) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the seasons property value. Season documents for the league.
                ## @return a league_seasons_seasons
                ## 
                def seasons
                    return @seasons
                end
                ## 
                ## Sets the seasons property value. Season documents for the league.
                ## @param value Value to set for the seasons property.
                ## @return a void
                ## 
                def seasons=(value)
                    @seasons = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("count", @count)
                    writer.write_collection_of_object_values("seasons", @seasons)
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
