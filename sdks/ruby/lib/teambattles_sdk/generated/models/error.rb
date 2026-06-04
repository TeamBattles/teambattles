require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Standard API error response.
            class Error < MicrosoftKiotaAbstractions::ApiError
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Optional human-readable explanation. Often absent on auth/permission errors.
                @details
                ## 
                # Stable machine-readable error code (e.g. error_api_key_invalid). Treat this, not the message, as the programmatic contract.
                @error
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a error
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Error.new
                end
                ## 
                ## Gets the details property value. Optional human-readable explanation. Often absent on auth/permission errors.
                ## @return a string
                ## 
                def details
                    return @details
                end
                ## 
                ## Sets the details property value. Optional human-readable explanation. Often absent on auth/permission errors.
                ## @param value Value to set for the details property.
                ## @return a void
                ## 
                def details=(value)
                    @details = value
                end
                ## 
                ## Gets the error property value. Stable machine-readable error code (e.g. error_api_key_invalid). Treat this, not the message, as the programmatic contract.
                ## @return a string
                ## 
                def error
                    return @error
                end
                ## 
                ## Sets the error property value. Stable machine-readable error code (e.g. error_api_key_invalid). Treat this, not the message, as the programmatic contract.
                ## @param value Value to set for the error property.
                ## @return a void
                ## 
                def error=(value)
                    @error = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "details" => lambda {|n| @details = n.get_string_value() },
                        "error" => lambda {|n| @error = n.get_string_value() },
                    })
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("details", @details)
                    writer.write_string_value("error", @error)
                end
            end
        end
    end
end
