require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Stream status plus a response timestamp.
            class ApiStreamStatusEnvelope
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # API-safe live-stream status for a user.
                @stream
                ## 
                # ISO 8601 timestamp.
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_stream_status_envelope
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiStreamStatusEnvelope.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "stream" => lambda {|n| @stream = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiStreamStatus.create_from_discriminator_value(pn) }) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("stream", @stream)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the stream property value. API-safe live-stream status for a user.
                ## @return a api_stream_status
                ## 
                def stream
                    return @stream
                end
                ## 
                ## Sets the stream property value. API-safe live-stream status for a user.
                ## @param value Value to set for the stream property.
                ## @return a void
                ## 
                def stream=(value)
                    @stream = value
                end
                ## 
                ## Gets the timestamp property value. ISO 8601 timestamp.
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. ISO 8601 timestamp.
                ## @param value Value to set for the timestamp property.
                ## @return a void
                ## 
                def timestamp=(value)
                    @timestamp = value
                end
            end
        end
    end
end
