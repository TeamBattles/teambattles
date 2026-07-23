require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Best-of ladder. Both fields are required when formatConfig is sent.
            class TournamentFormatConfigBestOfLadder
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Default best-of for every round.
                @default
                ## 
                # Per-round best-of overrides, keyed by round key (e.g. `GF`, `R1`).
                @overrides
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
                ## Instantiates a new TournamentFormatConfigBestOfLadder and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_format_config_best_of_ladder
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentFormatConfigBestOfLadder.new
                end
                ## 
                ## Gets the default property value. Default best-of for every round.
                ## @return a integer
                ## 
                def default
                    return @default
                end
                ## 
                ## Sets the default property value. Default best-of for every round.
                ## @param value Value to set for the default property.
                ## @return a void
                ## 
                def default=(value)
                    @default = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "default" => lambda {|n| @default = n.get_number_value() },
                        "overrides" => lambda {|n| @overrides = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentFormatConfigBestOfLadderOverrides.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the overrides property value. Per-round best-of overrides, keyed by round key (e.g. `GF`, `R1`).
                ## @return a tournament_format_config_best_of_ladder_overrides
                ## 
                def overrides
                    return @overrides
                end
                ## 
                ## Sets the overrides property value. Per-round best-of overrides, keyed by round key (e.g. `GF`, `R1`).
                ## @param value Value to set for the overrides property.
                ## @return a void
                ## 
                def overrides=(value)
                    @overrides = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("default", @default)
                    writer.write_object_value("overrides", @overrides)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
