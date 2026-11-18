require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class TwitchStreamSignalsResultRejected
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Why: error_twitch_channel_not_found or error_stream_index_add_limit.
                @code
                ## 
                # Twitch user id that was not taken.
                @id
                ## 
                ## Gets the code property value. Why: error_twitch_channel_not_found or error_stream_index_add_limit.
                ## @return a string
                ## 
                def code
                    return @code
                end
                ## 
                ## Sets the code property value. Why: error_twitch_channel_not_found or error_stream_index_add_limit.
                ## @param value Value to set for the code property.
                ## @return a void
                ## 
                def code=(value)
                    @code = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a twitch_stream_signals_result_rejected
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TwitchStreamSignalsResultRejected.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "code" => lambda {|n| @code = n.get_string_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the id property value. Twitch user id that was not taken.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Twitch user id that was not taken.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("code", @code)
                    writer.write_string_value("id", @id)
                end
            end
        end
    end
end
