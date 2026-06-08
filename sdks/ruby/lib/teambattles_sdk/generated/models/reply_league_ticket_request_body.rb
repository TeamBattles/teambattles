require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Adds a reply or internal note to a league support ticket.
            class ReplyLeagueTicketRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The content property
                @content
                ## 
                # The isInternal property
                @is_internal
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
                ## Instantiates a new ReplyLeagueTicketRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Gets the content property value. The content property
                ## @return a string
                ## 
                def content
                    return @content
                end
                ## 
                ## Sets the content property value. The content property
                ## @param value Value to set for the content property.
                ## @return a void
                ## 
                def content=(value)
                    @content = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a reply_league_ticket_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ReplyLeagueTicketRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "content" => lambda {|n| @content = n.get_string_value() },
                        "isInternal" => lambda {|n| @is_internal = n.get_boolean_value() },
                    }
                end
                ## 
                ## Gets the isInternal property value. The isInternal property
                ## @return a boolean
                ## 
                def is_internal
                    return @is_internal
                end
                ## 
                ## Sets the isInternal property value. The isInternal property
                ## @param value Value to set for the isInternal property.
                ## @return a void
                ## 
                def is_internal=(value)
                    @is_internal = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("content", @content)
                    writer.write_boolean_value("isInternal", @is_internal)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
