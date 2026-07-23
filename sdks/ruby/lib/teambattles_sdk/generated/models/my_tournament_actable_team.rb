require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A team the caller may act for in this tournament.
            class MyTournamentActableTeam
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Team avatar URL.
                @avatar_url
                ## 
                # Team display name.
                @name
                ## 
                # Team ID.
                @team_id
                ## 
                ## Gets the avatarUrl property value. Team avatar URL.
                ## @return a string
                ## 
                def avatar_url
                    return @avatar_url
                end
                ## 
                ## Sets the avatarUrl property value. Team avatar URL.
                ## @param value Value to set for the avatarUrl property.
                ## @return a void
                ## 
                def avatar_url=(value)
                    @avatar_url = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a my_tournament_actable_team
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MyTournamentActableTeam.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the name property value. Team display name.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Team display name.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("avatarUrl", @avatar_url)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("teamId", @team_id)
                end
                ## 
                ## Gets the teamId property value. Team ID.
                ## @return a string
                ## 
                def team_id
                    return @team_id
                end
                ## 
                ## Sets the teamId property value. Team ID.
                ## @param value Value to set for the teamId property.
                ## @return a void
                ## 
                def team_id=(value)
                    @team_id = value
                end
            end
        end
    end
end
