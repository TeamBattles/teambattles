require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # One placement -> points row.
            class TournamentPlacementPointsEntry
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Final placement, 1 = champion.
                @placement
                ## 
                # League points awarded, 0-1000.
                @points
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
                ## Instantiates a new TournamentPlacementPointsEntry and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_placement_points_entry
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentPlacementPointsEntry.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "placement" => lambda {|n| @placement = n.get_number_value() },
                        "points" => lambda {|n| @points = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the placement property value. Final placement, 1 = champion.
                ## @return a integer
                ## 
                def placement
                    return @placement
                end
                ## 
                ## Sets the placement property value. Final placement, 1 = champion.
                ## @param value Value to set for the placement property.
                ## @return a void
                ## 
                def placement=(value)
                    @placement = value
                end
                ## 
                ## Gets the points property value. League points awarded, 0-1000.
                ## @return a double
                ## 
                def points
                    return @points
                end
                ## 
                ## Sets the points property value. League points awarded, 0-1000.
                ## @param value Value to set for the points property.
                ## @return a void
                ## 
                def points=(value)
                    @points = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("placement", @placement)
                    writer.write_object_value("points", @points)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
