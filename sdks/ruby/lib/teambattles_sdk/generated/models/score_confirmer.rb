require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Identity of the captain who confirmed a score.
            class ScoreConfirmer
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Confirmation time (ISO 8601).
                @confirmed_at
                ## 
                # The teamId property
                @team_id
                ## 
                # The userId property
                @user_id
                ## 
                ## Gets the confirmedAt property value. Confirmation time (ISO 8601).
                ## @return a score_confirmer_confirmed_at
                ## 
                def confirmed_at
                    return @confirmed_at
                end
                ## 
                ## Sets the confirmedAt property value. Confirmation time (ISO 8601).
                ## @param value Value to set for the confirmedAt property.
                ## @return a void
                ## 
                def confirmed_at=(value)
                    @confirmed_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a score_confirmer
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ScoreConfirmer.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "confirmedAt" => lambda {|n| @confirmed_at = n.get_object_value(lambda {|pn| ScoreConfirmer::ScoreConfirmerConfirmedAt.create_from_discriminator_value(pn) }) },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                        "userId" => lambda {|n| @user_id = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("confirmedAt", @confirmed_at)
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

                ## 
                # Composed type wrapper for classes ScoreConfirmerConfirmedAtMember1, string
                class ScoreConfirmerConfirmedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ScoreConfirmerConfirmedAtMember1
                    @score_confirmer_confirmed_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a score_confirmer_confirmed_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ScoreConfirmerConfirmedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ScoreConfirmer_confirmedAtMember1" => lambda {|n| @score_confirmer_confirmed_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ScoreConfirmerConfirmedAtMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the ScoreConfirmer_confirmedAtMember1 property value. Composed type representation for type ScoreConfirmerConfirmedAtMember1
                    ## @return a score_confirmer_confirmed_at_member1
                    ## 
                    def score_confirmer_confirmed_at_member1
                        return @score_confirmer_confirmed_at_member1
                    end
                    ## 
                    ## Sets the ScoreConfirmer_confirmedAtMember1 property value. Composed type representation for type ScoreConfirmerConfirmedAtMember1
                    ## @param value Value to set for the ScoreConfirmer_confirmedAtMember1 property.
                    ## @return a void
                    ## 
                    def score_confirmer_confirmed_at_member1=(value)
                        @score_confirmer_confirmed_at_member1 = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ScoreConfirmer_confirmedAtMember1", @score_confirmer_confirmed_at_member1)
                        writer.write_string_value("string", @string)
                    end
                    ## 
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ## 
                    def string
                        return @string
                    end
                    ## 
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ## 
                    def string=(value)
                        @string = value
                    end
                end
            end
        end
    end
end
