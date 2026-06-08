require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Outcome of a single test.ping delivery.
            class WebhookTestResult
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Whether the test.ping returned a 2xx. The raw status code and error are not echoed; read the delivery log for details.
                @delivered
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a webhook_test_result
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return WebhookTestResult.new
                end
                ## 
                ## Gets the delivered property value. Whether the test.ping returned a 2xx. The raw status code and error are not echoed; read the delivery log for details.
                ## @return a boolean
                ## 
                def delivered
                    return @delivered
                end
                ## 
                ## Sets the delivered property value. Whether the test.ping returned a 2xx. The raw status code and error are not echoed; read the delivery log for details.
                ## @param value Value to set for the delivered property.
                ## @return a void
                ## 
                def delivered=(value)
                    @delivered = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "delivered" => lambda {|n| @delivered = n.get_boolean_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_boolean_value("delivered", @delivered)
                end
            end
        end
    end
end
