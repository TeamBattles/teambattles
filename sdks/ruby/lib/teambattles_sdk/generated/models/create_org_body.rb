require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Creates a new organization as the API key owner.
            class CreateOrgBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Optional organization description.
                @description
                ## 
                # Organization name.
                @name
                ## 
                # Organization tag (short identifier).
                @tag
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
                ## Instantiates a new CreateOrgBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a create_org_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CreateOrgBody.new
                end
                ## 
                ## Gets the description property value. Optional organization description.
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. Optional organization description.
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
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "tag" => lambda {|n| @tag = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the name property value. Organization name.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Organization name.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("description", @description)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("tag", @tag)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the tag property value. Organization tag (short identifier).
                ## @return a string
                ## 
                def tag
                    return @tag
                end
                ## 
                ## Sets the tag property value. Organization tag (short identifier).
                ## @param value Value to set for the tag property.
                ## @return a void
                ## 
                def tag=(value)
                    @tag = value
                end
            end
        end
    end
end
