require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Grand-final advantage rule, copied verbatim from the tournament's `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
            class TournamentGrandFinalAdvantage
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Which advantage the winners-bracket champion carries into the grand final.
                @type
                ## 
                # Map/game wins pre-credited to grand-final slot 1. Only meaningful when `type` is WIN_HEADSTART; a WIN_HEADSTART carrying no value pre-credits nothing.
                @win_headstart
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_grand_final_advantage
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentGrandFinalAdvantage.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "type" => lambda {|n| @type = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentGrandFinalAdvantageType) },
                        "winHeadstart" => lambda {|n| @win_headstart = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_enum_value("type", @type)
                    writer.write_object_value("winHeadstart", @win_headstart)
                end
                ## 
                ## Gets the type property value. Which advantage the winners-bracket champion carries into the grand final.
                ## @return a tournament_grand_final_advantage_type
                ## 
                def type
                    return @type
                end
                ## 
                ## Sets the type property value. Which advantage the winners-bracket champion carries into the grand final.
                ## @param value Value to set for the type property.
                ## @return a void
                ## 
                def type=(value)
                    @type = value
                end
                ## 
                ## Gets the winHeadstart property value. Map/game wins pre-credited to grand-final slot 1. Only meaningful when `type` is WIN_HEADSTART; a WIN_HEADSTART carrying no value pre-credits nothing.
                ## @return a double
                ## 
                def win_headstart
                    return @win_headstart
                end
                ## 
                ## Sets the winHeadstart property value. Map/game wins pre-credited to grand-final slot 1. Only meaningful when `type` is WIN_HEADSTART; a WIN_HEADSTART carrying no value pre-credits nothing.
                ## @param value Value to set for the winHeadstart property.
                ## @return a void
                ## 
                def win_headstart=(value)
                    @win_headstart = value
                end
            end
        end
    end
end
