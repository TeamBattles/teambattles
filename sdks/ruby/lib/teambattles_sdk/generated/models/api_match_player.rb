require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Player row for a participant-gated match.
            class ApiMatchPlayer
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The attendanceStatus property
                @attendance_status
                ## 
                # The avatarUrl property
                @avatar_url
                ## 
                # The checkedInAt property
                @checked_in_at
                ## 
                # The id property
                @id
                ## 
                # The isCheckedIn property
                @is_checked_in
                ## 
                # The name property
                @name
                ## 
                # The rosterType property
                @roster_type
                ## 
                # The teamId property
                @team_id
                ## 
                # The userId property
                @user_id
                ## 
                # The username property
                @username
                ## 
                ## Gets the attendanceStatus property value. The attendanceStatus property
                ## @return a api_match_player_attendance_status
                ## 
                def attendance_status
                    return @attendance_status
                end
                ## 
                ## Sets the attendanceStatus property value. The attendanceStatus property
                ## @param value Value to set for the attendanceStatus property.
                ## @return a void
                ## 
                def attendance_status=(value)
                    @attendance_status = value
                end
                ## 
                ## Gets the avatarUrl property value. The avatarUrl property
                ## @return a api_match_player_avatar_url
                ## 
                def avatar_url
                    return @avatar_url
                end
                ## 
                ## Sets the avatarUrl property value. The avatarUrl property
                ## @param value Value to set for the avatarUrl property.
                ## @return a void
                ## 
                def avatar_url=(value)
                    @avatar_url = value
                end
                ## 
                ## Gets the checkedInAt property value. The checkedInAt property
                ## @return a api_match_player_checked_in_at
                ## 
                def checked_in_at
                    return @checked_in_at
                end
                ## 
                ## Sets the checkedInAt property value. The checkedInAt property
                ## @param value Value to set for the checkedInAt property.
                ## @return a void
                ## 
                def checked_in_at=(value)
                    @checked_in_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_match_player
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiMatchPlayer.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "attendanceStatus" => lambda {|n| @attendance_status = n.get_enum_value(TeamBattlesSdk::Generated::Models::ApiMatchPlayerAttendanceStatus) },
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_object_value(lambda {|pn| ApiMatchPlayer::ApiMatchPlayerAvatarUrl.create_from_discriminator_value(pn) }) },
                        "checkedInAt" => lambda {|n| @checked_in_at = n.get_object_value(lambda {|pn| ApiMatchPlayer::ApiMatchPlayerCheckedInAt.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isCheckedIn" => lambda {|n| @is_checked_in = n.get_boolean_value() },
                        "name" => lambda {|n| @name = n.get_object_value(lambda {|pn| ApiMatchPlayer::ApiMatchPlayerName.create_from_discriminator_value(pn) }) },
                        "rosterType" => lambda {|n| @roster_type = n.get_enum_value(TeamBattlesSdk::Generated::Models::ApiMatchPlayerRosterType) },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                        "userId" => lambda {|n| @user_id = n.get_string_value() },
                        "username" => lambda {|n| @username = n.get_object_value(lambda {|pn| ApiMatchPlayer::ApiMatchPlayerUsername.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the id property value. The id property
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. The id property
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the isCheckedIn property value. The isCheckedIn property
                ## @return a boolean
                ## 
                def is_checked_in
                    return @is_checked_in
                end
                ## 
                ## Sets the isCheckedIn property value. The isCheckedIn property
                ## @param value Value to set for the isCheckedIn property.
                ## @return a void
                ## 
                def is_checked_in=(value)
                    @is_checked_in = value
                end
                ## 
                ## Gets the name property value. The name property
                ## @return a api_match_player_name
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
                ## Gets the rosterType property value. The rosterType property
                ## @return a api_match_player_roster_type
                ## 
                def roster_type
                    return @roster_type
                end
                ## 
                ## Sets the rosterType property value. The rosterType property
                ## @param value Value to set for the rosterType property.
                ## @return a void
                ## 
                def roster_type=(value)
                    @roster_type = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_enum_value("attendanceStatus", @attendance_status)
                    writer.write_object_value("avatarUrl", @avatar_url)
                    writer.write_object_value("checkedInAt", @checked_in_at)
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isCheckedIn", @is_checked_in)
                    writer.write_object_value("name", @name)
                    writer.write_enum_value("rosterType", @roster_type)
                    writer.write_string_value("teamId", @team_id)
                    writer.write_string_value("userId", @user_id)
                    writer.write_object_value("username", @username)
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
                ## Gets the username property value. The username property
                ## @return a api_match_player_username
                ## 
                def username
                    return @username
                end
                ## 
                ## Sets the username property value. The username property
                ## @param value Value to set for the username property.
                ## @return a void
                ## 
                def username=(value)
                    @username = value
                end

                ## 
                # Composed type wrapper for classes ApiMatchPlayerAvatarUrlMember1, string
                class ApiMatchPlayerAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiMatchPlayerAvatarUrlMember1
                    @api_match_player_avatar_url_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiMatchPlayer_avatarUrlMember1 property value. Composed type representation for type ApiMatchPlayerAvatarUrlMember1
                    ## @return a api_match_player_avatar_url_member1
                    ## 
                    def api_match_player_avatar_url_member1
                        return @api_match_player_avatar_url_member1
                    end
                    ## 
                    ## Sets the ApiMatchPlayer_avatarUrlMember1 property value. Composed type representation for type ApiMatchPlayerAvatarUrlMember1
                    ## @param value Value to set for the ApiMatchPlayer_avatarUrlMember1 property.
                    ## @return a void
                    ## 
                    def api_match_player_avatar_url_member1=(value)
                        @api_match_player_avatar_url_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_player_avatar_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchPlayerAvatarUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiMatchPlayer_avatarUrlMember1" => lambda {|n| @api_match_player_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchPlayerAvatarUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiMatchPlayer_avatarUrlMember1", @api_match_player_avatar_url_member1)
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
                # Composed type wrapper for classes ApiMatchPlayerCheckedInAtMember1, string
                class ApiMatchPlayerCheckedInAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiMatchPlayerCheckedInAtMember1
                    @api_match_player_checked_in_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiMatchPlayer_checkedInAtMember1 property value. Composed type representation for type ApiMatchPlayerCheckedInAtMember1
                    ## @return a api_match_player_checked_in_at_member1
                    ## 
                    def api_match_player_checked_in_at_member1
                        return @api_match_player_checked_in_at_member1
                    end
                    ## 
                    ## Sets the ApiMatchPlayer_checkedInAtMember1 property value. Composed type representation for type ApiMatchPlayerCheckedInAtMember1
                    ## @param value Value to set for the ApiMatchPlayer_checkedInAtMember1 property.
                    ## @return a void
                    ## 
                    def api_match_player_checked_in_at_member1=(value)
                        @api_match_player_checked_in_at_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_player_checked_in_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchPlayerCheckedInAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiMatchPlayer_checkedInAtMember1" => lambda {|n| @api_match_player_checked_in_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchPlayerCheckedInAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiMatchPlayer_checkedInAtMember1", @api_match_player_checked_in_at_member1)
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
                # Composed type wrapper for classes ApiMatchPlayerNameMember1, string
                class ApiMatchPlayerName
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiMatchPlayerNameMember1
                    @api_match_player_name_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiMatchPlayer_nameMember1 property value. Composed type representation for type ApiMatchPlayerNameMember1
                    ## @return a api_match_player_name_member1
                    ## 
                    def api_match_player_name_member1
                        return @api_match_player_name_member1
                    end
                    ## 
                    ## Sets the ApiMatchPlayer_nameMember1 property value. Composed type representation for type ApiMatchPlayerNameMember1
                    ## @param value Value to set for the ApiMatchPlayer_nameMember1 property.
                    ## @return a void
                    ## 
                    def api_match_player_name_member1=(value)
                        @api_match_player_name_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_player_name
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchPlayerName.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiMatchPlayer_nameMember1" => lambda {|n| @api_match_player_name_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchPlayerNameMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiMatchPlayer_nameMember1", @api_match_player_name_member1)
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
                # Composed type wrapper for classes ApiMatchPlayerUsernameMember1, string
                class ApiMatchPlayerUsername
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiMatchPlayerUsernameMember1
                    @api_match_player_username_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiMatchPlayer_usernameMember1 property value. Composed type representation for type ApiMatchPlayerUsernameMember1
                    ## @return a api_match_player_username_member1
                    ## 
                    def api_match_player_username_member1
                        return @api_match_player_username_member1
                    end
                    ## 
                    ## Sets the ApiMatchPlayer_usernameMember1 property value. Composed type representation for type ApiMatchPlayerUsernameMember1
                    ## @param value Value to set for the ApiMatchPlayer_usernameMember1 property.
                    ## @return a void
                    ## 
                    def api_match_player_username_member1=(value)
                        @api_match_player_username_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_match_player_username
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMatchPlayerUsername.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiMatchPlayer_usernameMember1" => lambda {|n| @api_match_player_username_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMatchPlayerUsernameMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiMatchPlayer_usernameMember1", @api_match_player_username_member1)
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
