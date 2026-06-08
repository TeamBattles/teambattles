require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Creates a league team ban.
            class CreateBanRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Expiration timestamp for temporary bans, in epoch milliseconds.
                @expires_at
                ## 
                # Whether the ban never expires.
                @is_permanent
                ## 
                # Reason for the ban.
                @reason
                ## 
                # Team ID to ban from the league.
                @team_id
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
                ## Instantiates a new CreateBanRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a create_ban_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CreateBanRequestBody.new
                end
                ## 
                ## Gets the expiresAt property value. Expiration timestamp for temporary bans, in epoch milliseconds.
                ## @return a double
                ## 
                def expires_at
                    return @expires_at
                end
                ## 
                ## Sets the expiresAt property value. Expiration timestamp for temporary bans, in epoch milliseconds.
                ## @param value Value to set for the expiresAt property.
                ## @return a void
                ## 
                def expires_at=(value)
                    @expires_at = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "expiresAt" => lambda {|n| @expires_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "isPermanent" => lambda {|n| @is_permanent = n.get_boolean_value() },
                        "reason" => lambda {|n| @reason = n.get_string_value() },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the isPermanent property value. Whether the ban never expires.
                ## @return a boolean
                ## 
                def is_permanent
                    return @is_permanent
                end
                ## 
                ## Sets the isPermanent property value. Whether the ban never expires.
                ## @param value Value to set for the isPermanent property.
                ## @return a void
                ## 
                def is_permanent=(value)
                    @is_permanent = value
                end
                ## 
                ## Gets the reason property value. Reason for the ban.
                ## @return a string
                ## 
                def reason
                    return @reason
                end
                ## 
                ## Sets the reason property value. Reason for the ban.
                ## @param value Value to set for the reason property.
                ## @return a void
                ## 
                def reason=(value)
                    @reason = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("expiresAt", @expires_at)
                    writer.write_boolean_value("isPermanent", @is_permanent)
                    writer.write_string_value("reason", @reason)
                    writer.write_string_value("teamId", @team_id)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the teamId property value. Team ID to ban from the league.
                ## @return a string
                ## 
                def team_id
                    return @team_id
                end
                ## 
                ## Sets the teamId property value. Team ID to ban from the league.
                ## @param value Value to set for the teamId property.
                ## @return a void
                ## 
                def team_id=(value)
                    @team_id = value
                end
            end
        end
    end
end
