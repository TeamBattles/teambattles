require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # A single webhook delivery-log row.
            class WebhookDelivery
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # Number of delivery attempts made.
                @attempt_count
                ##
                # Emit/creation epoch ms (retention key).
                @created_at
                ##
                # Epoch ms of successful delivery, or null.
                @delivered_at
                ##
                # Last error message, or null.
                @error_message
                ##
                # The delivered event name.
                @event
                ##
                # Delivery-log row id.
                @id
                ##
                # Stable evt_ id, reused across retries (idempotency key).
                @idempotency_id
                ##
                # True for test.ping deliveries.
                @is_test
                ##
                # Epoch ms of the next scheduled retry, or null.
                @next_attempt_at
                ##
                # Lifecycle status of one logical delivery (endpoint x idempotency id).
                @status
                ##
                # Last HTTP response status, or null.
                @status_code
                ##
                # Last update epoch ms.
                @updated_at
                ##
                ## Gets the attemptCount property value. Number of delivery attempts made.
                ## @return a integer
                ##
                def attempt_count
                    return @attempt_count
                end
                ##
                ## Sets the attemptCount property value. Number of delivery attempts made.
                ## @param value Value to set for the attemptCount property.
                ## @return a void
                ##
                def attempt_count=(value)
                    @attempt_count = value
                end
                ##
                ## Gets the createdAt property value. Emit/creation epoch ms (retention key).
                ## @return a double
                ##
                def created_at
                    return @created_at
                end
                ##
                ## Sets the createdAt property value. Emit/creation epoch ms (retention key).
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ##
                def created_at=(value)
                    @created_at = value
                end
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a webhook_delivery
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return WebhookDelivery.new
                end
                ##
                ## Gets the deliveredAt property value. Epoch ms of successful delivery, or null.
                ## @return a webhook_delivery_delivered_at
                ##
                def delivered_at
                    return @delivered_at
                end
                ##
                ## Sets the deliveredAt property value. Epoch ms of successful delivery, or null.
                ## @param value Value to set for the deliveredAt property.
                ## @return a void
                ##
                def delivered_at=(value)
                    @delivered_at = value
                end
                ##
                ## Gets the errorMessage property value. Last error message, or null.
                ## @return a webhook_delivery_error_message
                ##
                def error_message
                    return @error_message
                end
                ##
                ## Sets the errorMessage property value. Last error message, or null.
                ## @param value Value to set for the errorMessage property.
                ## @return a void
                ##
                def error_message=(value)
                    @error_message = value
                end
                ##
                ## Gets the event property value. The delivered event name.
                ## @return a string
                ##
                def event
                    return @event
                end
                ##
                ## Sets the event property value. The delivered event name.
                ## @param value Value to set for the event property.
                ## @return a void
                ##
                def event=(value)
                    @event = value
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "attemptCount" => lambda {|n| @attempt_count = n.get_number_value() },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "deliveredAt" => lambda {|n| @delivered_at = n.get_object_value(lambda {|pn| WebhookDelivery::WebhookDeliveryDeliveredAt.create_from_discriminator_value(pn) }) },
                        "errorMessage" => lambda {|n| @error_message = n.get_object_value(lambda {|pn| WebhookDelivery::WebhookDeliveryErrorMessage.create_from_discriminator_value(pn) }) },
                        "event" => lambda {|n| @event = n.get_string_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "idempotencyId" => lambda {|n| @idempotency_id = n.get_string_value() },
                        "isTest" => lambda {|n| @is_test = n.get_boolean_value() },
                        "nextAttemptAt" => lambda {|n| @next_attempt_at = n.get_object_value(lambda {|pn| WebhookDelivery::WebhookDeliveryNextAttemptAt.create_from_discriminator_value(pn) }) },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::WebhookDeliveryStatus) },
                        "statusCode" => lambda {|n| @status_code = n.get_object_value(lambda {|pn| WebhookDelivery::WebhookDeliveryStatusCode.create_from_discriminator_value(pn) }) },
                        "updatedAt" => lambda {|n| @updated_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    }
                end
                ##
                ## Gets the id property value. Delivery-log row id.
                ## @return a string
                ##
                def id
                    return @id
                end
                ##
                ## Sets the id property value. Delivery-log row id.
                ## @param value Value to set for the id property.
                ## @return a void
                ##
                def id=(value)
                    @id = value
                end
                ##
                ## Gets the idempotencyId property value. Stable evt_ id, reused across retries (idempotency key).
                ## @return a string
                ##
                def idempotency_id
                    return @idempotency_id
                end
                ##
                ## Sets the idempotencyId property value. Stable evt_ id, reused across retries (idempotency key).
                ## @param value Value to set for the idempotencyId property.
                ## @return a void
                ##
                def idempotency_id=(value)
                    @idempotency_id = value
                end
                ##
                ## Gets the isTest property value. True for test.ping deliveries.
                ## @return a boolean
                ##
                def is_test
                    return @is_test
                end
                ##
                ## Sets the isTest property value. True for test.ping deliveries.
                ## @param value Value to set for the isTest property.
                ## @return a void
                ##
                def is_test=(value)
                    @is_test = value
                end
                ##
                ## Gets the nextAttemptAt property value. Epoch ms of the next scheduled retry, or null.
                ## @return a webhook_delivery_next_attempt_at
                ##
                def next_attempt_at
                    return @next_attempt_at
                end
                ##
                ## Sets the nextAttemptAt property value. Epoch ms of the next scheduled retry, or null.
                ## @param value Value to set for the nextAttemptAt property.
                ## @return a void
                ##
                def next_attempt_at=(value)
                    @next_attempt_at = value
                end
                ##
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("attemptCount", @attempt_count)
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_object_value("deliveredAt", @delivered_at)
                    writer.write_object_value("errorMessage", @error_message)
                    writer.write_string_value("event", @event)
                    writer.write_string_value("id", @id)
                    writer.write_string_value("idempotencyId", @idempotency_id)
                    writer.write_boolean_value("isTest", @is_test)
                    writer.write_object_value("nextAttemptAt", @next_attempt_at)
                    writer.write_enum_value("status", @status)
                    writer.write_object_value("statusCode", @status_code)
                    writer.write_object_value("updatedAt", @updated_at)
                end
                ##
                ## Gets the status property value. Lifecycle status of one logical delivery (endpoint x idempotency id).
                ## @return a webhook_delivery_status
                ##
                def status
                    return @status
                end
                ##
                ## Sets the status property value. Lifecycle status of one logical delivery (endpoint x idempotency id).
                ## @param value Value to set for the status property.
                ## @return a void
                ##
                def status=(value)
                    @status = value
                end
                ##
                ## Gets the statusCode property value. Last HTTP response status, or null.
                ## @return a webhook_delivery_status_code
                ##
                def status_code
                    return @status_code
                end
                ##
                ## Sets the statusCode property value. Last HTTP response status, or null.
                ## @param value Value to set for the statusCode property.
                ## @return a void
                ##
                def status_code=(value)
                    @status_code = value
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
                # Composed type wrapper for classes Double, WebhookDeliveryDeliveredAtMember1
                class WebhookDeliveryDeliveredAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type Double
                    @double
                    ##
                    # Composed type representation for type WebhookDeliveryDeliveredAtMember1
                    @webhook_delivery_delivered_at_member1
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a webhook_delivery_delivered_at
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return WebhookDeliveryDeliveredAt.new
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
                            "WebhookDelivery_deliveredAtMember1" => lambda {|n| @webhook_delivery_delivered_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::WebhookDeliveryDeliveredAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("WebhookDelivery_deliveredAtMember1", @webhook_delivery_delivered_at_member1)
                    end
                    ##
                    ## Gets the WebhookDelivery_deliveredAtMember1 property value. Composed type representation for type WebhookDeliveryDeliveredAtMember1
                    ## @return a webhook_delivery_delivered_at_member1
                    ##
                    def webhook_delivery_delivered_at_member1
                        return @webhook_delivery_delivered_at_member1
                    end
                    ##
                    ## Sets the WebhookDelivery_deliveredAtMember1 property value. Composed type representation for type WebhookDeliveryDeliveredAtMember1
                    ## @param value Value to set for the WebhookDelivery_deliveredAtMember1 property.
                    ## @return a void
                    ##
                    def webhook_delivery_delivered_at_member1=(value)
                        @webhook_delivery_delivered_at_member1 = value
                    end
                end

                ##
                # Composed type wrapper for classes string, WebhookDeliveryErrorMessageMember1
                class WebhookDeliveryErrorMessage
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    # Composed type representation for type WebhookDeliveryErrorMessageMember1
                    @webhook_delivery_error_message_member1
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a webhook_delivery_error_message
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return WebhookDeliveryErrorMessage.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "WebhookDelivery_errorMessageMember1" => lambda {|n| @webhook_delivery_error_message_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::WebhookDeliveryErrorMessageMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("WebhookDelivery_errorMessageMember1", @webhook_delivery_error_message_member1)
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
                    ## Gets the WebhookDelivery_errorMessageMember1 property value. Composed type representation for type WebhookDeliveryErrorMessageMember1
                    ## @return a webhook_delivery_error_message_member1
                    ##
                    def webhook_delivery_error_message_member1
                        return @webhook_delivery_error_message_member1
                    end
                    ##
                    ## Sets the WebhookDelivery_errorMessageMember1 property value. Composed type representation for type WebhookDeliveryErrorMessageMember1
                    ## @param value Value to set for the WebhookDelivery_errorMessageMember1 property.
                    ## @return a void
                    ##
                    def webhook_delivery_error_message_member1=(value)
                        @webhook_delivery_error_message_member1 = value
                    end
                end

                ##
                # Composed type wrapper for classes Double, WebhookDeliveryNextAttemptAtMember1
                class WebhookDeliveryNextAttemptAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type Double
                    @double
                    ##
                    # Composed type representation for type WebhookDeliveryNextAttemptAtMember1
                    @webhook_delivery_next_attempt_at_member1
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a webhook_delivery_next_attempt_at
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return WebhookDeliveryNextAttemptAt.new
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
                            "WebhookDelivery_nextAttemptAtMember1" => lambda {|n| @webhook_delivery_next_attempt_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::WebhookDeliveryNextAttemptAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("WebhookDelivery_nextAttemptAtMember1", @webhook_delivery_next_attempt_at_member1)
                    end
                    ##
                    ## Gets the WebhookDelivery_nextAttemptAtMember1 property value. Composed type representation for type WebhookDeliveryNextAttemptAtMember1
                    ## @return a webhook_delivery_next_attempt_at_member1
                    ##
                    def webhook_delivery_next_attempt_at_member1
                        return @webhook_delivery_next_attempt_at_member1
                    end
                    ##
                    ## Sets the WebhookDelivery_nextAttemptAtMember1 property value. Composed type representation for type WebhookDeliveryNextAttemptAtMember1
                    ## @param value Value to set for the WebhookDelivery_nextAttemptAtMember1 property.
                    ## @return a void
                    ##
                    def webhook_delivery_next_attempt_at_member1=(value)
                        @webhook_delivery_next_attempt_at_member1 = value
                    end
                end

                ##
                # Composed type wrapper for classes number, WebhookDeliveryStatusCodeMember1
                class WebhookDeliveryStatusCode
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type number
                    @integer
                    ##
                    # Composed type representation for type WebhookDeliveryStatusCodeMember1
                    @webhook_delivery_status_code_member1
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a webhook_delivery_status_code
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return WebhookDeliveryStatusCode.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "integer" => lambda {|n| @integer = n.get_number_value() },
                            "WebhookDelivery_statusCodeMember1" => lambda {|n| @webhook_delivery_status_code_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::WebhookDeliveryStatusCodeMember1.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ##
                    ## Gets the integer property value. Composed type representation for type number
                    ## @return a integer
                    ##
                    def integer
                        return @integer
                    end
                    ##
                    ## Sets the integer property value. Composed type representation for type number
                    ## @param value Value to set for the integer property.
                    ## @return a void
                    ##
                    def integer=(value)
                        @integer = value
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_number_value("integer", @integer)
                        writer.write_object_value("WebhookDelivery_statusCodeMember1", @webhook_delivery_status_code_member1)
                    end
                    ##
                    ## Gets the WebhookDelivery_statusCodeMember1 property value. Composed type representation for type WebhookDeliveryStatusCodeMember1
                    ## @return a webhook_delivery_status_code_member1
                    ##
                    def webhook_delivery_status_code_member1
                        return @webhook_delivery_status_code_member1
                    end
                    ##
                    ## Sets the WebhookDelivery_statusCodeMember1 property value. Composed type representation for type WebhookDeliveryStatusCodeMember1
                    ## @param value Value to set for the WebhookDelivery_statusCodeMember1 property.
                    ## @return a void
                    ##
                    def webhook_delivery_status_code_member1=(value)
                        @webhook_delivery_status_code_member1 = value
                    end
                end
            end
        end
    end
end
