require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Filters for public tournament discovery.
            class TournamentDiscoverBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Filter by bracket format.
                @format
                ## 
                # Filter to a single game by Convex ID.
                @game_id
                ## 
                # Page size, 1-50.
                @limit
                ## 
                # 1-based page number.
                @page
                ## 
                # Case-insensitive name substring. Ignored below 2 characters.
                @search
                ## 
                # Filter by lifecycle status.
                @status
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
                ## Instantiates a new TournamentDiscoverBody and sets the default values.
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
                ## @return a tournament_discover_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentDiscoverBody.new
                end
                ## 
                ## Gets the format property value. Filter by bracket format.
                ## @return a tournament_format
                ## 
                def format
                    return @format
                end
                ## 
                ## Sets the format property value. Filter by bracket format.
                ## @param value Value to set for the format property.
                ## @return a void
                ## 
                def format=(value)
                    @format = value
                end
                ## 
                ## Gets the gameId property value. Filter to a single game by Convex ID.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Filter to a single game by Convex ID.
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
                        "format" => lambda {|n| @format = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentFormat) },
                        "gameId" => lambda {|n| @game_id = n.get_string_value() },
                        "limit" => lambda {|n| @limit = n.get_number_value() },
                        "page" => lambda {|n| @page = n.get_number_value() },
                        "search" => lambda {|n| @search = n.get_string_value() },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentStatus) },
                    }
                end
                ## 
                ## Gets the limit property value. Page size, 1-50.
                ## @return a integer
                ## 
                def limit
                    return @limit
                end
                ## 
                ## Sets the limit property value. Page size, 1-50.
                ## @param value Value to set for the limit property.
                ## @return a void
                ## 
                def limit=(value)
                    @limit = value
                end
                ## 
                ## Gets the page property value. 1-based page number.
                ## @return a integer
                ## 
                def page
                    return @page
                end
                ## 
                ## Sets the page property value. 1-based page number.
                ## @param value Value to set for the page property.
                ## @return a void
                ## 
                def page=(value)
                    @page = value
                end
                ## 
                ## Gets the search property value. Case-insensitive name substring. Ignored below 2 characters.
                ## @return a string
                ## 
                def search
                    return @search
                end
                ## 
                ## Sets the search property value. Case-insensitive name substring. Ignored below 2 characters.
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
                    writer.write_enum_value("format", @format)
                    writer.write_string_value("gameId", @game_id)
                    writer.write_number_value("limit", @limit)
                    writer.write_number_value("page", @page)
                    writer.write_string_value("search", @search)
                    writer.write_enum_value("status", @status)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the status property value. Filter by lifecycle status.
                ## @return a tournament_status
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. Filter by lifecycle status.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
            end
        end
    end
end
