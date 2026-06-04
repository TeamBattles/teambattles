require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Channel-specific Twitch chat badges.
            class TwitchChannelBadges
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Channel-specific Twitch chat badge sets.
                @badges
                ## 
                # Resolved broadcaster (channel) id.
                @broadcaster_id
                ## 
                # Resolved broadcaster display name or login.
                @broadcaster_name
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Gets the badges property value. Channel-specific Twitch chat badge sets.
                ## @return a twitch_badge_set
                ## 
                def badges
                    return @badges
                end
                ## 
                ## Sets the badges property value. Channel-specific Twitch chat badge sets.
                ## @param value Value to set for the badges property.
                ## @return a void
                ## 
                def badges=(value)
                    @badges = value
                end
                ## 
                ## Gets the broadcaster_id property value. Resolved broadcaster (channel) id.
                ## @return a twitch_channel_badges_broadcaster_id
                ## 
                def broadcaster_id
                    return @broadcaster_id
                end
                ## 
                ## Sets the broadcaster_id property value. Resolved broadcaster (channel) id.
                ## @param value Value to set for the broadcaster_id property.
                ## @return a void
                ## 
                def broadcaster_id=(value)
                    @broadcaster_id = value
                end
                ## 
                ## Gets the broadcaster_name property value. Resolved broadcaster display name or login.
                ## @return a twitch_channel_badges_broadcaster_name
                ## 
                def broadcaster_name
                    return @broadcaster_name
                end
                ## 
                ## Sets the broadcaster_name property value. Resolved broadcaster display name or login.
                ## @param value Value to set for the broadcaster_name property.
                ## @return a void
                ## 
                def broadcaster_name=(value)
                    @broadcaster_name = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a twitch_channel_badges
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TwitchChannelBadges.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "badges" => lambda {|n| @badges = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchBadgeSet.create_from_discriminator_value(pn) }) },
                        "broadcaster_id" => lambda {|n| @broadcaster_id = n.get_object_value(lambda {|pn| TwitchChannelBadges::TwitchChannelBadgesBroadcasterId.create_from_discriminator_value(pn) }) },
                        "broadcaster_name" => lambda {|n| @broadcaster_name = n.get_object_value(lambda {|pn| TwitchChannelBadges::TwitchChannelBadgesBroadcasterName.create_from_discriminator_value(pn) }) },
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
                    writer.write_object_value("broadcaster_id", @broadcaster_id)
                    writer.write_object_value("broadcaster_name", @broadcaster_name)
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

                ## 
                # Composed type wrapper for classes string, TwitchChannelBadgesBroadcasterIdMember1
                class TwitchChannelBadgesBroadcasterId
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TwitchChannelBadgesBroadcasterIdMember1
                    @twitch_channel_badges_broadcaster_id_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a twitch_channel_badges_broadcaster_id
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TwitchChannelBadgesBroadcasterId.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TwitchChannelBadges_broadcaster_idMember1" => lambda {|n| @twitch_channel_badges_broadcaster_id_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchChannelBadgesBroadcasterIdMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TwitchChannelBadges_broadcaster_idMember1", @twitch_channel_badges_broadcaster_id_member1)
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
                    ## Gets the TwitchChannelBadges_broadcaster_idMember1 property value. Composed type representation for type TwitchChannelBadgesBroadcasterIdMember1
                    ## @return a twitch_channel_badges_broadcaster_id_member1
                    ## 
                    def twitch_channel_badges_broadcaster_id_member1
                        return @twitch_channel_badges_broadcaster_id_member1
                    end
                    ## 
                    ## Sets the TwitchChannelBadges_broadcaster_idMember1 property value. Composed type representation for type TwitchChannelBadgesBroadcasterIdMember1
                    ## @param value Value to set for the TwitchChannelBadges_broadcaster_idMember1 property.
                    ## @return a void
                    ## 
                    def twitch_channel_badges_broadcaster_id_member1=(value)
                        @twitch_channel_badges_broadcaster_id_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes string, TwitchChannelBadgesBroadcasterNameMember1
                class TwitchChannelBadgesBroadcasterName
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TwitchChannelBadgesBroadcasterNameMember1
                    @twitch_channel_badges_broadcaster_name_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a twitch_channel_badges_broadcaster_name
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TwitchChannelBadgesBroadcasterName.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TwitchChannelBadges_broadcaster_nameMember1" => lambda {|n| @twitch_channel_badges_broadcaster_name_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchChannelBadgesBroadcasterNameMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TwitchChannelBadges_broadcaster_nameMember1", @twitch_channel_badges_broadcaster_name_member1)
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
                    ## Gets the TwitchChannelBadges_broadcaster_nameMember1 property value. Composed type representation for type TwitchChannelBadgesBroadcasterNameMember1
                    ## @return a twitch_channel_badges_broadcaster_name_member1
                    ## 
                    def twitch_channel_badges_broadcaster_name_member1
                        return @twitch_channel_badges_broadcaster_name_member1
                    end
                    ## 
                    ## Sets the TwitchChannelBadges_broadcaster_nameMember1 property value. Composed type representation for type TwitchChannelBadgesBroadcasterNameMember1
                    ## @param value Value to set for the TwitchChannelBadges_broadcaster_nameMember1 property.
                    ## @return a void
                    ## 
                    def twitch_channel_badges_broadcaster_name_member1=(value)
                        @twitch_channel_badges_broadcaster_name_member1 = value
                    end
                end
            end
        end
    end
end
