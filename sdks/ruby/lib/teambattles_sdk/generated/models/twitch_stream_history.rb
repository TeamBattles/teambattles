require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A Twitch channel's recorded stream history from the Battles Replay Indexer.
            class TwitchStreamHistory
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Twitch user id of the channel.
                @broadcaster_id
                ## 
                # Channel login.
                @broadcaster_login
                ## 
                # When the index started recording this channel (ISO 8601).
                @indexed_since
                ## 
                # Recorded streams, newest first.
                @streams
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                # Coverage warnings, each a code with its values.
                @warnings
                ## 
                ## Gets the broadcaster_id property value. Twitch user id of the channel.
                ## @return a string
                ## 
                def broadcaster_id
                    return @broadcaster_id
                end
                ## 
                ## Sets the broadcaster_id property value. Twitch user id of the channel.
                ## @param value Value to set for the broadcaster_id property.
                ## @return a void
                ## 
                def broadcaster_id=(value)
                    @broadcaster_id = value
                end
                ## 
                ## Gets the broadcaster_login property value. Channel login.
                ## @return a string
                ## 
                def broadcaster_login
                    return @broadcaster_login
                end
                ## 
                ## Sets the broadcaster_login property value. Channel login.
                ## @param value Value to set for the broadcaster_login property.
                ## @return a void
                ## 
                def broadcaster_login=(value)
                    @broadcaster_login = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a twitch_stream_history
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TwitchStreamHistory.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "broadcaster_id" => lambda {|n| @broadcaster_id = n.get_string_value() },
                        "broadcaster_login" => lambda {|n| @broadcaster_login = n.get_string_value() },
                        "indexed_since" => lambda {|n| @indexed_since = n.get_string_value() },
                        "streams" => lambda {|n| @streams = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchRecordedStream.create_from_discriminator_value(pn) }) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                        "warnings" => lambda {|n| @warnings = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::StreamIndexWarning.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the indexed_since property value. When the index started recording this channel (ISO 8601).
                ## @return a string
                ## 
                def indexed_since
                    return @indexed_since
                end
                ## 
                ## Sets the indexed_since property value. When the index started recording this channel (ISO 8601).
                ## @param value Value to set for the indexed_since property.
                ## @return a void
                ## 
                def indexed_since=(value)
                    @indexed_since = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("broadcaster_id", @broadcaster_id)
                    writer.write_string_value("broadcaster_login", @broadcaster_login)
                    writer.write_string_value("indexed_since", @indexed_since)
                    writer.write_collection_of_object_values("streams", @streams)
                    writer.write_string_value("timestamp", @timestamp)
                    writer.write_collection_of_object_values("warnings", @warnings)
                end
                ## 
                ## Gets the streams property value. Recorded streams, newest first.
                ## @return a twitch_recorded_stream
                ## 
                def streams
                    return @streams
                end
                ## 
                ## Sets the streams property value. Recorded streams, newest first.
                ## @param value Value to set for the streams property.
                ## @return a void
                ## 
                def streams=(value)
                    @streams = value
                end
                ## 
                ## Gets the timestamp property value. Response generation time (ISO 8601).
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. Response generation time (ISO 8601).
                ## @param value Value to set for the timestamp property.
                ## @return a void
                ## 
                def timestamp=(value)
                    @timestamp = value
                end
                ## 
                ## Gets the warnings property value. Coverage warnings, each a code with its values.
                ## @return a stream_index_warning
                ## 
                def warnings
                    return @warnings
                end
                ## 
                ## Sets the warnings property value. Coverage warnings, each a code with its values.
                ## @param value Value to set for the warnings property.
                ## @return a void
                ## 
                def warnings=(value)
                    @warnings = value
                end
            end
        end
    end
end
