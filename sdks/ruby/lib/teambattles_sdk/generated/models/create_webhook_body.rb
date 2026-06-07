require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Create a webhook endpoint in the caller's scope.
            class CreateWebhookBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ##
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ##
                # Subscribed event tokens: exact catalog names (e.g. match.completed) or family wildcards (e.g. match.*). At least one required.
                @events
                ##
                # Optional human label for the endpoint.
                @label
                ##
                # HTTPS endpoint URL. Private/loopback/metadata hosts are rejected.
                @url
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
                ## Instantiates a new CreateWebhookBody and sets the default values.
                ## @return a void
                ##
                def initialize()
                    @additional_data = Hash.new
                end
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a create_webhook_body
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CreateWebhookBody.new
                end
                ##
                ## Gets the events property value. Subscribed event tokens: exact catalog names (e.g. match.completed) or family wildcards (e.g. match.*). At least one required.
                ## @return a string
                ##
                def events
                    return @events
                end
                ##
                ## Sets the events property value. Subscribed event tokens: exact catalog names (e.g. match.completed) or family wildcards (e.g. match.*). At least one required.
                ## @param value Value to set for the events property.
                ## @return a void
                ##
                def events=(value)
                    @events = value
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "events" => lambda {|n| @events = n.get_collection_of_primitive_values(String) },
                        "label" => lambda {|n| @label = n.get_string_value() },
                        "url" => lambda {|n| @url = n.get_string_value() },
                    }
                end
                ##
                ## Gets the label property value. Optional human label for the endpoint.
                ## @return a string
                ##
                def label
                    return @label
                end
                ##
                ## Sets the label property value. Optional human label for the endpoint.
                ## @param value Value to set for the label property.
                ## @return a void
                ##
                def label=(value)
                    @label = value
                end
                ##
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_primitive_values("events", @events)
                    writer.write_string_value("label", @label)
                    writer.write_string_value("url", @url)
                    writer.write_additional_data(@additional_data)
                end
                ##
                ## Gets the url property value. HTTPS endpoint URL. Private/loopback/metadata hosts are rejected.
                ## @return a string
                ##
                def url
                    return @url
                end
                ##
                ## Sets the url property value. HTTPS endpoint URL. Private/loopback/metadata hosts are rejected.
                ## @param value Value to set for the url property.
                ## @return a void
                ##
                def url=(value)
                    @url = value
                end
            end
        end
    end
end
