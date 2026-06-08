require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # List of the caller's webhook endpoints.
            class WebhookListResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The count property
                @count
                ## 
                # The timestamp property
                @timestamp
                ## 
                # The webhooks property
                @webhooks
                ## 
                ## Gets the count property value. The count property
                ## @return a integer
                ## 
                def count
                    return @count
                end
                ## 
                ## Sets the count property value. The count property
                ## @param value Value to set for the count property.
                ## @return a void
                ## 
                def count=(value)
                    @count = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a webhook_list_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return WebhookListResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "count" => lambda {|n| @count = n.get_number_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                        "webhooks" => lambda {|n| @webhooks = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::WebhookEndpoint.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("count", @count)
                    writer.write_string_value("timestamp", @timestamp)
                    writer.write_collection_of_object_values("webhooks", @webhooks)
                end
                ## 
                ## Gets the timestamp property value. The timestamp property
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. The timestamp property
                ## @param value Value to set for the timestamp property.
                ## @return a void
                ## 
                def timestamp=(value)
                    @timestamp = value
                end
                ## 
                ## Gets the webhooks property value. The webhooks property
                ## @return a webhook_endpoint
                ## 
                def webhooks
                    return @webhooks
                end
                ## 
                ## Sets the webhooks property value. The webhooks property
                ## @param value Value to set for the webhooks property.
                ## @return a void
                ## 
                def webhooks=(value)
                    @webhooks = value
                end
            end
        end
    end
end
