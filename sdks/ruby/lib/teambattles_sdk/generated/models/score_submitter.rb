require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Identity of the captain who submitted a score.
            class ScoreSubmitter
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The name property
                @name
                ## 
                # The teamId property
                @team_id
                ## 
                # The userId property
                @user_id
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a score_submitter
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ScoreSubmitter.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                        "userId" => lambda {|n| @user_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the name property value. The name property
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. The name property
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
                    writer.write_string_value("name", @name)
                    writer.write_string_value("teamId", @team_id)
                    writer.write_string_value("userId", @user_id)
                end
                ## 
                ## Gets the teamId property value. The teamId property
                ## @return a string
                ## 
                def team_id
                    return @team_id
                end
                ## 
                ## Sets the teamId property value. The teamId property
                ## @param value Value to set for the teamId property.
                ## @return a void
                ## 
                def team_id=(value)
                    @team_id = value
                end
                ## 
                ## Gets the userId property value. The userId property
                ## @return a string
                ## 
                def user_id
                    return @user_id
                end
                ## 
                ## Sets the userId property value. The userId property
                ## @param value Value to set for the userId property.
                ## @return a void
                ## 
                def user_id=(value)
                    @user_id = value
                end
            end
        end
    end
end
