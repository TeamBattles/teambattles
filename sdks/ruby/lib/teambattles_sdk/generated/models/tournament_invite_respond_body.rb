require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Captain response to a tournament invite.
            class TournamentInviteRespondBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # true to accept the invite and enter the tournament, false to decline it. A competitive ban blocks accepting but never declining.
                @accept
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # User IDs to register as the team's tournament roster. REQUIRED when accept is true and ignored when it is false. Every entry must be an ACTIVE member of the invited team, and the array must hold at least the tournament's teamSize members - a shorter roster answers 400 error_roster_too_small.
                @roster
                ## 
                ## Gets the accept property value. true to accept the invite and enter the tournament, false to decline it. A competitive ban blocks accepting but never declining.
                ## @return a boolean
                ## 
                def accept
                    return @accept
                end
                ## 
                ## Sets the accept property value. true to accept the invite and enter the tournament, false to decline it. A competitive ban blocks accepting but never declining.
                ## @param value Value to set for the accept property.
                ## @return a void
                ## 
                def accept=(value)
                    @accept = value
                end
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
                ## Instantiates a new TournamentInviteRespondBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_invite_respond_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentInviteRespondBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "accept" => lambda {|n| @accept = n.get_boolean_value() },
                        "roster" => lambda {|n| @roster = n.get_collection_of_primitive_values(String) },
                    }
                end
                ## 
                ## Gets the roster property value. User IDs to register as the team's tournament roster. REQUIRED when accept is true and ignored when it is false. Every entry must be an ACTIVE member of the invited team, and the array must hold at least the tournament's teamSize members - a shorter roster answers 400 error_roster_too_small.
                ## @return a string
                ## 
                def roster
                    return @roster
                end
                ## 
                ## Sets the roster property value. User IDs to register as the team's tournament roster. REQUIRED when accept is true and ignored when it is false. Every entry must be an ACTIVE member of the invited team, and the array must hold at least the tournament's teamSize members - a shorter roster answers 400 error_roster_too_small.
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
                    writer.write_boolean_value("accept", @accept)
                    writer.write_collection_of_primitive_values("roster", @roster)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
