require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # One recorded Twitch stream.
            class TwitchRecordedStream
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Seconds from the start to the end, or to when it was last seen live.
                @duration_seconds
                ## 
                # Stream end (ISO 8601); null while it was still live at the last pass.
                @ended_at
                ## 
                # Category name, when Twitch reported one.
                @game
                ## 
                # CDN host the recording was found on; null unless recording is available.
                @host
                ## 
                # Channel login when the stream ran; part of the recording path.
                @login
                ## 
                # Unix second used in the recording path; null unless recording is available.
                @path_timestamp
                ## 
                # available: found on Twitch's video CDN. unverified: not checked yet, or not found. removed: Twitch deleted it (only sent when the index keeps removed recordings).
                @recording
                ## 
                # When the recording was found removed (ISO 8601), else null.
                @removed_at
                ## 
                # Stream start (ISO 8601).
                @started_at
                ## 
                # Twitch stream (broadcast) id.
                @stream_id
                ## 
                # Stream title, when Twitch reported one.
                @title
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a twitch_recorded_stream
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TwitchRecordedStream.new
                end
                ## 
                ## Gets the duration_seconds property value. Seconds from the start to the end, or to when it was last seen live.
                ## @return a integer
                ## 
                def duration_seconds
                    return @duration_seconds
                end
                ## 
                ## Sets the duration_seconds property value. Seconds from the start to the end, or to when it was last seen live.
                ## @param value Value to set for the duration_seconds property.
                ## @return a void
                ## 
                def duration_seconds=(value)
                    @duration_seconds = value
                end
                ## 
                ## Gets the ended_at property value. Stream end (ISO 8601); null while it was still live at the last pass.
                ## @return a twitch_recorded_stream_ended_at
                ## 
                def ended_at
                    return @ended_at
                end
                ## 
                ## Sets the ended_at property value. Stream end (ISO 8601); null while it was still live at the last pass.
                ## @param value Value to set for the ended_at property.
                ## @return a void
                ## 
                def ended_at=(value)
                    @ended_at = value
                end
                ## 
                ## Gets the game property value. Category name, when Twitch reported one.
                ## @return a twitch_recorded_stream_game
                ## 
                def game
                    return @game
                end
                ## 
                ## Sets the game property value. Category name, when Twitch reported one.
                ## @param value Value to set for the game property.
                ## @return a void
                ## 
                def game=(value)
                    @game = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "duration_seconds" => lambda {|n| @duration_seconds = n.get_number_value() },
                        "ended_at" => lambda {|n| @ended_at = n.get_object_value(lambda {|pn| TwitchRecordedStream::TwitchRecordedStreamEndedAt.create_from_discriminator_value(pn) }) },
                        "game" => lambda {|n| @game = n.get_object_value(lambda {|pn| TwitchRecordedStream::TwitchRecordedStreamGame.create_from_discriminator_value(pn) }) },
                        "host" => lambda {|n| @host = n.get_object_value(lambda {|pn| TwitchRecordedStream::TwitchRecordedStreamHost.create_from_discriminator_value(pn) }) },
                        "login" => lambda {|n| @login = n.get_string_value() },
                        "path_timestamp" => lambda {|n| @path_timestamp = n.get_object_value(lambda {|pn| TwitchRecordedStream::TwitchRecordedStreamPathTimestamp.create_from_discriminator_value(pn) }) },
                        "recording" => lambda {|n| @recording = n.get_enum_value(TeamBattlesSdk::Generated::Models::TwitchRecordedStreamRecording) },
                        "removed_at" => lambda {|n| @removed_at = n.get_object_value(lambda {|pn| TwitchRecordedStream::TwitchRecordedStreamRemovedAt.create_from_discriminator_value(pn) }) },
                        "started_at" => lambda {|n| @started_at = n.get_string_value() },
                        "stream_id" => lambda {|n| @stream_id = n.get_string_value() },
                        "title" => lambda {|n| @title = n.get_object_value(lambda {|pn| TwitchRecordedStream::TwitchRecordedStreamTitle.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the host property value. CDN host the recording was found on; null unless recording is available.
                ## @return a twitch_recorded_stream_host
                ## 
                def host
                    return @host
                end
                ## 
                ## Sets the host property value. CDN host the recording was found on; null unless recording is available.
                ## @param value Value to set for the host property.
                ## @return a void
                ## 
                def host=(value)
                    @host = value
                end
                ## 
                ## Gets the login property value. Channel login when the stream ran; part of the recording path.
                ## @return a string
                ## 
                def login
                    return @login
                end
                ## 
                ## Sets the login property value. Channel login when the stream ran; part of the recording path.
                ## @param value Value to set for the login property.
                ## @return a void
                ## 
                def login=(value)
                    @login = value
                end
                ## 
                ## Gets the path_timestamp property value. Unix second used in the recording path; null unless recording is available.
                ## @return a twitch_recorded_stream_path_timestamp
                ## 
                def path_timestamp
                    return @path_timestamp
                end
                ## 
                ## Sets the path_timestamp property value. Unix second used in the recording path; null unless recording is available.
                ## @param value Value to set for the path_timestamp property.
                ## @return a void
                ## 
                def path_timestamp=(value)
                    @path_timestamp = value
                end
                ## 
                ## Gets the recording property value. available: found on Twitch's video CDN. unverified: not checked yet, or not found. removed: Twitch deleted it (only sent when the index keeps removed recordings).
                ## @return a twitch_recorded_stream_recording
                ## 
                def recording
                    return @recording
                end
                ## 
                ## Sets the recording property value. available: found on Twitch's video CDN. unverified: not checked yet, or not found. removed: Twitch deleted it (only sent when the index keeps removed recordings).
                ## @param value Value to set for the recording property.
                ## @return a void
                ## 
                def recording=(value)
                    @recording = value
                end
                ## 
                ## Gets the removed_at property value. When the recording was found removed (ISO 8601), else null.
                ## @return a twitch_recorded_stream_removed_at
                ## 
                def removed_at
                    return @removed_at
                end
                ## 
                ## Sets the removed_at property value. When the recording was found removed (ISO 8601), else null.
                ## @param value Value to set for the removed_at property.
                ## @return a void
                ## 
                def removed_at=(value)
                    @removed_at = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("duration_seconds", @duration_seconds)
                    writer.write_object_value("ended_at", @ended_at)
                    writer.write_object_value("game", @game)
                    writer.write_object_value("host", @host)
                    writer.write_string_value("login", @login)
                    writer.write_object_value("path_timestamp", @path_timestamp)
                    writer.write_enum_value("recording", @recording)
                    writer.write_object_value("removed_at", @removed_at)
                    writer.write_string_value("started_at", @started_at)
                    writer.write_string_value("stream_id", @stream_id)
                    writer.write_object_value("title", @title)
                end
                ## 
                ## Gets the started_at property value. Stream start (ISO 8601).
                ## @return a string
                ## 
                def started_at
                    return @started_at
                end
                ## 
                ## Sets the started_at property value. Stream start (ISO 8601).
                ## @param value Value to set for the started_at property.
                ## @return a void
                ## 
                def started_at=(value)
                    @started_at = value
                end
                ## 
                ## Gets the stream_id property value. Twitch stream (broadcast) id.
                ## @return a string
                ## 
                def stream_id
                    return @stream_id
                end
                ## 
                ## Sets the stream_id property value. Twitch stream (broadcast) id.
                ## @param value Value to set for the stream_id property.
                ## @return a void
                ## 
                def stream_id=(value)
                    @stream_id = value
                end
                ## 
                ## Gets the title property value. Stream title, when Twitch reported one.
                ## @return a twitch_recorded_stream_title
                ## 
                def title
                    return @title
                end
                ## 
                ## Sets the title property value. Stream title, when Twitch reported one.
                ## @param value Value to set for the title property.
                ## @return a void
                ## 
                def title=(value)
                    @title = value
                end

                ## 
                # Composed type wrapper for classes string, TwitchRecordedStreamEndedAtMember1
                class TwitchRecordedStreamEndedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TwitchRecordedStreamEndedAtMember1
                    @twitch_recorded_stream_ended_at_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a twitch_recorded_stream_ended_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TwitchRecordedStreamEndedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TwitchRecordedStream_ended_atMember1" => lambda {|n| @twitch_recorded_stream_ended_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchRecordedStreamEndedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TwitchRecordedStream_ended_atMember1", @twitch_recorded_stream_ended_at_member1)
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
                    ## Gets the TwitchRecordedStream_ended_atMember1 property value. Composed type representation for type TwitchRecordedStreamEndedAtMember1
                    ## @return a twitch_recorded_stream_ended_at_member1
                    ## 
                    def twitch_recorded_stream_ended_at_member1
                        return @twitch_recorded_stream_ended_at_member1
                    end
                    ## 
                    ## Sets the TwitchRecordedStream_ended_atMember1 property value. Composed type representation for type TwitchRecordedStreamEndedAtMember1
                    ## @param value Value to set for the TwitchRecordedStream_ended_atMember1 property.
                    ## @return a void
                    ## 
                    def twitch_recorded_stream_ended_at_member1=(value)
                        @twitch_recorded_stream_ended_at_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes string, TwitchRecordedStreamGameMember1
                class TwitchRecordedStreamGame
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TwitchRecordedStreamGameMember1
                    @twitch_recorded_stream_game_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a twitch_recorded_stream_game
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TwitchRecordedStreamGame.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TwitchRecordedStream_gameMember1" => lambda {|n| @twitch_recorded_stream_game_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchRecordedStreamGameMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TwitchRecordedStream_gameMember1", @twitch_recorded_stream_game_member1)
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
                    ## Gets the TwitchRecordedStream_gameMember1 property value. Composed type representation for type TwitchRecordedStreamGameMember1
                    ## @return a twitch_recorded_stream_game_member1
                    ## 
                    def twitch_recorded_stream_game_member1
                        return @twitch_recorded_stream_game_member1
                    end
                    ## 
                    ## Sets the TwitchRecordedStream_gameMember1 property value. Composed type representation for type TwitchRecordedStreamGameMember1
                    ## @param value Value to set for the TwitchRecordedStream_gameMember1 property.
                    ## @return a void
                    ## 
                    def twitch_recorded_stream_game_member1=(value)
                        @twitch_recorded_stream_game_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes string, TwitchRecordedStreamHostMember1
                class TwitchRecordedStreamHost
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TwitchRecordedStreamHostMember1
                    @twitch_recorded_stream_host_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a twitch_recorded_stream_host
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TwitchRecordedStreamHost.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TwitchRecordedStream_hostMember1" => lambda {|n| @twitch_recorded_stream_host_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchRecordedStreamHostMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TwitchRecordedStream_hostMember1", @twitch_recorded_stream_host_member1)
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
                    ## Gets the TwitchRecordedStream_hostMember1 property value. Composed type representation for type TwitchRecordedStreamHostMember1
                    ## @return a twitch_recorded_stream_host_member1
                    ## 
                    def twitch_recorded_stream_host_member1
                        return @twitch_recorded_stream_host_member1
                    end
                    ## 
                    ## Sets the TwitchRecordedStream_hostMember1 property value. Composed type representation for type TwitchRecordedStreamHostMember1
                    ## @param value Value to set for the TwitchRecordedStream_hostMember1 property.
                    ## @return a void
                    ## 
                    def twitch_recorded_stream_host_member1=(value)
                        @twitch_recorded_stream_host_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes number, TwitchRecordedStreamPathTimestampMember1
                class TwitchRecordedStreamPathTimestamp
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type number
                    @integer
                    ## 
                    # Composed type representation for type TwitchRecordedStreamPathTimestampMember1
                    @twitch_recorded_stream_path_timestamp_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a twitch_recorded_stream_path_timestamp
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TwitchRecordedStreamPathTimestamp.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "integer" => lambda {|n| @integer = n.get_number_value() },
                            "TwitchRecordedStream_path_timestampMember1" => lambda {|n| @twitch_recorded_stream_path_timestamp_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchRecordedStreamPathTimestampMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TwitchRecordedStream_path_timestampMember1", @twitch_recorded_stream_path_timestamp_member1)
                    end
                    ## 
                    ## Gets the TwitchRecordedStream_path_timestampMember1 property value. Composed type representation for type TwitchRecordedStreamPathTimestampMember1
                    ## @return a twitch_recorded_stream_path_timestamp_member1
                    ## 
                    def twitch_recorded_stream_path_timestamp_member1
                        return @twitch_recorded_stream_path_timestamp_member1
                    end
                    ## 
                    ## Sets the TwitchRecordedStream_path_timestampMember1 property value. Composed type representation for type TwitchRecordedStreamPathTimestampMember1
                    ## @param value Value to set for the TwitchRecordedStream_path_timestampMember1 property.
                    ## @return a void
                    ## 
                    def twitch_recorded_stream_path_timestamp_member1=(value)
                        @twitch_recorded_stream_path_timestamp_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes string, TwitchRecordedStreamRemovedAtMember1
                class TwitchRecordedStreamRemovedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TwitchRecordedStreamRemovedAtMember1
                    @twitch_recorded_stream_removed_at_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a twitch_recorded_stream_removed_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TwitchRecordedStreamRemovedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TwitchRecordedStream_removed_atMember1" => lambda {|n| @twitch_recorded_stream_removed_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchRecordedStreamRemovedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TwitchRecordedStream_removed_atMember1", @twitch_recorded_stream_removed_at_member1)
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
                    ## Gets the TwitchRecordedStream_removed_atMember1 property value. Composed type representation for type TwitchRecordedStreamRemovedAtMember1
                    ## @return a twitch_recorded_stream_removed_at_member1
                    ## 
                    def twitch_recorded_stream_removed_at_member1
                        return @twitch_recorded_stream_removed_at_member1
                    end
                    ## 
                    ## Sets the TwitchRecordedStream_removed_atMember1 property value. Composed type representation for type TwitchRecordedStreamRemovedAtMember1
                    ## @param value Value to set for the TwitchRecordedStream_removed_atMember1 property.
                    ## @return a void
                    ## 
                    def twitch_recorded_stream_removed_at_member1=(value)
                        @twitch_recorded_stream_removed_at_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes string, TwitchRecordedStreamTitleMember1
                class TwitchRecordedStreamTitle
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TwitchRecordedStreamTitleMember1
                    @twitch_recorded_stream_title_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a twitch_recorded_stream_title
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TwitchRecordedStreamTitle.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TwitchRecordedStream_titleMember1" => lambda {|n| @twitch_recorded_stream_title_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchRecordedStreamTitleMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TwitchRecordedStream_titleMember1", @twitch_recorded_stream_title_member1)
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
                    ## Gets the TwitchRecordedStream_titleMember1 property value. Composed type representation for type TwitchRecordedStreamTitleMember1
                    ## @return a twitch_recorded_stream_title_member1
                    ## 
                    def twitch_recorded_stream_title_member1
                        return @twitch_recorded_stream_title_member1
                    end
                    ## 
                    ## Sets the TwitchRecordedStream_titleMember1 property value. Composed type representation for type TwitchRecordedStreamTitleMember1
                    ## @param value Value to set for the TwitchRecordedStream_titleMember1 property.
                    ## @return a void
                    ## 
                    def twitch_recorded_stream_title_member1=(value)
                        @twitch_recorded_stream_title_member1 = value
                    end
                end
            end
        end
    end
end
