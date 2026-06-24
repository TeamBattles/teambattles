require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Transfer organization ownership to another member.
            class TransferOrgOwnershipBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Convex user ID of the active organization member to promote to owner.
                @new_owner_id
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
                ## Instantiates a new TransferOrgOwnershipBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a transfer_org_ownership_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TransferOrgOwnershipBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "newOwnerId" => lambda {|n| @new_owner_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the newOwnerId property value. Convex user ID of the active organization member to promote to owner.
                ## @return a string
                ## 
                def new_owner_id
                    return @new_owner_id
                end
                ## 
                ## Sets the newOwnerId property value. Convex user ID of the active organization member to promote to owner.
                ## @param value Value to set for the newOwnerId property.
                ## @return a void
                ## 
                def new_owner_id=(value)
                    @new_owner_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("newOwnerId", @new_owner_id)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
