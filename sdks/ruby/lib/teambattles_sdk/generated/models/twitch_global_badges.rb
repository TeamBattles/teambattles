require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Global Twitch chat badges.
            class TwitchGlobalBadges
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Global Twitch chat badge sets.
                @badges
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Gets the badges property value. Global Twitch chat badge sets.
                ## @return a twitch_badge_set
                ## 
                def badges
                    return @badges
                end
                ## 
                ## Sets the badges property value. Global Twitch chat badge sets.
                ## @param value Value to set for the badges property.
                ## @return a void
                ## 
                def badges=(value)
                    @badges = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a twitch_global_badges
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TwitchGlobalBadges.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "badges" => lambda {|n| @badges = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchBadgeSet.create_from_discriminator_value(pn) }) },
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
                    writer.write_collection_of_object_values("badges", @badges)
                    writer.write_string_value("timestamp", @timestamp)
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
            end
        end
    end
end
