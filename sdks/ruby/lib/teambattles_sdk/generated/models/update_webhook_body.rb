require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Partial update of a webhook endpoint.
            class UpdateWebhookBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ##
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ##
                # Replacement event token list (at least one when present).
                @events
                ##
                # Enable/disable the endpoint. Re-enabling resets the failure count.
                @is_active
                ##
                # New human label.
                @label
                ##
                # New HTTPS endpoint URL.
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
                ## Instantiates a new UpdateWebhookBody and sets the default values.
                ## @return a void
                ##
                def initialize()
                    @additional_data = Hash.new
                end
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a update_webhook_body
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpdateWebhookBody.new
                end
                ##
                ## Gets the events property value. Replacement event token list (at least one when present).
                ## @return a string
                ##
                def events
                    return @events
                end
                ##
                ## Sets the events property value. Replacement event token list (at least one when present).
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
                        "isActive" => lambda {|n| @is_active = n.get_boolean_value() },
                        "label" => lambda {|n| @label = n.get_string_value() },
                        "url" => lambda {|n| @url = n.get_string_value() },
                    }
                end
                ##
                ## Gets the isActive property value. Enable/disable the endpoint. Re-enabling resets the failure count.
                ## @return a boolean
                ##
                def is_active
                    return @is_active
                end
                ##
                ## Sets the isActive property value. Enable/disable the endpoint. Re-enabling resets the failure count.
                ## @param value Value to set for the isActive property.
                ## @return a void
                ##
                def is_active=(value)
                    @is_active = value
                end
                ##
                ## Gets the label property value. New human label.
                ## @return a string
                ##
                def label
                    return @label
                end
                ##
                ## Sets the label property value. New human label.
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
                    writer.write_boolean_value("isActive", @is_active)
                    writer.write_string_value("label", @label)
                    writer.write_string_value("url", @url)
                    writer.write_additional_data(@additional_data)
                end
                ##
                ## Gets the url property value. New HTTPS endpoint URL.
                ## @return a string
                ##
                def url
                    return @url
                end
                ##
                ## Sets the url property value. New HTTPS endpoint URL.
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
