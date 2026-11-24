require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A single player entry on a match roster.
            class GameRosterPlayer
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Whether the player has checked in for the match.
                @is_checked_in
                ## 
                # Player's display name, or null if unset.
                @name
                ## 
                # ID of the team the player belongs to.
                @team_id
                ## 
                # Player's user ID.
                @user_id
                ## 
                # Player's username, or null if unset.
                @username
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_roster_player
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameRosterPlayer.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "isCheckedIn" => lambda {|n| @is_checked_in = n.get_boolean_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                        "userId" => lambda {|n| @user_id = n.get_string_value() },
                        "username" => lambda {|n| @username = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the isCheckedIn property value. Whether the player has checked in for the match.
                ## @return a boolean
                ## 
                def is_checked_in
                    return @is_checked_in
                end
                ## 
                ## Sets the isCheckedIn property value. Whether the player has checked in for the match.
                ## @param value Value to set for the isCheckedIn property.
                ## @return a void
                ## 
                def is_checked_in=(value)
                    @is_checked_in = value
                end
                ## 
                ## Gets the name property value. Player's display name, or null if unset.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Player's display name, or null if unset.
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
                    writer.write_boolean_value("isCheckedIn", @is_checked_in)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("teamId", @team_id)
                    writer.write_string_value("userId", @user_id)
                    writer.write_string_value("username", @username)
                end
                ## 
                ## Gets the teamId property value. ID of the team the player belongs to.
                ## @return a string
                ## 
                def team_id
                    return @team_id
                end
                ## 
                ## Sets the teamId property value. ID of the team the player belongs to.
                ## @param value Value to set for the teamId property.
                ## @return a void
                ## 
                def team_id=(value)
                    @team_id = value
                end
                ## 
                ## Gets the userId property value. Player's user ID.
                ## @return a string
                ## 
                def user_id
                    return @user_id
                end
                ## 
                ## Sets the userId property value. Player's user ID.
                ## @param value Value to set for the userId property.
                ## @return a void
                ## 
                def user_id=(value)
                    @user_id = value
                end
                ## 
                ## Gets the username property value. Player's username, or null if unset.
                ## @return a string
                ## 
                def username
                    return @username
                end
                ## 
                ## Sets the username property value. Player's username, or null if unset.
                ## @param value Value to set for the username property.
                ## @return a void
                ## 
                def username=(value)
                    @username = value
                end
            end
        end
    end
end
