require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A set of related Twitch chat badge versions.
            class TwitchBadgeSet
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Badge set identifier (e.g. subscriber, moderator).
                @set_id
                ## 
                # Available versions within this badge set.
                @versions
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a twitch_badge_set
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TwitchBadgeSet.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "set_id" => lambda {|n| @set_id = n.get_string_value() },
                        "versions" => lambda {|n| @versions = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchBadgeVersion.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("set_id", @set_id)
                    writer.write_collection_of_object_values("versions", @versions)
                end
                ## 
                ## Gets the set_id property value. Badge set identifier (e.g. subscriber, moderator).
                ## @return a string
                ## 
                def set_id
                    return @set_id
                end
                ## 
                ## Sets the set_id property value. Badge set identifier (e.g. subscriber, moderator).
                ## @param value Value to set for the set_id property.
                ## @return a void
                ## 
                def set_id=(value)
                    @set_id = value
                end
                ## 
                ## Gets the versions property value. Available versions within this badge set.
                ## @return a twitch_badge_version
                ## 
                def versions
                    return @versions
                end
                ## 
                ## Sets the versions property value. Available versions within this badge set.
                ## @param value Value to set for the versions property.
                ## @return a void
                ## 
                def versions=(value)
                    @versions = value
                end
            end
        end
    end
end
