require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Game-scoped playlist response.
            class ApiGamePlaylistsResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Static public game catalog entry.
                @game
                ## 
                # The playlists property
                @playlists
                ## 
                # The timestamp property
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_game_playlists_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiGamePlaylistsResponse.new
                end
                ## 
                ## Gets the game property value. Static public game catalog entry.
                ## @return a api_game_catalog_entry
                ## 
                def game
                    return @game
                end
                ## 
                ## Sets the game property value. Static public game catalog entry.
                ## @param value Value to set for the game property.
                ## @return a void
                ## 
                def game=(value)
                    @game = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "game" => lambda {|n| @game = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameCatalogEntry.create_from_discriminator_value(pn) }) },
                        "playlists" => lambda {|n| @playlists = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGamePlaylist.create_from_discriminator_value(pn) }) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the playlists property value. The playlists property
                ## @return a api_game_playlist
                ## 
                def playlists
                    return @playlists
                end
                ## 
                ## Sets the playlists property value. The playlists property
                ## @param value Value to set for the playlists property.
                ## @return a void
                ## 
                def playlists=(value)
                    @playlists = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("game", @game)
                    writer.write_collection_of_object_values("playlists", @playlists)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the timestamp property value. The timestamp property
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. The timestamp property
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
