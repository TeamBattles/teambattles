require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Tournament profile response envelope.
            class TournamentProfileResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                # Public profile for a single tournament. Manager-private review fields are present only for a caller who manages it.
                @tournament
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_profile_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentProfileResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                        "tournament" => lambda {|n| @tournament = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentProfile.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("timestamp", @timestamp)
                    writer.write_object_value("tournament", @tournament)
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
                ## 
                ## Gets the tournament property value. Public profile for a single tournament. Manager-private review fields are present only for a caller who manages it.
                ## @return a tournament_profile
                ## 
                def tournament
                    return @tournament
                end
                ## 
                ## Sets the tournament property value. Public profile for a single tournament. Manager-private review fields are present only for a caller who manages it.
                ## @param value Value to set for the tournament property.
                ## @return a void
                ## 
                def tournament=(value)
                    @tournament = value
                end
            end
        end
    end
end
