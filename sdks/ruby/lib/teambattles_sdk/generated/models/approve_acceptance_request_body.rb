require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Approves a pending match acceptance as the API key owner.
            class ApproveAcceptanceRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Optional list of available map IDs for the match.
                @available_maps
                ## 
                # Optional message sent to the accepting team.
                @response_message
                ## 
                ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Gets the availableMaps property value. Optional list of available map IDs for the match.
                ## @return a string
                ## 
                def available_maps
                    return @available_maps
                end
                ## 
                ## Sets the availableMaps property value. Optional list of available map IDs for the match.
                ## @param value Value to set for the availableMaps property.
                ## @return a void
                ## 
                def available_maps=(value)
                    @available_maps = value
                end
                ## 
                ## Instantiates a new ApproveAcceptanceRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a approve_acceptance_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApproveAcceptanceRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "availableMaps" => lambda {|n| @available_maps = n.get_collection_of_primitive_values(String) },
                        "responseMessage" => lambda {|n| @response_message = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the responseMessage property value. Optional message sent to the accepting team.
                ## @return a string
                ## 
                def response_message
                    return @response_message
                end
                ## 
                ## Sets the responseMessage property value. Optional message sent to the accepting team.
                ## @param value Value to set for the responseMessage property.
                ## @return a void
                ## 
                def response_message=(value)
                    @response_message = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_primitive_values("availableMaps", @available_maps)
                    writer.write_string_value("responseMessage", @response_message)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
