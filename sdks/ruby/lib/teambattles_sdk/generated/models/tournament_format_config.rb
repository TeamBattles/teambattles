require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Format-specific configuration. Sent whole - it replaces the stored object rather than merging into it.
            class TournamentFormatConfig
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Best-of ladder. Both fields are required when formatConfig is sent.
                @best_of_ladder
                ## 
                # The grandFinalAdvantage property
                @grand_final_advantage
                ## 
                # Round-robin only. 1 = single pass, 2 = double pass.
                @round_robin_passes
                ## 
                # Swiss only. Number of rounds to play.
                @swiss_round_count
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
                ## Gets the bestOfLadder property value. Best-of ladder. Both fields are required when formatConfig is sent.
                ## @return a tournament_format_config_best_of_ladder
                ## 
                def best_of_ladder
                    return @best_of_ladder
                end
                ## 
                ## Sets the bestOfLadder property value. Best-of ladder. Both fields are required when formatConfig is sent.
                ## @param value Value to set for the bestOfLadder property.
                ## @return a void
                ## 
                def best_of_ladder=(value)
                    @best_of_ladder = value
                end
                ## 
                ## Instantiates a new TournamentFormatConfig and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_format_config
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentFormatConfig.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "bestOfLadder" => lambda {|n| @best_of_ladder = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentFormatConfigBestOfLadder.create_from_discriminator_value(pn) }) },
                        "grandFinalAdvantage" => lambda {|n| @grand_final_advantage = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentFormatConfigGrandFinalAdvantage.create_from_discriminator_value(pn) }) },
                        "roundRobinPasses" => lambda {|n| @round_robin_passes = n.get_object_value(lambda {|pn| TournamentFormatConfig::TournamentFormatConfigRoundRobinPasses.create_from_discriminator_value(pn) }) },
                        "swissRoundCount" => lambda {|n| @swiss_round_count = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the grandFinalAdvantage property value. The grandFinalAdvantage property
                ## @return a tournament_format_config_grand_final_advantage
                ## 
                def grand_final_advantage
                    return @grand_final_advantage
                end
                ## 
                ## Sets the grandFinalAdvantage property value. The grandFinalAdvantage property
                ## @param value Value to set for the grandFinalAdvantage property.
                ## @return a void
                ## 
                def grand_final_advantage=(value)
                    @grand_final_advantage = value
                end
                ## 
                ## Gets the roundRobinPasses property value. Round-robin only. 1 = single pass, 2 = double pass.
                ## @return a tournament_format_config_round_robin_passes
                ## 
                def round_robin_passes
                    return @round_robin_passes
                end
                ## 
                ## Sets the roundRobinPasses property value. Round-robin only. 1 = single pass, 2 = double pass.
                ## @param value Value to set for the roundRobinPasses property.
                ## @return a void
                ## 
                def round_robin_passes=(value)
                    @round_robin_passes = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("bestOfLadder", @best_of_ladder)
                    writer.write_object_value("grandFinalAdvantage", @grand_final_advantage)
                    writer.write_object_value("roundRobinPasses", @round_robin_passes)
                    writer.write_number_value("swissRoundCount", @swiss_round_count)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the swissRoundCount property value. Swiss only. Number of rounds to play.
                ## @return a integer
                ## 
                def swiss_round_count
                    return @swiss_round_count
                end
                ## 
                ## Sets the swissRoundCount property value. Swiss only. Number of rounds to play.
                ## @param value Value to set for the swissRoundCount property.
                ## @return a void
                ## 
                def swiss_round_count=(value)
                    @swiss_round_count = value
                end

                ## 
                # Composed type wrapper for classes Double
                class TournamentFormatConfigRoundRobinPasses
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type Double
                    @double
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tournament_format_config_round_robin_passes
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TournamentFormatConfigRoundRobinPasses.new
                    end
                    ## 
                    ## Gets the double property value. Composed type representation for type Double
                    ## @return a double
                    ## 
                    def double
                        return @double
                    end
                    ## 
                    ## Sets the double property value. Composed type representation for type Double
                    ## @param value Value to set for the double property.
                    ## @return a void
                    ## 
                    def double=(value)
                        @double = value
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "double" => lambda {|n| @double = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("double", @double)
                    end
                end
            end
        end
    end
end
