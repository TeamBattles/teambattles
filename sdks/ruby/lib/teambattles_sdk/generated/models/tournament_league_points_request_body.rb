require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # League placement-points configuration.
            class TournamentLeaguePointsRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The placement curve. OMIT the field entirely to fall back to the platform default curve - an empty array is NOT the way to award nothing and is rejected as EMPTY (use `leaguePointsEnabled: false` for that). The table is validated even when `leaguePointsEnabled` is false.
                @league_points_by_placement
                ## 
                # Whether finishing this tournament awards league points to the league season.
                @league_points_enabled
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
                ## Instantiates a new TournamentLeaguePointsRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_league_points_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentLeaguePointsRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "leaguePointsByPlacement" => lambda {|n| @league_points_by_placement = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentPlacementPointsEntry.create_from_discriminator_value(pn) }) },
                        "leaguePointsEnabled" => lambda {|n| @league_points_enabled = n.get_boolean_value() },
                    }
                end
                ## 
                ## Gets the leaguePointsByPlacement property value. The placement curve. OMIT the field entirely to fall back to the platform default curve - an empty array is NOT the way to award nothing and is rejected as EMPTY (use `leaguePointsEnabled: false` for that). The table is validated even when `leaguePointsEnabled` is false.
                ## @return a tournament_placement_points_entry
                ## 
                def league_points_by_placement
                    return @league_points_by_placement
                end
                ## 
                ## Sets the leaguePointsByPlacement property value. The placement curve. OMIT the field entirely to fall back to the platform default curve - an empty array is NOT the way to award nothing and is rejected as EMPTY (use `leaguePointsEnabled: false` for that). The table is validated even when `leaguePointsEnabled` is false.
                ## @param value Value to set for the leaguePointsByPlacement property.
                ## @return a void
                ## 
                def league_points_by_placement=(value)
                    @league_points_by_placement = value
                end
                ## 
                ## Gets the leaguePointsEnabled property value. Whether finishing this tournament awards league points to the league season.
                ## @return a boolean
                ## 
                def league_points_enabled
                    return @league_points_enabled
                end
                ## 
                ## Sets the leaguePointsEnabled property value. Whether finishing this tournament awards league points to the league season.
                ## @param value Value to set for the leaguePointsEnabled property.
                ## @return a void
                ## 
                def league_points_enabled=(value)
                    @league_points_enabled = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_object_values("leaguePointsByPlacement", @league_points_by_placement)
                    writer.write_boolean_value("leaguePointsEnabled", @league_points_enabled)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
