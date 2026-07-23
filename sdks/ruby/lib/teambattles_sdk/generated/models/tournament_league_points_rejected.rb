require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A 400 from this endpoint. A superset of the standard Error body: `reason` adds a machine-readable placement-table reject code when that is what failed.
            class TournamentLeaguePointsRejected < MicrosoftKiotaAbstractions::ApiError
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The details property
                @details
                ## 
                # The error property
                @error
                ## 
                # Present only when the placement table itself was rejected. Absent for the other 400 causes on this endpoint (a non-league host, or a finalized tournament).
                @reason
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_league_points_rejected
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentLeaguePointsRejected.new
                end
                ## 
                ## Gets the details property value. The details property
                ## @return a string
                ## 
                def details
                    return @details
                end
                ## 
                ## Sets the details property value. The details property
                ## @param value Value to set for the details property.
                ## @return a void
                ## 
                def details=(value)
                    @details = value
                end
                ## 
                ## Gets the error property value. The error property
                ## @return a string
                ## 
                def error
                    return @error
                end
                ## 
                ## Sets the error property value. The error property
                ## @param value Value to set for the error property.
                ## @return a void
                ## 
                def error=(value)
                    @error = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return super.merge({
                        "details" => lambda {|n| @details = n.get_string_value() },
                        "error" => lambda {|n| @error = n.get_string_value() },
                        "reason" => lambda {|n| @reason = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentPlacementPointsError) },
                    })
                end
                ## 
                ## Gets the reason property value. Present only when the placement table itself was rejected. Absent for the other 400 causes on this endpoint (a non-league host, or a finalized tournament).
                ## @return a tournament_placement_points_error
                ## 
                def reason
                    return @reason
                end
                ## 
                ## Sets the reason property value. Present only when the placement table itself was rejected. Absent for the other 400 causes on this endpoint (a non-league host, or a finalized tournament).
                ## @param value Value to set for the reason property.
                ## @return a void
                ## 
                def reason=(value)
                    @reason = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    super
                    writer.write_string_value("details", @details)
                    writer.write_string_value("error", @error)
                    writer.write_enum_value("reason", @reason)
                end
            end
        end
    end
end
