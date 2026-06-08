require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Updates league ticket status, priority, or assignment.
            class UpdateLeagueTicketRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # User ID to assign, or null to clear assignment.
                @assigned_to
                ## 
                # The priority property
                @priority
                ## 
                # The status property
                @status
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
                ## Gets the assignedTo property value. User ID to assign, or null to clear assignment.
                ## @return a update_league_ticket_request_body_assigned_to
                ## 
                def assigned_to
                    return @assigned_to
                end
                ## 
                ## Sets the assignedTo property value. User ID to assign, or null to clear assignment.
                ## @param value Value to set for the assignedTo property.
                ## @return a void
                ## 
                def assigned_to=(value)
                    @assigned_to = value
                end
                ## 
                ## Instantiates a new UpdateLeagueTicketRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a update_league_ticket_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpdateLeagueTicketRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "assignedTo" => lambda {|n| @assigned_to = n.get_object_value(lambda {|pn| UpdateLeagueTicketRequestBody::UpdateLeagueTicketRequestBodyAssignedTo.create_from_discriminator_value(pn) }) },
                        "priority" => lambda {|n| @priority = n.get_enum_value(TeamBattlesSdk::Generated::Models::UpdateLeagueTicketRequestBodyPriority) },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::UpdateLeagueTicketRequestBodyStatus) },
                    }
                end
                ## 
                ## Gets the priority property value. The priority property
                ## @return a update_league_ticket_request_body_priority
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
                    writer.write_object_value("assignedTo", @assigned_to)
                    writer.write_enum_value("priority", @priority)
                    writer.write_enum_value("status", @status)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the status property value. The status property
                ## @return a update_league_ticket_request_body_status
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. The status property
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end

                ## 
                # Composed type wrapper for classes string, UpdateLeagueTicketRequestBodyAssignedToMember1
                class UpdateLeagueTicketRequestBodyAssignedTo
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type UpdateLeagueTicketRequestBodyAssignedToMember1
                    @update_league_ticket_request_body_assigned_to_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a update_league_ticket_request_body_assigned_to
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return UpdateLeagueTicketRequestBodyAssignedTo.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "UpdateLeagueTicketRequestBody_assignedToMember1" => lambda {|n| @update_league_ticket_request_body_assigned_to_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::UpdateLeagueTicketRequestBodyAssignedToMember1.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("string", @string)
                        writer.write_object_value("UpdateLeagueTicketRequestBody_assignedToMember1", @update_league_ticket_request_body_assigned_to_member1)
                    end
                    ## 
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ## 
                    def string
                        return @string
                    end
                    ## 
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ## 
                    def string=(value)
                        @string = value
                    end
                    ## 
                    ## Gets the UpdateLeagueTicketRequestBody_assignedToMember1 property value. Composed type representation for type UpdateLeagueTicketRequestBodyAssignedToMember1
                    ## @return a update_league_ticket_request_body_assigned_to_member1
                    ## 
                    def update_league_ticket_request_body_assigned_to_member1
                        return @update_league_ticket_request_body_assigned_to_member1
                    end
                    ## 
                    ## Sets the UpdateLeagueTicketRequestBody_assignedToMember1 property value. Composed type representation for type UpdateLeagueTicketRequestBodyAssignedToMember1
                    ## @param value Value to set for the UpdateLeagueTicketRequestBody_assignedToMember1 property.
                    ## @return a void
                    ## 
                    def update_league_ticket_request_body_assigned_to_member1=(value)
                        @update_league_ticket_request_body_assigned_to_member1 = value
                    end
                end
            end
        end
    end
end
