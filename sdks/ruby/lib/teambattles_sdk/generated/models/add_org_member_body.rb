require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Add a member to the organization.
            class AddOrgMemberBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The role to assign to the new member. Ownership is set on creation.
                @role
                ## 
                # Convex user ID of the member to add.
                @target_user_id
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
                ## Instantiates a new AddOrgMemberBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a add_org_member_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return AddOrgMemberBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "role" => lambda {|n| @role = n.get_enum_value(TeamBattlesSdk::Generated::Models::AddOrgMemberBodyRole) },
                        "targetUserId" => lambda {|n| @target_user_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the role property value. The role to assign to the new member. Ownership is set on creation.
                ## @return a add_org_member_body_role
                ## 
                def role
                    return @role
                end
                ## 
                ## Sets the role property value. The role to assign to the new member. Ownership is set on creation.
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
                    writer.write_string_value("targetUserId", @target_user_id)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the targetUserId property value. Convex user ID of the member to add.
                ## @return a string
                ## 
                def target_user_id
                    return @target_user_id
                end
                ## 
                ## Sets the targetUserId property value. Convex user ID of the member to add.
                ## @param value Value to set for the targetUserId property.
                ## @return a void
                ## 
                def target_user_id=(value)
                    @target_user_id = value
                end
            end
        end
    end
end
