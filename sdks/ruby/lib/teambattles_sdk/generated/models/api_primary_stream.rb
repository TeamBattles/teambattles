require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # The user's primary (highest-viewer) live stream.
            class ApiPrimaryStream
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Game/category being streamed, when known.
                @game_name
                ## 
                # ISO timestamp the user was last observed live, when known.
                @last_live_at
                ## 
                # Supported streaming platform.
                @platform
                ## 
                # Stream start time (platform-provided ISO timestamp), when known.
                @started_at
                ## 
                # Watch URL, when known.
                @stream_url
                ## 
                # Stream thumbnail URL, when known.
                @thumbnail_url
                ## 
                # Stream title, when known.
                @title
                ## 
                # Current viewer count, when known.
                @viewer_count
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_primary_stream
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiPrimaryStream.new
                end
                ## 
                ## Gets the gameName property value. Game/category being streamed, when known.
                ## @return a string
                ## 
                def game_name
                    return @game_name
                end
                ## 
                ## Sets the gameName property value. Game/category being streamed, when known.
                ## @param value Value to set for the gameName property.
                ## @return a void
                ## 
                def game_name=(value)
                    @game_name = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "gameName" => lambda {|n| @game_name = n.get_string_value() },
                        "lastLiveAt" => lambda {|n| @last_live_at = n.get_string_value() },
                        "platform" => lambda {|n| @platform = n.get_enum_value(TeamBattlesSdk::Generated::Models::StreamPlatform) },
                        "startedAt" => lambda {|n| @started_at = n.get_string_value() },
                        "streamUrl" => lambda {|n| @stream_url = n.get_string_value() },
                        "thumbnailUrl" => lambda {|n| @thumbnail_url = n.get_string_value() },
                        "title" => lambda {|n| @title = n.get_string_value() },
                        "viewerCount" => lambda {|n| @viewer_count = n.get_object_value(lambda {|pn| ApiPrimaryStream::ApiPrimaryStreamViewerCount.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the lastLiveAt property value. ISO timestamp the user was last observed live, when known.
                ## @return a string
                ## 
                def last_live_at
                    return @last_live_at
                end
                ## 
                ## Sets the lastLiveAt property value. ISO timestamp the user was last observed live, when known.
                ## @param value Value to set for the lastLiveAt property.
                ## @return a void
                ## 
                def last_live_at=(value)
                    @last_live_at = value
                end
                ## 
                ## Gets the platform property value. Supported streaming platform.
                ## @return a stream_platform
                ## 
                def platform
                    return @platform
                end
                ## 
                ## Sets the platform property value. Supported streaming platform.
                ## @param value Value to set for the platform property.
                ## @return a void
                ## 
                def platform=(value)
                    @platform = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("gameName", @game_name)
                    writer.write_string_value("lastLiveAt", @last_live_at)
                    writer.write_enum_value("platform", @platform)
                    writer.write_string_value("startedAt", @started_at)
                    writer.write_string_value("streamUrl", @stream_url)
                    writer.write_string_value("thumbnailUrl", @thumbnail_url)
                    writer.write_string_value("title", @title)
                    writer.write_object_value("viewerCount", @viewer_count)
                end
                ## 
                ## Gets the startedAt property value. Stream start time (platform-provided ISO timestamp), when known.
                ## @return a string
                ## 
                def started_at
                    return @started_at
                end
                ## 
                ## Sets the startedAt property value. Stream start time (platform-provided ISO timestamp), when known.
                ## @param value Value to set for the startedAt property.
                ## @return a void
                ## 
                def started_at=(value)
                    @started_at = value
                end
                ## 
                ## Gets the streamUrl property value. Watch URL, when known.
                ## @return a string
                ## 
                def stream_url
                    return @stream_url
                end
                ## 
                ## Sets the streamUrl property value. Watch URL, when known.
                ## @param value Value to set for the streamUrl property.
                ## @return a void
                ## 
                def stream_url=(value)
                    @stream_url = value
                end
                ## 
                ## Gets the thumbnailUrl property value. Stream thumbnail URL, when known.
                ## @return a string
                ## 
                def thumbnail_url
                    return @thumbnail_url
                end
                ## 
                ## Sets the thumbnailUrl property value. Stream thumbnail URL, when known.
                ## @param value Value to set for the thumbnailUrl property.
                ## @return a void
                ## 
                def thumbnail_url=(value)
                    @thumbnail_url = value
                end
                ## 
                ## Gets the title property value. Stream title, when known.
                ## @return a string
                ## 
                def title
                    return @title
                end
                ## 
                ## Sets the title property value. Stream title, when known.
                ## @param value Value to set for the title property.
                ## @return a void
                ## 
                def title=(value)
                    @title = value
                end
                ## 
                ## Gets the viewerCount property value. Current viewer count, when known.
                ## @return a api_primary_stream_viewer_count
                ## 
                def viewer_count
                    return @viewer_count
                end
                ## 
                ## Sets the viewerCount property value. Current viewer count, when known.
                ## @param value Value to set for the viewerCount property.
                ## @return a void
                ## 
                def viewer_count=(value)
                    @viewer_count = value
                end

                ## 
                # Composed type wrapper for classes ApiPrimaryStreamViewerCountMember1, number
                class ApiPrimaryStreamViewerCount
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiPrimaryStreamViewerCountMember1
                    @api_primary_stream_viewer_count_member1
                    ## 
                    # Composed type representation for type number
                    @integer
                    ## 
                    ## Gets the ApiPrimaryStream_viewerCountMember1 property value. Composed type representation for type ApiPrimaryStreamViewerCountMember1
                    ## @return a api_primary_stream_viewer_count_member1
                    ## 
                    def api_primary_stream_viewer_count_member1
                        return @api_primary_stream_viewer_count_member1
                    end
                    ## 
                    ## Sets the ApiPrimaryStream_viewerCountMember1 property value. Composed type representation for type ApiPrimaryStreamViewerCountMember1
                    ## @param value Value to set for the ApiPrimaryStream_viewerCountMember1 property.
                    ## @return a void
                    ## 
                    def api_primary_stream_viewer_count_member1=(value)
                        @api_primary_stream_viewer_count_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_primary_stream_viewer_count
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiPrimaryStreamViewerCount.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiPrimaryStream_viewerCountMember1" => lambda {|n| @api_primary_stream_viewer_count_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiPrimaryStreamViewerCountMember1.create_from_discriminator_value(pn) }) },
                            "integer" => lambda {|n| @integer = n.get_number_value() },
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
                        writer.write_object_value("ApiPrimaryStream_viewerCountMember1", @api_primary_stream_viewer_count_member1)
                        writer.write_number_value("integer", @integer)
                    end
                end
            end
        end
    end
end
