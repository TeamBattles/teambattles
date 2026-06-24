require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Sends an announcement to all members of the league.
            class AnnounceLeagueRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Announcement body text.
                @body
                ## 
                # Announcement title.
                @title
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
                ## Gets the body property value. Announcement body text.
                ## @return a string
                ## 
                def body
                    return @body
                end
                ## 
                ## Sets the body property value. Announcement body text.
                ## @param value Value to set for the body property.
                ## @return a void
                ## 
                def body=(value)
                    @body = value
                end
                ## 
                ## Instantiates a new AnnounceLeagueRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a announce_league_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return AnnounceLeagueRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "body" => lambda {|n| @body = n.get_string_value() },
                        "title" => lambda {|n| @title = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("body", @body)
                    writer.write_string_value("title", @title)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the title property value. Announcement title.
                ## @return a string
                ## 
                def title
                    return @title
                end
                ## 
                ## Sets the title property value. Announcement title.
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
