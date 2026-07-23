require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Pending tournament applications.
            class TournamentApplicationsResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Participant rows in PENDING status only. Approved, denied, withdrawn, and disqualified entries are not applications and appear on the participants endpoint instead.
                @applications
                ## 
                # Number of applications returned.
                @count
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Gets the applications property value. Participant rows in PENDING status only. Approved, denied, withdrawn, and disqualified entries are not applications and appear on the participants endpoint instead.
                ## @return a tournament_application
                ## 
                def applications
                    return @applications
                end
                ## 
                ## Sets the applications property value. Participant rows in PENDING status only. Approved, denied, withdrawn, and disqualified entries are not applications and appear on the participants endpoint instead.
                ## @param value Value to set for the applications property.
                ## @return a void
                ## 
                def applications=(value)
                    @applications = value
                end
                ## 
                ## Gets the count property value. Number of applications returned.
                ## @return a integer
                ## 
                def count
                    return @count
                end
                ## 
                ## Sets the count property value. Number of applications returned.
                ## @param value Value to set for the count property.
                ## @return a void
                ## 
                def count=(value)
                    @count = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_applications_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentApplicationsResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "applications" => lambda {|n| @applications = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentApplication.create_from_discriminator_value(pn) }) },
                        "count" => lambda {|n| @count = n.get_number_value() },
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
                    writer.write_collection_of_object_values("applications", @applications)
                    writer.write_number_value("count", @count)
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
