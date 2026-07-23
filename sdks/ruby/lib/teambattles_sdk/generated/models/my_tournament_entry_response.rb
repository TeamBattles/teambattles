require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # The caller's tournament entry state.
            class MyTournamentEntryResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The API key owner's own state in one tournament.
                @entry
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a my_tournament_entry_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MyTournamentEntryResponse.new
                end
                ## 
                ## Gets the entry property value. The API key owner's own state in one tournament.
                ## @return a my_tournament_entry
                ## 
                def entry
                    return @entry
                end
                ## 
                ## Sets the entry property value. The API key owner's own state in one tournament.
                ## @param value Value to set for the entry property.
                ## @return a void
                ## 
                def entry=(value)
                    @entry = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "entry" => lambda {|n| @entry = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::MyTournamentEntry.create_from_discriminator_value(pn) }) },
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
                    writer.write_object_value("entry", @entry)
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
