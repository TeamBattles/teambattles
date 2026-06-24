require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Creates a new team as the API key owner.
            class CreateTeamBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Optional team description.
                @description
                ## 
                # Game ID the team competes in.
                @game_id
                ## 
                # Team name.
                @name
                ## 
                # Owning organization ID. The owner must manage it.
                @organization_id
                ## 
                # Optional platform.
                @platform
                ## 
                # Game playlist ID.
                @playlist_id
                ## 
                # Optional region.
                @region
                ## 
                # Team tag (short identifier).
                @tag
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
                ## Instantiates a new CreateTeamBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a create_team_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CreateTeamBody.new
                end
                ## 
                ## Gets the description property value. Optional team description.
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. Optional team description.
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## Gets the gameId property value. Game ID the team competes in.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Game ID the team competes in.
                ## @param value Value to set for the gameId property.
                ## @return a void
                ## 
                def game_id=(value)
                    @game_id = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "gameId" => lambda {|n| @game_id = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "organizationId" => lambda {|n| @organization_id = n.get_string_value() },
                        "platform" => lambda {|n| @platform = n.get_string_value() },
                        "playlistId" => lambda {|n| @playlist_id = n.get_string_value() },
                        "region" => lambda {|n| @region = n.get_string_value() },
                        "tag" => lambda {|n| @tag = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the name property value. Team name.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Team name.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the organizationId property value. Owning organization ID. The owner must manage it.
                ## @return a string
                ## 
                def organization_id
                    return @organization_id
                end
                ## 
                ## Sets the organizationId property value. Owning organization ID. The owner must manage it.
                ## @param value Value to set for the organizationId property.
                ## @return a void
                ## 
                def organization_id=(value)
                    @organization_id = value
                end
                ## 
                ## Gets the platform property value. Optional platform.
                ## @return a string
                ## 
                def platform
                    return @platform
                end
                ## 
                ## Sets the platform property value. Optional platform.
                ## @param value Value to set for the platform property.
                ## @return a void
                ## 
                def platform=(value)
                    @platform = value
                end
                ## 
                ## Gets the playlistId property value. Game playlist ID.
                ## @return a string
                ## 
                def playlist_id
                    return @playlist_id
                end
                ## 
                ## Sets the playlistId property value. Game playlist ID.
                ## @param value Value to set for the playlistId property.
                ## @return a void
                ## 
                def playlist_id=(value)
                    @playlist_id = value
                end
                ## 
                ## Gets the region property value. Optional region.
                ## @return a string
                ## 
                def region
                    return @region
                end
                ## 
                ## Sets the region property value. Optional region.
                ## @param value Value to set for the region property.
                ## @return a void
                ## 
                def region=(value)
                    @region = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("description", @description)
                    writer.write_string_value("gameId", @game_id)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("organizationId", @organization_id)
                    writer.write_string_value("platform", @platform)
                    writer.write_string_value("playlistId", @playlist_id)
                    writer.write_string_value("region", @region)
                    writer.write_string_value("tag", @tag)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the tag property value. Team tag (short identifier).
                ## @return a string
                ## 
                def tag
                    return @tag
                end
                ## 
                ## Sets the tag property value. Team tag (short identifier).
                ## @param value Value to set for the tag property.
                ## @return a void
                ## 
                def tag=(value)
                    @tag = value
                end
            end
        end
    end
end
