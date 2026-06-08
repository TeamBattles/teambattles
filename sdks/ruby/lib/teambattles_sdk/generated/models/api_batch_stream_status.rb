require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Compact live-status row returned by the batch endpoint.
            class ApiBatchStreamStatus
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # User ID.
                @id
                ## 
                # The isLive property
                @is_live
                ## 
                # The platforms property
                @platforms
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_batch_stream_status
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiBatchStreamStatus.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isLive" => lambda {|n| @is_live = n.get_boolean_value() },
                        "platforms" => lambda {|n| @platforms = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::StreamPlatform.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the id property value. User ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. User ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the isLive property value. The isLive property
                ## @return a boolean
                ## 
                def is_live
                    return @is_live
                end
                ## 
                ## Sets the isLive property value. The isLive property
                ## @param value Value to set for the isLive property.
                ## @return a void
                ## 
                def is_live=(value)
                    @is_live = value
                end
                ## 
                ## Gets the platforms property value. The platforms property
                ## @return a stream_platform
                ## 
                def platforms
                    return @platforms
                end
                ## 
                ## Sets the platforms property value. The platforms property
                ## @param value Value to set for the platforms property.
                ## @return a void
                ## 
                def platforms=(value)
                    @platforms = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isLive", @is_live)
                    writer.write_collection_of_object_values("platforms", @platforms)
                end
            end
        end
    end
end
