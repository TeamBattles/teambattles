require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Acknowledgement that match regeneration was scheduled.
            class TournamentRegenerateMatchesResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # An UPPER BOUND on the nodes this call will re-attempt, NOT a live count of outstanding work. It counts every node that is currently eligible for initial generation at the moment of the call, including nodes a previous sweep already gave up on. Actual generation happens asynchronously afterwards and some of those attempts may fail again, so do not treat `queued` as a number of matches that will exist. `0` means there was nothing eligible to re-attempt and nothing was scheduled.
                @queued
                ## 
                # The timestamp property
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_regenerate_matches_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentRegenerateMatchesResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "queued" => lambda {|n| @queued = n.get_number_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the queued property value. An UPPER BOUND on the nodes this call will re-attempt, NOT a live count of outstanding work. It counts every node that is currently eligible for initial generation at the moment of the call, including nodes a previous sweep already gave up on. Actual generation happens asynchronously afterwards and some of those attempts may fail again, so do not treat `queued` as a number of matches that will exist. `0` means there was nothing eligible to re-attempt and nothing was scheduled.
                ## @return a integer
                ## 
                def queued
                    return @queued
                end
                ## 
                ## Sets the queued property value. An UPPER BOUND on the nodes this call will re-attempt, NOT a live count of outstanding work. It counts every node that is currently eligible for initial generation at the moment of the call, including nodes a previous sweep already gave up on. Actual generation happens asynchronously afterwards and some of those attempts may fail again, so do not treat `queued` as a number of matches that will exist. `0` means there was nothing eligible to re-attempt and nothing was scheduled.
                ## @param value Value to set for the queued property.
                ## @return a void
                ## 
                def queued=(value)
                    @queued = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("queued", @queued)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the timestamp property value. The timestamp property
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. The timestamp property
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
