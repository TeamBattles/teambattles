require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # API-safe aggregate user stats.
            class ApiUserStats
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # The bestStreak property
                @best_streak
                ##
                # The currentStreak property
                @current_streak
                ##
                # The draws property
                @draws
                ##
                # The experience property
                @experience
                ##
                # The losses property
                @losses
                ##
                # The matchesPlayed property
                @matches_played
                ##
                # User ID these stats belong to.
                @user_id
                ##
                # The winRate property
                @win_rate
                ##
                # The wins property
                @wins
                ##
                ## Gets the bestStreak property value. The bestStreak property
                ## @return a integer
                ##
                def best_streak
                    return @best_streak
                end
                ##
                ## Sets the bestStreak property value. The bestStreak property
                ## @param value Value to set for the bestStreak property.
                ## @return a void
                ##
                def best_streak=(value)
                    @best_streak = value
                end
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_user_stats
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiUserStats.new
                end
                ##
                ## Gets the currentStreak property value. The currentStreak property
                ## @return a integer
                ##
                def current_streak
                    return @current_streak
                end
                ##
                ## Sets the currentStreak property value. The currentStreak property
                ## @param value Value to set for the currentStreak property.
                ## @return a void
                ##
                def current_streak=(value)
                    @current_streak = value
                end
                ##
                ## Gets the draws property value. The draws property
                ## @return a integer
                ##
                def draws
                    return @draws
                end
                ##
                ## Sets the draws property value. The draws property
                ## @param value Value to set for the draws property.
                ## @return a void
                ##
                def draws=(value)
                    @draws = value
                end
                ##
                ## Gets the experience property value. The experience property
                ## @return a double
                ##
                def experience
                    return @experience
                end
                ##
                ## Sets the experience property value. The experience property
                ## @param value Value to set for the experience property.
                ## @return a void
                ##
                def experience=(value)
                    @experience = value
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "bestStreak" => lambda {|n| @best_streak = n.get_number_value() },
                        "currentStreak" => lambda {|n| @current_streak = n.get_number_value() },
                        "draws" => lambda {|n| @draws = n.get_number_value() },
                        "experience" => lambda {|n| @experience = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "losses" => lambda {|n| @losses = n.get_number_value() },
                        "matchesPlayed" => lambda {|n| @matches_played = n.get_number_value() },
                        "userId" => lambda {|n| @user_id = n.get_string_value() },
                        "winRate" => lambda {|n| @win_rate = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "wins" => lambda {|n| @wins = n.get_number_value() },
                    }
                end
                ##
                ## Gets the losses property value. The losses property
                ## @return a integer
                ##
                def losses
                    return @losses
                end
                ##
                ## Sets the losses property value. The losses property
                ## @param value Value to set for the losses property.
                ## @return a void
                ##
                def losses=(value)
                    @losses = value
                end
                ##
                ## Gets the matchesPlayed property value. The matchesPlayed property
                ## @return a integer
                ##
                def matches_played
                    return @matches_played
                end
                ##
                ## Sets the matchesPlayed property value. The matchesPlayed property
                ## @param value Value to set for the matchesPlayed property.
                ## @return a void
                ##
                def matches_played=(value)
                    @matches_played = value
                end
                ##
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("bestStreak", @best_streak)
                    writer.write_number_value("currentStreak", @current_streak)
                    writer.write_number_value("draws", @draws)
                    writer.write_object_value("experience", @experience)
                    writer.write_number_value("losses", @losses)
                    writer.write_number_value("matchesPlayed", @matches_played)
                    writer.write_string_value("userId", @user_id)
                    writer.write_object_value("winRate", @win_rate)
                    writer.write_number_value("wins", @wins)
                end
                ##
                ## Gets the userId property value. User ID these stats belong to.
                ## @return a string
                ##
                def user_id
                    return @user_id
                end
                ##
                ## Sets the userId property value. User ID these stats belong to.
                ## @param value Value to set for the userId property.
                ## @return a void
                ##
                def user_id=(value)
                    @user_id = value
                end
                ##
                ## Gets the winRate property value. The winRate property
                ## @return a double
                ##
                def win_rate
                    return @win_rate
                end
                ##
                ## Sets the winRate property value. The winRate property
                ## @param value Value to set for the winRate property.
                ## @return a void
                ##
                def win_rate=(value)
                    @win_rate = value
                end
                ##
                ## Gets the wins property value. The wins property
                ## @return a integer
                ##
                def wins
                    return @wins
                end
                ##
                ## Sets the wins property value. The wins property
                ## @param value Value to set for the wins property.
                ## @return a void
                ##
                def wins=(value)
                    @wins = value
                end
            end
        end
    end
end
