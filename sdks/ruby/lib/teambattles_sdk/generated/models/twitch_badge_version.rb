require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A single version of a Twitch chat badge.
            class TwitchBadgeVersion
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Optional click action identifier.
                @click_action
                ## 
                # Optional URL opened when the badge is clicked.
                @click_url
                ## 
                # Human-readable badge description.
                @description
                ## 
                # Badge version id (e.g. tier level or numeric id).
                @id
                ## 
                # Badge image URL at 1x resolution.
                @image_url_1x
                ## 
                # Badge image URL at 2x resolution.
                @image_url_2x
                ## 
                # Badge image URL at 4x resolution.
                @image_url_4x
                ## 
                # Human-readable badge title.
                @title
                ## 
                ## Gets the click_action property value. Optional click action identifier.
                ## @return a string
                ## 
                def click_action
                    return @click_action
                end
                ## 
                ## Sets the click_action property value. Optional click action identifier.
                ## @param value Value to set for the click_action property.
                ## @return a void
                ## 
                def click_action=(value)
                    @click_action = value
                end
                ## 
                ## Gets the click_url property value. Optional URL opened when the badge is clicked.
                ## @return a string
                ## 
                def click_url
                    return @click_url
                end
                ## 
                ## Sets the click_url property value. Optional URL opened when the badge is clicked.
                ## @param value Value to set for the click_url property.
                ## @return a void
                ## 
                def click_url=(value)
                    @click_url = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a twitch_badge_version
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TwitchBadgeVersion.new
                end
                ## 
                ## Gets the description property value. Human-readable badge description.
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. Human-readable badge description.
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "click_action" => lambda {|n| @click_action = n.get_string_value() },
                        "click_url" => lambda {|n| @click_url = n.get_string_value() },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "image_url_1x" => lambda {|n| @image_url_1x = n.get_string_value() },
                        "image_url_2x" => lambda {|n| @image_url_2x = n.get_string_value() },
                        "image_url_4x" => lambda {|n| @image_url_4x = n.get_string_value() },
                        "title" => lambda {|n| @title = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the id property value. Badge version id (e.g. tier level or numeric id).
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Badge version id (e.g. tier level or numeric id).
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the image_url_1x property value. Badge image URL at 1x resolution.
                ## @return a string
                ## 
                def image_url_1x
                    return @image_url_1x
                end
                ## 
                ## Sets the image_url_1x property value. Badge image URL at 1x resolution.
                ## @param value Value to set for the image_url_1x property.
                ## @return a void
                ## 
                def image_url_1x=(value)
                    @image_url_1x = value
                end
                ## 
                ## Gets the image_url_2x property value. Badge image URL at 2x resolution.
                ## @return a string
                ## 
                def image_url_2x
                    return @image_url_2x
                end
                ## 
                ## Sets the image_url_2x property value. Badge image URL at 2x resolution.
                ## @param value Value to set for the image_url_2x property.
                ## @return a void
                ## 
                def image_url_2x=(value)
                    @image_url_2x = value
                end
                ## 
                ## Gets the image_url_4x property value. Badge image URL at 4x resolution.
                ## @return a string
                ## 
                def image_url_4x
                    return @image_url_4x
                end
                ## 
                ## Sets the image_url_4x property value. Badge image URL at 4x resolution.
                ## @param value Value to set for the image_url_4x property.
                ## @return a void
                ## 
                def image_url_4x=(value)
                    @image_url_4x = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("click_action", @click_action)
                    writer.write_string_value("click_url", @click_url)
                    writer.write_string_value("description", @description)
                    writer.write_string_value("id", @id)
                    writer.write_string_value("image_url_1x", @image_url_1x)
                    writer.write_string_value("image_url_2x", @image_url_2x)
                    writer.write_string_value("image_url_4x", @image_url_4x)
                    writer.write_string_value("title", @title)
                end
                ## 
                ## Gets the title property value. Human-readable badge title.
                ## @return a string
                ## 
                def title
                    return @title
                end
                ## 
                ## Sets the title property value. Human-readable badge title.
                ## @param value Value to set for the title property.
                ## @return a void
                ## 
                def title=(value)
                    @title = value
                end
            end
        end
    end
end
