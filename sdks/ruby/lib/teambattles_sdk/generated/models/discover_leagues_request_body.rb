require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Filters and offset pagination for discovering leagues.
            class DiscoverLeaguesRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Filter to leagues that include this game id.
                @game_id
                ## 
                # Page size (1-50). Defaults to 12.
                @limit
                ## 
                # 1-based page number. Defaults to 1.
                @page
                ## 
                # Free-text search across league names.
                @search
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
                ## Instantiates a new DiscoverLeaguesRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                    @limit = 12
                    @page = 1
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a discover_leagues_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return DiscoverLeaguesRequestBody.new
                end
                ## 
                ## Gets the gameId property value. Filter to leagues that include this game id.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Filter to leagues that include this game id.
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
                        "gameId" => lambda {|n| @game_id = n.get_string_value() },
                        "limit" => lambda {|n| @limit = n.get_number_value() },
                        "page" => lambda {|n| @page = n.get_number_value() },
                        "search" => lambda {|n| @search = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the limit property value. Page size (1-50). Defaults to 12.
                ## @return a integer
                ## 
                def limit
                    return @limit
                end
                ## 
                ## Sets the limit property value. Page size (1-50). Defaults to 12.
                ## @param value Value to set for the limit property.
                ## @return a void
                ## 
                def limit=(value)
                    @limit = value
                end
                ## 
                ## Gets the page property value. 1-based page number. Defaults to 1.
                ## @return a integer
                ## 
                def page
                    return @page
                end
                ## 
                ## Sets the page property value. 1-based page number. Defaults to 1.
                ## @param value Value to set for the page property.
                ## @return a void
                ## 
                def page=(value)
                    @page = value
                end
                ## 
                ## Gets the search property value. Free-text search across league names.
                ## @return a string
                ## 
                def search
                    return @search
                end
                ## 
                ## Sets the search property value. Free-text search across league names.
                ## @param value Value to set for the search property.
                ## @return a void
                ## 
                def search=(value)
                    @search = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("gameId", @game_id)
                    writer.write_number_value("limit", @limit)
                    writer.write_number_value("page", @page)
                    writer.write_string_value("search", @search)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
