require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Tournament entry payload for a team the caller leads.
            class TournamentTeamEntryBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # User IDs to register as the team's tournament roster. Every entry must be an ACTIVE member of the team named in the path, and the array must hold at least the tournament's teamSize members - a shorter roster answers 400 error_roster_too_small. Users already rostered in this tournament are skipped rather than rejected.
                @roster
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
                ## Instantiates a new TournamentTeamEntryBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_team_entry_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentTeamEntryBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "roster" => lambda {|n| @roster = n.get_collection_of_primitive_values(String) },
                    }
                end
                ## 
                ## Gets the roster property value. User IDs to register as the team's tournament roster. Every entry must be an ACTIVE member of the team named in the path, and the array must hold at least the tournament's teamSize members - a shorter roster answers 400 error_roster_too_small. Users already rostered in this tournament are skipped rather than rejected.
                ## @return a string
                ## 
                def roster
                    return @roster
                end
                ## 
                ## Sets the roster property value. User IDs to register as the team's tournament roster. Every entry must be an ACTIVE member of the team named in the path, and the array must hold at least the tournament's teamSize members - a shorter roster answers 400 error_roster_too_small. Users already rostered in this tournament are skipped rather than rejected.
                ## @param value Value to set for the roster property.
                ## @return a void
                ## 
                def roster=(value)
                    @roster = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_primitive_values("roster", @roster)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
