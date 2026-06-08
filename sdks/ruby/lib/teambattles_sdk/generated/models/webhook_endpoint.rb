require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A webhook endpoint (no secret material).
            class WebhookEndpoint
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Creation epoch ms.
                @created_at
                ## 
                # Subscribed event tokens.
                @events
                ## 
                # Consecutive dead-lettered deliveries (auto-disables at 50).
                @failure_count
                ## 
                # Webhook endpoint id.
                @id
                ## 
                # Whether the endpoint receives deliveries.
                @is_active
                ## 
                # Human label, or null.
                @label
                ## 
                # Epoch ms of the last successful delivery, or null.
                @last_delivered_at
                ## 
                # Epoch ms of the last failed delivery, or null.
                @last_failed_at
                ## 
                # Stringified bound scope id.
                @scope_id
                ## 
                # The single scope dimension an endpoint is bound to.
                @scope_type
                ## 
                # First 8 chars of the current signing secret (display only).
                @secret_prefix
                ## 
                # Last update epoch ms.
                @updated_at
                ## 
                # Delivery URL.
                @url
                ## 
                ## Gets the createdAt property value. Creation epoch ms.
                ## @return a double
                ## 
                def created_at
                    return @created_at
                end
                ## 
                ## Sets the createdAt property value. Creation epoch ms.
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ## 
                def created_at=(value)
                    @created_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a webhook_endpoint
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return WebhookEndpoint.new
                end
                ## 
                ## Gets the events property value. Subscribed event tokens.
                ## @return a string
                ## 
                def events
                    return @events
                end
                ## 
                ## Sets the events property value. Subscribed event tokens.
                ## @param value Value to set for the events property.
                ## @return a void
                ## 
                def events=(value)
                    @events = value
                end
                ## 
                ## Gets the failureCount property value. Consecutive dead-lettered deliveries (auto-disables at 50).
                ## @return a integer
                ## 
                def failure_count
                    return @failure_count
                end
                ## 
                ## Sets the failureCount property value. Consecutive dead-lettered deliveries (auto-disables at 50).
                ## @param value Value to set for the failureCount property.
                ## @return a void
                ## 
                def failure_count=(value)
                    @failure_count = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "events" => lambda {|n| @events = n.get_collection_of_primitive_values(String) },
                        "failureCount" => lambda {|n| @failure_count = n.get_number_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isActive" => lambda {|n| @is_active = n.get_boolean_value() },
                        "label" => lambda {|n| @label = n.get_object_value(lambda {|pn| WebhookEndpoint::WebhookEndpointLabel.create_from_discriminator_value(pn) }) },
                        "lastDeliveredAt" => lambda {|n| @last_delivered_at = n.get_object_value(lambda {|pn| WebhookEndpoint::WebhookEndpointLastDeliveredAt.create_from_discriminator_value(pn) }) },
                        "lastFailedAt" => lambda {|n| @last_failed_at = n.get_object_value(lambda {|pn| WebhookEndpoint::WebhookEndpointLastFailedAt.create_from_discriminator_value(pn) }) },
                        "scopeId" => lambda {|n| @scope_id = n.get_string_value() },
                        "scopeType" => lambda {|n| @scope_type = n.get_enum_value(TeamBattlesSdk::Generated::Models::WebhookEndpointScopeType) },
                        "secretPrefix" => lambda {|n| @secret_prefix = n.get_string_value() },
                        "updatedAt" => lambda {|n| @updated_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "url" => lambda {|n| @url = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the id property value. Webhook endpoint id.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Webhook endpoint id.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the isActive property value. Whether the endpoint receives deliveries.
                ## @return a boolean
                ## 
                def is_active
                    return @is_active
                end
                ## 
                ## Sets the isActive property value. Whether the endpoint receives deliveries.
                ## @param value Value to set for the isActive property.
                ## @return a void
                ## 
                def is_active=(value)
                    @is_active = value
                end
                ## 
                ## Gets the label property value. Human label, or null.
                ## @return a webhook_endpoint_label
                ## 
                def label
                    return @label
                end
                ## 
                ## Sets the label property value. Human label, or null.
                ## @param value Value to set for the label property.
                ## @return a void
                ## 
                def label=(value)
                    @label = value
                end
                ## 
                ## Gets the lastDeliveredAt property value. Epoch ms of the last successful delivery, or null.
                ## @return a webhook_endpoint_last_delivered_at
                ## 
                def last_delivered_at
                    return @last_delivered_at
                end
                ## 
                ## Sets the lastDeliveredAt property value. Epoch ms of the last successful delivery, or null.
                ## @param value Value to set for the lastDeliveredAt property.
                ## @return a void
                ## 
                def last_delivered_at=(value)
                    @last_delivered_at = value
                end
                ## 
                ## Gets the lastFailedAt property value. Epoch ms of the last failed delivery, or null.
                ## @return a webhook_endpoint_last_failed_at
                ## 
                def last_failed_at
                    return @last_failed_at
                end
                ## 
                ## Sets the lastFailedAt property value. Epoch ms of the last failed delivery, or null.
                ## @param value Value to set for the lastFailedAt property.
                ## @return a void
                ## 
                def last_failed_at=(value)
                    @last_failed_at = value
                end
                ## 
                ## Gets the scopeId property value. Stringified bound scope id.
                ## @return a string
                ## 
                def scope_id
                    return @scope_id
                end
                ## 
                ## Sets the scopeId property value. Stringified bound scope id.
                ## @param value Value to set for the scopeId property.
                ## @return a void
                ## 
                def scope_id=(value)
                    @scope_id = value
                end
                ## 
                ## Gets the scopeType property value. The single scope dimension an endpoint is bound to.
                ## @return a webhook_endpoint_scope_type
                ## 
                def scope_type
                    return @scope_type
                end
                ## 
                ## Sets the scopeType property value. The single scope dimension an endpoint is bound to.
                ## @param value Value to set for the scopeType property.
                ## @return a void
                ## 
                def scope_type=(value)
                    @scope_type = value
                end
                ## 
                ## Gets the secretPrefix property value. First 8 chars of the current signing secret (display only).
                ## @return a string
                ## 
                def secret_prefix
                    return @secret_prefix
                end
                ## 
                ## Sets the secretPrefix property value. First 8 chars of the current signing secret (display only).
                ## @param value Value to set for the secretPrefix property.
                ## @return a void
                ## 
                def secret_prefix=(value)
                    @secret_prefix = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_collection_of_primitive_values("events", @events)
                    writer.write_number_value("failureCount", @failure_count)
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isActive", @is_active)
                    writer.write_object_value("label", @label)
                    writer.write_object_value("lastDeliveredAt", @last_delivered_at)
                    writer.write_object_value("lastFailedAt", @last_failed_at)
                    writer.write_string_value("scopeId", @scope_id)
                    writer.write_enum_value("scopeType", @scope_type)
                    writer.write_string_value("secretPrefix", @secret_prefix)
                    writer.write_object_value("updatedAt", @updated_at)
                    writer.write_string_value("url", @url)
                end
                ## 
                ## Gets the updatedAt property value. Last update epoch ms.
                ## @return a double
                ## 
                def updated_at
                    return @updated_at
                end
                ## 
                ## Sets the updatedAt property value. Last update epoch ms.
                ## @param value Value to set for the updatedAt property.
                ## @return a void
                ## 
                def updated_at=(value)
                    @updated_at = value
                end
                ## 
                ## Gets the url property value. Delivery URL.
                ## @return a string
                ## 
                def url
                    return @url
                end
                ## 
                ## Sets the url property value. Delivery URL.
                ## @param value Value to set for the url property.
                ## @return a void
                ## 
                def url=(value)
                    @url = value
                end

                ## 
                # Composed type wrapper for classes string, WebhookEndpointLabelMember1
                class WebhookEndpointLabel
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type WebhookEndpointLabelMember1
                    @webhook_endpoint_label_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a webhook_endpoint_label
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return WebhookEndpointLabel.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "WebhookEndpoint_labelMember1" => lambda {|n| @webhook_endpoint_label_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::WebhookEndpointLabelMember1.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("string", @string)
                        writer.write_object_value("WebhookEndpoint_labelMember1", @webhook_endpoint_label_member1)
                    end
                    ## 
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ## 
                    def string
                        return @string
                    end
                    ## 
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ## 
                    def string=(value)
                        @string = value
                    end
                    ## 
                    ## Gets the WebhookEndpoint_labelMember1 property value. Composed type representation for type WebhookEndpointLabelMember1
                    ## @return a webhook_endpoint_label_member1
                    ## 
                    def webhook_endpoint_label_member1
                        return @webhook_endpoint_label_member1
                    end
                    ## 
                    ## Sets the WebhookEndpoint_labelMember1 property value. Composed type representation for type WebhookEndpointLabelMember1
                    ## @param value Value to set for the WebhookEndpoint_labelMember1 property.
                    ## @return a void
                    ## 
                    def webhook_endpoint_label_member1=(value)
                        @webhook_endpoint_label_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes Double, WebhookEndpointLastDeliveredAtMember1
                class WebhookEndpointLastDeliveredAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type Double
                    @double
                    ## 
                    # Composed type representation for type WebhookEndpointLastDeliveredAtMember1
                    @webhook_endpoint_last_delivered_at_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a webhook_endpoint_last_delivered_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return WebhookEndpointLastDeliveredAt.new
                    end
                    ## 
                    ## Gets the double property value. Composed type representation for type Double
                    ## @return a double
                    ## 
                    def double
                        return @double
                    end
                    ## 
                    ## Sets the double property value. Composed type representation for type Double
                    ## @param value Value to set for the double property.
                    ## @return a void
                    ## 
                    def double=(value)
                        @double = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                            "WebhookEndpoint_lastDeliveredAtMember1" => lambda {|n| @webhook_endpoint_last_delivered_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::WebhookEndpointLastDeliveredAtMember1.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("double", @double)
                        writer.write_object_value("WebhookEndpoint_lastDeliveredAtMember1", @webhook_endpoint_last_delivered_at_member1)
                    end
                    ## 
                    ## Gets the WebhookEndpoint_lastDeliveredAtMember1 property value. Composed type representation for type WebhookEndpointLastDeliveredAtMember1
                    ## @return a webhook_endpoint_last_delivered_at_member1
                    ## 
                    def webhook_endpoint_last_delivered_at_member1
                        return @webhook_endpoint_last_delivered_at_member1
                    end
                    ## 
                    ## Sets the WebhookEndpoint_lastDeliveredAtMember1 property value. Composed type representation for type WebhookEndpointLastDeliveredAtMember1
                    ## @param value Value to set for the WebhookEndpoint_lastDeliveredAtMember1 property.
                    ## @return a void
                    ## 
                    def webhook_endpoint_last_delivered_at_member1=(value)
                        @webhook_endpoint_last_delivered_at_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes Double, WebhookEndpointLastFailedAtMember1
                class WebhookEndpointLastFailedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type Double
                    @double
                    ## 
                    # Composed type representation for type WebhookEndpointLastFailedAtMember1
                    @webhook_endpoint_last_failed_at_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a webhook_endpoint_last_failed_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return WebhookEndpointLastFailedAt.new
                    end
                    ## 
                    ## Gets the double property value. Composed type representation for type Double
                    ## @return a double
                    ## 
                    def double
                        return @double
                    end
                    ## 
                    ## Sets the double property value. Composed type representation for type Double
                    ## @param value Value to set for the double property.
                    ## @return a void
                    ## 
                    def double=(value)
                        @double = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                            "WebhookEndpoint_lastFailedAtMember1" => lambda {|n| @webhook_endpoint_last_failed_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::WebhookEndpointLastFailedAtMember1.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("double", @double)
                        writer.write_object_value("WebhookEndpoint_lastFailedAtMember1", @webhook_endpoint_last_failed_at_member1)
                    end
                    ## 
                    ## Gets the WebhookEndpoint_lastFailedAtMember1 property value. Composed type representation for type WebhookEndpointLastFailedAtMember1
                    ## @return a webhook_endpoint_last_failed_at_member1
                    ## 
                    def webhook_endpoint_last_failed_at_member1
                        return @webhook_endpoint_last_failed_at_member1
                    end
                    ## 
                    ## Sets the WebhookEndpoint_lastFailedAtMember1 property value. Composed type representation for type WebhookEndpointLastFailedAtMember1
                    ## @param value Value to set for the WebhookEndpoint_lastFailedAtMember1 property.
                    ## @return a void
                    ## 
                    def webhook_endpoint_last_failed_at_member1=(value)
                        @webhook_endpoint_last_failed_at_member1 = value
                    end
                end
            end
        end
    end
end
