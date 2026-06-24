require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Set an organization member's role.
            class SetOrgMemberRoleBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The new role for the member. The owner role is changed via ownership transfer.
                @role
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
                ## Instantiates a new SetOrgMemberRoleBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a set_org_member_role_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return SetOrgMemberRoleBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "role" => lambda {|n| @role = n.get_enum_value(TeamBattlesSdk::Generated::Models::SetOrgMemberRoleBodyRole) },
                    }
                end
                ## 
                ## Gets the role property value. The new role for the member. The owner role is changed via ownership transfer.
                ## @return a set_org_member_role_body_role
                ## 
                def role
                    return @role
                end
                ## 
                ## Sets the role property value. The new role for the member. The owner role is changed via ownership transfer.
                ## @param value Value to set for the role property.
                ## @return a void
                ## 
                def role=(value)
                    @role = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_enum_value("role", @role)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
