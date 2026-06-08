require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class LeagueBrandingSocials
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The discord property
                @discord
                ## 
                # The twitch property
                @twitch
                ## 
                # The twitter property
                @twitter
                ## 
                # The website property
                @website
                ## 
                # The youtube property
                @youtube
                ## 
                ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new LeagueBrandingSocials and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a league_branding_socials
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeagueBrandingSocials.new
                end
                ## 
                ## Gets the discord property value. The discord property
                ## @return a string
                ## 
                def discord
                    return @discord
                end
                ## 
                ## Sets the discord property value. The discord property
                ## @param value Value to set for the discord property.
                ## @return a void
                ## 
                def discord=(value)
                    @discord = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "discord" => lambda {|n| @discord = n.get_string_value() },
                        "twitch" => lambda {|n| @twitch = n.get_string_value() },
                        "twitter" => lambda {|n| @twitter = n.get_string_value() },
                        "website" => lambda {|n| @website = n.get_string_value() },
                        "youtube" => lambda {|n| @youtube = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("discord", @discord)
                    writer.write_string_value("twitch", @twitch)
                    writer.write_string_value("twitter", @twitter)
                    writer.write_string_value("website", @website)
                    writer.write_string_value("youtube", @youtube)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the twitch property value. The twitch property
                ## @return a string
                ## 
                def twitch
                    return @twitch
                end
                ## 
                ## Sets the twitch property value. The twitch property
                ## @param value Value to set for the twitch property.
                ## @return a void
                ## 
                def twitch=(value)
                    @twitch = value
                end
                ## 
                ## Gets the twitter property value. The twitter property
                ## @return a string
                ## 
                def twitter
                    return @twitter
                end
                ## 
                ## Sets the twitter property value. The twitter property
                ## @param value Value to set for the twitter property.
                ## @return a void
                ## 
                def twitter=(value)
                    @twitter = value
                end
                ## 
                ## Gets the website property value. The website property
                ## @return a string
                ## 
                def website
                    return @website
                end
                ## 
                ## Sets the website property value. The website property
                ## @param value Value to set for the website property.
                ## @return a void
                ## 
                def website=(value)
                    @website = value
                end
                ## 
                ## Gets the youtube property value. The youtube property
                ## @return a string
                ## 
                def youtube
                    return @youtube
                end
                ## 
                ## Sets the youtube property value. The youtube property
                ## @param value Value to set for the youtube property.
                ## @return a void
                ## 
                def youtube=(value)
                    @youtube = value
                end
            end
        end
    end
end
