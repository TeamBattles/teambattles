require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Creates a league-scoped support ticket.
            class CreateLeagueTicketRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The description property
                @description
                ## 
                # The priority property
                @priority
                ## 
                # The subject property
                @subject
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
                ## Instantiates a new CreateLeagueTicketRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a create_league_ticket_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CreateLeagueTicketRequestBody.new
                end
                ## 
                ## Gets the description property value. The description property
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. The description property
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "priority" => lambda {|n| @priority = n.get_enum_value(TeamBattlesSdk::Generated::Models::CreateLeagueTicketRequestBodyPriority) },
                        "subject" => lambda {|n| @subject = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the priority property value. The priority property
                ## @return a create_league_ticket_request_body_priority
                ## 
                def priority
                    return @priority
                end
                ## 
                ## Sets the priority property value. The priority property
                ## @param value Value to set for the priority property.
                ## @return a void
                ## 
                def priority=(value)
                    @priority = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("description", @description)
                    writer.write_enum_value("priority", @priority)
                    writer.write_string_value("subject", @subject)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the subject property value. The subject property
                ## @return a string
                ## 
                def subject
                    return @subject
                end
                ## 
                ## Sets the subject property value. The subject property
                ## @param value Value to set for the subject property.
                ## @return a void
                ## 
                def subject=(value)
                    @subject = value
                end
            end
        end
    end
end
