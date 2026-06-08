require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Team summary embedded in SP-2 match reads.
            class ApiMatchTeam
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Team avatar URL.
                @avatar_url
                ## 
                # Team ID.
                @id
                ## 
                # Team name.
                @name
                ## 
                # The score property
                @score
                ## 
                # Team tag (short identifier).
                @tag
                ## 
                ## Gets the avatarUrl property value. Team avatar URL.
                ## @return a api_match_team_avatar_url
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
                ## @return a api_match_team
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiMatchTeam.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_object_value(lambda {|pn| ApiMatchTeam::ApiMatchTeamAvatarUrl.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "score" => lambda {|n| @score = n.get_object_value(lambda {|pn| ApiMatchTeam::ApiMatchTeamScore.create_from_discriminator_value(pn) }) },
                        "tag" => lambda {|n| @tag = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the id property value. Team ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Team ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the name property value. Team name.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Team name.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the score property value. The score property
                ## @return a api_match_team_score
                ## 
                def score
                    return @score
                end
                ## 
                ## Sets the score property value. The score property
                ## @param value Value to set for the score property.
                ## @return a void
                ## 
                def score=(value)
                    @score = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("avatarUrl", @avatar_url)
                    writer.write_string_value("id", @id)
                    writer.write_string_value("name", @name)
                    writer.write_object_value("score", @score)
                    writer.write_string_value("tag", @tag)
                end
                ## 
                ## Gets the tag property value. Team tag (short identifier).
                ## @return a string
                ## 
                def tag
                    return @tag
                end
                ## 
                ## Sets the tag property value. Team tag (short identifier).
                ## @param value Value to set for the tag property.
                ## @return a void
                ## 
                def tag=(value)
                    @tag = value
                end

                ## 
                # Composed type wrapper for classes ApiMatchTeamAvatarUrlMember1, string
                class ApiMatchTeamAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiMatchTeamAvatarUrlMember1
                    @api_match_team_avatar_url_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiMatchTeam_avatarUrlMember1 property value. Composed type representation for type ApiMatchTeamAvatarUrlMember1
                    ## @return a api_match_team_avatar_url_member1
                    ## 
                    def api_match_team_avatar_url_member1
                        return @api_match_team_avatar_url_member1
                    end
                    ## 
                    ## Sets the ApiMatchTeam_avatarUrlMember1 property value. Composed type representation for type ApiMatchTeamAvatarUrlMember1
                    ## @param value Value to set for the ApiMatchTeam_avatarUrlMember1 property.
                    ## @return a void
                    ## 
                    def api_match_team_avatar_url_member1=(value)
                        @api_match_team_avatar_url_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_team_avatar_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchTeamAvatarUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiMatchTeam_avatarUrlMember1" => lambda {|n| @api_match_team_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchTeamAvatarUrlMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiMatchTeam_avatarUrlMember1", @api_match_team_avatar_url_member1)
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

                ## 
                # Composed type wrapper for classes ApiMatchTeamScoreMember1, number
                class ApiMatchTeamScore
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiMatchTeamScoreMember1
                    @api_match_team_score_member1
                    ## 
                    # Composed type representation for type number
                    @integer
                    ## 
                    ## Gets the ApiMatchTeam_scoreMember1 property value. Composed type representation for type ApiMatchTeamScoreMember1
                    ## @return a api_match_team_score_member1
                    ## 
                    def api_match_team_score_member1
                        return @api_match_team_score_member1
                    end
                    ## 
                    ## Sets the ApiMatchTeam_scoreMember1 property value. Composed type representation for type ApiMatchTeamScoreMember1
                    ## @param value Value to set for the ApiMatchTeam_scoreMember1 property.
                    ## @return a void
                    ## 
                    def api_match_team_score_member1=(value)
                        @api_match_team_score_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_team_score
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchTeamScore.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiMatchTeam_scoreMember1" => lambda {|n| @api_match_team_score_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchTeamScoreMember1.create_from_discriminator_value(pn) }) },
                            "integer" => lambda {|n| @integer = n.get_number_value() },
                        }
                    end
                    ## 
                    ## Gets the integer property value. Composed type representation for type number
                    ## @return a integer
                    ## 
                    def integer
                        return @integer
                    end
                    ## 
                    ## Sets the integer property value. Composed type representation for type number
                    ## @param value Value to set for the integer property.
                    ## @return a void
                    ## 
                    def integer=(value)
                        @integer = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiMatchTeam_scoreMember1", @api_match_team_score_member1)
                        writer.write_number_value("integer", @integer)
                    end
                end
            end
        end
    end
end
