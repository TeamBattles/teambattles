require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # API-safe live-stream status for a user.
            class ApiStreamStatus
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Whether the user is live on any platform.
                @is_live
                ## 
                # Platforms the user is currently live on.
                @platforms
                ## 
                # Primary stream details, or null when offline.
                @primary_stream
                ## 
                # User ID these stream details belong to.
                @user_id
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_stream_status
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiStreamStatus.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "isLive" => lambda {|n| @is_live = n.get_boolean_value() },
                        "platforms" => lambda {|n| @platforms = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::StreamPlatform.create_from_discriminator_value(pn) }) },
                        "primaryStream" => lambda {|n| @primary_stream = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiPrimaryStream.create_from_discriminator_value(pn) }) },
                        "userId" => lambda {|n| @user_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the isLive property value. Whether the user is live on any platform.
                ## @return a boolean
                ## 
                def is_live
                    return @is_live
                end
                ## 
                ## Sets the isLive property value. Whether the user is live on any platform.
                ## @param value Value to set for the isLive property.
                ## @return a void
                ## 
                def is_live=(value)
                    @is_live = value
                end
                ## 
                ## Gets the platforms property value. Platforms the user is currently live on.
                ## @return a stream_platform
                ## 
                def platforms
                    return @platforms
                end
                ## 
                ## Sets the platforms property value. Platforms the user is currently live on.
                ## @param value Value to set for the platforms property.
                ## @return a void
                ## 
                def platforms=(value)
                    @platforms = value
                end
                ## 
                ## Gets the primaryStream property value. Primary stream details, or null when offline.
                ## @return a api_primary_stream
                ## 
                def primary_stream
                    return @primary_stream
                end
                ## 
                ## Sets the primaryStream property value. Primary stream details, or null when offline.
                ## @param value Value to set for the primaryStream property.
                ## @return a void
                ## 
                def primary_stream=(value)
                    @primary_stream = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_boolean_value("isLive", @is_live)
                    writer.write_collection_of_object_values("platforms", @platforms)
                    writer.write_object_value("primaryStream", @primary_stream)
                    writer.write_string_value("userId", @user_id)
                end
                ## 
                ## Gets the userId property value. User ID these stream details belong to.
                ## @return a string
                ## 
                def user_id
                    return @user_id
                end
                ## 
                ## Sets the userId property value. User ID these stream details belong to.
                ## @param value Value to set for the userId property.
                ## @return a void
                ## 
                def user_id=(value)
                    @user_id = value
                end
            end
        end
    end
end
