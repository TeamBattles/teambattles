require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class UpdateLobbyCodeResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The lobbyCode property
                @lobby_code
                ## 
                # The statusChanged property
                @status_changed
                ## 
                # The success property
                @success
                ## 
                # The timestamp property
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a update_lobby_code_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpdateLobbyCodeResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "lobbyCode" => lambda {|n| @lobby_code = n.get_string_value() },
                        "statusChanged" => lambda {|n| @status_changed = n.get_boolean_value() },
                        "success" => lambda {|n| @success = n.get_boolean_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the lobbyCode property value. The lobbyCode property
                ## @return a string
                ## 
                def lobby_code
                    return @lobby_code
                end
                ## 
                ## Sets the lobbyCode property value. The lobbyCode property
                ## @param value Value to set for the lobbyCode property.
                ## @return a void
                ## 
                def lobby_code=(value)
                    @lobby_code = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("lobbyCode", @lobby_code)
                    writer.write_boolean_value("statusChanged", @status_changed)
                    writer.write_boolean_value("success", @success)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the statusChanged property value. The statusChanged property
                ## @return a boolean
                ## 
                def status_changed
                    return @status_changed
                end
                ## 
                ## Sets the statusChanged property value. The statusChanged property
                ## @param value Value to set for the statusChanged property.
                ## @return a void
                ## 
                def status_changed=(value)
                    @status_changed = value
                end
                ## 
                ## Gets the success property value. The success property
                ## @return a boolean
                ## 
                def success
                    return @success
                end
                ## 
                ## Sets the success property value. The success property
                ## @param value Value to set for the success property.
                ## @return a void
                ## 
                def success=(value)
                    @success = value
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
