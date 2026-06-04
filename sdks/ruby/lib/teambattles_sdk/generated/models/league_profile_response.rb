require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # League profile response envelope.
            class LeagueProfileResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Public profile for a single league.
                @league
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a league_profile_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeagueProfileResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "league" => lambda {|n| @league = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueProfile.create_from_discriminator_value(pn) }) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the league property value. Public profile for a single league.
                ## @return a league_profile
                ## 
                def league
                    return @league
                end
                ## 
                ## Sets the league property value. Public profile for a single league.
                ## @param value Value to set for the league property.
                ## @return a void
                ## 
                def league=(value)
                    @league = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("league", @league)
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
