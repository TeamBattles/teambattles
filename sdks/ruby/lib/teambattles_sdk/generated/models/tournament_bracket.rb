require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Rounds, nodes, and participant display data.
            class TournamentBracket
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Participant ID -> { name, avatarUrl, seed } display map.
                @display
                ## 
                # Participant IDs currently disqualified.
                @disqualified
                ## 
                # Grand-final advantage rule, copied verbatim from the tournament's `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
                @grand_final_advantage
                ## 
                # Bracket node documents (slots, results, and links).
                @nodes
                ## 
                # Round documents, ordered by round number ascending.
                @rounds
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_bracket
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentBracket.new
                end
                ## 
                ## Gets the display property value. Participant ID -> { name, avatarUrl, seed } display map.
                ## @return a tournament_bracket_display
                ## 
                def display
                    return @display
                end
                ## 
                ## Sets the display property value. Participant ID -> { name, avatarUrl, seed } display map.
                ## @param value Value to set for the display property.
                ## @return a void
                ## 
                def display=(value)
                    @display = value
                end
                ## 
                ## Gets the disqualified property value. Participant IDs currently disqualified.
                ## @return a string
                ## 
                def disqualified
                    return @disqualified
                end
                ## 
                ## Sets the disqualified property value. Participant IDs currently disqualified.
                ## @param value Value to set for the disqualified property.
                ## @return a void
                ## 
                def disqualified=(value)
                    @disqualified = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "display" => lambda {|n| @display = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentBracketDisplay.create_from_discriminator_value(pn) }) },
                        "disqualified" => lambda {|n| @disqualified = n.get_collection_of_primitive_values(String) },
                        "grandFinalAdvantage" => lambda {|n| @grand_final_advantage = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentGrandFinalAdvantage.create_from_discriminator_value(pn) }) },
                        "nodes" => lambda {|n| @nodes = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentBracketNodes.create_from_discriminator_value(pn) }) },
                        "rounds" => lambda {|n| @rounds = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentBracketRounds.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the grandFinalAdvantage property value. Grand-final advantage rule, copied verbatim from the tournament's `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
                ## @return a tournament_grand_final_advantage
                ## 
                def grand_final_advantage
                    return @grand_final_advantage
                end
                ## 
                ## Sets the grandFinalAdvantage property value. Grand-final advantage rule, copied verbatim from the tournament's `formatConfig`. Absent only when the tournament carries no `formatConfig` at all. NOT display data: WIN_HEADSTART pre-credits grand-final slot 1 at generation time, so any client re-deriving a walkover score pair must apply this rule or it zeroes the credit out.
                ## @param value Value to set for the grandFinalAdvantage property.
                ## @return a void
                ## 
                def grand_final_advantage=(value)
                    @grand_final_advantage = value
                end
                ## 
                ## Gets the nodes property value. Bracket node documents (slots, results, and links).
                ## @return a tournament_bracket_nodes
                ## 
                def nodes
                    return @nodes
                end
                ## 
                ## Sets the nodes property value. Bracket node documents (slots, results, and links).
                ## @param value Value to set for the nodes property.
                ## @return a void
                ## 
                def nodes=(value)
                    @nodes = value
                end
                ## 
                ## Gets the rounds property value. Round documents, ordered by round number ascending.
                ## @return a tournament_bracket_rounds
                ## 
                def rounds
                    return @rounds
                end
                ## 
                ## Sets the rounds property value. Round documents, ordered by round number ascending.
                ## @param value Value to set for the rounds property.
                ## @return a void
                ## 
                def rounds=(value)
                    @rounds = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("display", @display)
                    writer.write_collection_of_primitive_values("disqualified", @disqualified)
                    writer.write_object_value("grandFinalAdvantage", @grand_final_advantage)
                    writer.write_collection_of_object_values("nodes", @nodes)
                    writer.write_collection_of_object_values("rounds", @rounds)
                end
            end
        end
    end
end
