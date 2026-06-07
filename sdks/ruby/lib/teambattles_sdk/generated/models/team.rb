require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # A team participating in a match.
            class Team
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
                # Team tag (short identifier).
                @tag
                ##
                ## Gets the avatarUrl property value. Team avatar URL.
                ## @return a team_avatar_url
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
                ## @return a team
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return Team.new
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_object_value(lambda {|pn| Team::TeamAvatarUrl.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
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
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("avatarUrl", @avatar_url)
                    writer.write_string_value("id", @id)
                    writer.write_string_value("name", @name)
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
                # Composed type wrapper for classes string, TeamAvatarUrlMember1
                class TeamAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    # Composed type representation for type TeamAvatarUrlMember1
                    @team_avatar_url_member1
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a team_avatar_url
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TeamAvatarUrl.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "Team_avatarUrlMember1" => lambda {|n| @team_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TeamAvatarUrlMember1.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ##
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ##
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("string", @string)
                        writer.write_object_value("Team_avatarUrlMember1", @team_avatar_url_member1)
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
                    ##
                    ## Gets the Team_avatarUrlMember1 property value. Composed type representation for type TeamAvatarUrlMember1
                    ## @return a team_avatar_url_member1
                    ##
                    def team_avatar_url_member1
                        return @team_avatar_url_member1
                    end
                    ##
                    ## Sets the Team_avatarUrlMember1 property value. Composed type representation for type TeamAvatarUrlMember1
                    ## @param value Value to set for the Team_avatarUrlMember1 property.
                    ## @return a void
                    ##
                    def team_avatar_url_member1=(value)
                        @team_avatar_url_member1 = value
                    end
                end
            end
        end
    end
end
