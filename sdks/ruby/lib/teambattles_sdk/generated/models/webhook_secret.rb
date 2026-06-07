require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # One-time signing-secret reveal (create/rotate).
            class WebhookSecret
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # The endpoint id the secret belongs to.
                @id
                ##
                # First 8 chars of the new signing secret.
                @secret_prefix
                ##
                # Plaintext signing secret. Shown ONCE - store it now.
                @signing_secret
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a webhook_secret
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return WebhookSecret.new
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "secretPrefix" => lambda {|n| @secret_prefix = n.get_string_value() },
                        "signingSecret" => lambda {|n| @signing_secret = n.get_string_value() },
                    }
                end
                ##
                ## Gets the id property value. The endpoint id the secret belongs to.
                ## @return a string
                ##
                def id
                    return @id
                end
                ##
                ## Sets the id property value. The endpoint id the secret belongs to.
                ## @param value Value to set for the id property.
                ## @return a void
                ##
                def id=(value)
                    @id = value
                end
                ##
                ## Gets the secretPrefix property value. First 8 chars of the new signing secret.
                ## @return a string
                ##
                def secret_prefix
                    return @secret_prefix
                end
                ##
                ## Sets the secretPrefix property value. First 8 chars of the new signing secret.
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
                    writer.write_string_value("id", @id)
                    writer.write_string_value("secretPrefix", @secret_prefix)
                    writer.write_string_value("signingSecret", @signing_secret)
                end
                ##
                ## Gets the signingSecret property value. Plaintext signing secret. Shown ONCE - store it now.
                ## @return a string
                ##
                def signing_secret
                    return @signing_secret
                end
                ##
                ## Sets the signingSecret property value. Plaintext signing secret. Shown ONCE - store it now.
                ## @param value Value to set for the signingSecret property.
                ## @return a void
                ##
                def signing_secret=(value)
                    @signing_secret = value
                end
            end
        end
    end
end
