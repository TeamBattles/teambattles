require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # One prize-pool placement row.
            class TournamentPrizeBreakdownEntry
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The amount property
                @amount
                ## 
                # The description property
                @description
                ## 
                # The placement property
                @placement
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
                ## Gets the amount property value. The amount property
                ## @return a double
                ## 
                def amount
                    return @amount
                end
                ## 
                ## Sets the amount property value. The amount property
                ## @param value Value to set for the amount property.
                ## @return a void
                ## 
                def amount=(value)
                    @amount = value
                end
                ## 
                ## Instantiates a new TournamentPrizeBreakdownEntry and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_prize_breakdown_entry
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentPrizeBreakdownEntry.new
                end
                ## 
                ## Gets the description property value. The description property
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. The description property
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "amount" => lambda {|n| @amount = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "placement" => lambda {|n| @placement = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the placement property value. The placement property
                ## @return a integer
                ## 
                def placement
                    return @placement
                end
                ## 
                ## Sets the placement property value. The placement property
                ## @param value Value to set for the placement property.
                ## @return a void
                ## 
                def placement=(value)
                    @placement = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("amount", @amount)
                    writer.write_string_value("description", @description)
                    writer.write_number_value("placement", @placement)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
