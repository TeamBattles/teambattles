require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Game catalog list response.
            class ApiGameCatalogResponse
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # The games property
                @games
                ##
                # The objectives property
                @objectives
                ##
                # The timestamp property
                @timestamp
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_game_catalog_response
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiGameCatalogResponse.new
                end
                ##
                ## Gets the games property value. The games property
                ## @return a api_game_catalog_entry
                ##
                def games
                    return @games
                end
                ##
                ## Sets the games property value. The games property
                ## @param value Value to set for the games property.
                ## @return a void
                ##
                def games=(value)
                    @games = value
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "games" => lambda {|n| @games = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiGameCatalogEntry.create_from_discriminator_value(pn) }) },
                        "objectives" => lambda {|n| @objectives = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiObjective.create_from_discriminator_value(pn) }) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ##
                ## Gets the objectives property value. The objectives property
                ## @return a api_objective
                ##
                def objectives
                    return @objectives
                end
                ##
                ## Sets the objectives property value. The objectives property
                ## @param value Value to set for the objectives property.
                ## @return a void
                ##
                def objectives=(value)
                    @objectives = value
                end
                ##
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_object_values("games", @games)
                    writer.write_collection_of_object_values("objectives", @objectives)
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
