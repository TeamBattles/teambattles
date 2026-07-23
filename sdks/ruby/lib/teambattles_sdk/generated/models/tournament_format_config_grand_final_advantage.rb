require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class TournamentFormatConfigGrandFinalAdvantage
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The type property
                @type
                ## 
                # Maps the upper-bracket finalist starts ahead by. WIN_HEADSTART only.
                @win_headstart
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
                ## Instantiates a new TournamentFormatConfigGrandFinalAdvantage and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_format_config_grand_final_advantage
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentFormatConfigGrandFinalAdvantage.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "type" => lambda {|n| @type = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentFormatConfigGrandFinalAdvantageType) },
                        "winHeadstart" => lambda {|n| @win_headstart = n.get_number_value() },
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
                    writer.write_number_value("winHeadstart", @win_headstart)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the type property value. The type property
                ## @return a tournament_format_config_grand_final_advantage_type
                ## 
                def type
                    return @type
                end
                ## 
                ## Sets the type property value. The type property
                ## @param value Value to set for the type property.
                ## @return a void
                ## 
                def type=(value)
                    @type = value
                end
                ## 
                ## Gets the winHeadstart property value. Maps the upper-bracket finalist starts ahead by. WIN_HEADSTART only.
                ## @return a integer
                ## 
                def win_headstart
                    return @win_headstart
                end
                ## 
                ## Sets the winHeadstart property value. Maps the upper-bracket finalist starts ahead by. WIN_HEADSTART only.
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
