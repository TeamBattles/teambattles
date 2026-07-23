require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # The league placement-points configuration now in effect.
            class TournamentLeaguePointsResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The leaguePointsEnabled property
                @league_points_enabled
                ## 
                # Number of rows in the stored curve, or null when no explicit curve is stored and the platform default applies.
                @placement_count
                ## 
                # The success property
                @success
                ## 
                # The timestamp property
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_league_points_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentLeaguePointsResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "leaguePointsEnabled" => lambda {|n| @league_points_enabled = n.get_boolean_value() },
                        "placementCount" => lambda {|n| @placement_count = n.get_object_value(lambda {|pn| TournamentLeaguePointsResponse::TournamentLeaguePointsResponsePlacementCount.create_from_discriminator_value(pn) }) },
                        "success" => lambda {|n| @success = n.get_boolean_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the leaguePointsEnabled property value. The leaguePointsEnabled property
                ## @return a boolean
                ## 
                def league_points_enabled
                    return @league_points_enabled
                end
                ## 
                ## Sets the leaguePointsEnabled property value. The leaguePointsEnabled property
                ## @param value Value to set for the leaguePointsEnabled property.
                ## @return a void
                ## 
                def league_points_enabled=(value)
                    @league_points_enabled = value
                end
                ## 
                ## Gets the placementCount property value. Number of rows in the stored curve, or null when no explicit curve is stored and the platform default applies.
                ## @return a tournament_league_points_response_placement_count
                ## 
                def placement_count
                    return @placement_count
                end
                ## 
                ## Sets the placementCount property value. Number of rows in the stored curve, or null when no explicit curve is stored and the platform default applies.
                ## @param value Value to set for the placementCount property.
                ## @return a void
                ## 
                def placement_count=(value)
                    @placement_count = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_boolean_value("leaguePointsEnabled", @league_points_enabled)
                    writer.write_object_value("placementCount", @placement_count)
                    writer.write_boolean_value("success", @success)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the success property value. The success property
                ## @return a boolean
                ## 
                def success
                    return @success
                end
                ## 
                ## Sets the success property value. The success property
                ## @param value Value to set for the success property.
                ## @return a void
                ## 
                def success=(value)
                    @success = value
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

                ## 
                # Composed type wrapper for classes number, TournamentLeaguePointsResponsePlacementCountMember1
                class TournamentLeaguePointsResponsePlacementCount
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type number
                    @integer
                    ## 
                    # Composed type representation for type TournamentLeaguePointsResponsePlacementCountMember1
                    @tournament_league_points_response_placement_count_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tournament_league_points_response_placement_count
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TournamentLeaguePointsResponsePlacementCount.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "integer" => lambda {|n| @integer = n.get_number_value() },
                            "TournamentLeaguePointsResponse_placementCountMember1" => lambda {|n| @tournament_league_points_response_placement_count_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentLeaguePointsResponsePlacementCountMember1.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Gets the integer property value. Composed type representation for type number
                    ## @return a integer
                    ## 
                    def integer
                        return @integer
                    end
                    ## 
                    ## Sets the integer property value. Composed type representation for type number
                    ## @param value Value to set for the integer property.
                    ## @return a void
                    ## 
                    def integer=(value)
                        @integer = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_number_value("integer", @integer)
                        writer.write_object_value("TournamentLeaguePointsResponse_placementCountMember1", @tournament_league_points_response_placement_count_member1)
                    end
                    ## 
                    ## Gets the TournamentLeaguePointsResponse_placementCountMember1 property value. Composed type representation for type TournamentLeaguePointsResponsePlacementCountMember1
                    ## @return a tournament_league_points_response_placement_count_member1
                    ## 
                    def tournament_league_points_response_placement_count_member1
                        return @tournament_league_points_response_placement_count_member1
                    end
                    ## 
                    ## Sets the TournamentLeaguePointsResponse_placementCountMember1 property value. Composed type representation for type TournamentLeaguePointsResponsePlacementCountMember1
                    ## @param value Value to set for the TournamentLeaguePointsResponse_placementCountMember1 property.
                    ## @return a void
                    ## 
                    def tournament_league_points_response_placement_count_member1=(value)
                        @tournament_league_points_response_placement_count_member1 = value
                    end
                end
            end
        end
    end
end
