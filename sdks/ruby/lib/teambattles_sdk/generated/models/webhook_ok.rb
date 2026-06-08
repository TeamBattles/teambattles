require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Success ack.
            class WebhookOk
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The ok property
                @ok
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a webhook_ok
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return WebhookOk.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "ok" => lambda {|n| @ok = n.get_boolean_value() },
                    }
                end
                ## 
                ## Gets the ok property value. The ok property
                ## @return a boolean
                ## 
                def ok
                    return @ok
                end
                ## 
                ## Sets the ok property value. The ok property
                ## @param value Value to set for the ok property.
                ## @return a void
                ## 
                def ok=(value)
                    @ok = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_boolean_value("ok", @ok)
                end
            end
        end
    end
end
