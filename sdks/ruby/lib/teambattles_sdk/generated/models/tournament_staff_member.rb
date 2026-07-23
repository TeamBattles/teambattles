require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # One tournament staff assignment.
            class TournamentStaffMember
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Avatar image URL.
                @avatar_url
                ## 
                # Time the row was added (epoch milliseconds).
                @created_at
                ## 
                # Staff row ID.
                @id
                ## 
                # Display name.
                @name
                ## 
                # Tournament staff role.
                @role
                ## 
                # Staff member's user ID.
                @user_id
                ## 
                # Username.
                @username
                ## 
                ## Gets the avatarUrl property value. Avatar image URL.
                ## @return a tournament_staff_member_avatar_url
                ## 
                def avatar_url
                    return @avatar_url
                end
                ## 
                ## Sets the avatarUrl property value. Avatar image URL.
                ## @param value Value to set for the avatarUrl property.
                ## @return a void
                ## 
                def avatar_url=(value)
                    @avatar_url = value
                end
                ## 
                ## Gets the createdAt property value. Time the row was added (epoch milliseconds).
                ## @return a double
                ## 
                def created_at
                    return @created_at
                end
                ## 
                ## Sets the createdAt property value. Time the row was added (epoch milliseconds).
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ## 
                def created_at=(value)
                    @created_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_staff_member
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentStaffMember.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_object_value(lambda {|pn| TournamentStaffMember::TournamentStaffMemberAvatarUrl.create_from_discriminator_value(pn) }) },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "role" => lambda {|n| @role = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentStaffRole) },
                        "userId" => lambda {|n| @user_id = n.get_string_value() },
                        "username" => lambda {|n| @username = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the id property value. Staff row ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Staff row ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the name property value. Display name.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Display name.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the role property value. Tournament staff role.
                ## @return a tournament_staff_role
                ## 
                def role
                    return @role
                end
                ## 
                ## Sets the role property value. Tournament staff role.
                ## @param value Value to set for the role property.
                ## @return a void
                ## 
                def role=(value)
                    @role = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("avatarUrl", @avatar_url)
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_string_value("id", @id)
                    writer.write_string_value("name", @name)
                    writer.write_enum_value("role", @role)
                    writer.write_string_value("userId", @user_id)
                    writer.write_string_value("username", @username)
                end
                ## 
                ## Gets the userId property value. Staff member's user ID.
                ## @return a string
                ## 
                def user_id
                    return @user_id
                end
                ## 
                ## Sets the userId property value. Staff member's user ID.
                ## @param value Value to set for the userId property.
                ## @return a void
                ## 
                def user_id=(value)
                    @user_id = value
                end
                ## 
                ## Gets the username property value. Username.
                ## @return a string
                ## 
                def username
                    return @username
                end
                ## 
                ## Sets the username property value. Username.
                ## @param value Value to set for the username property.
                ## @return a void
                ## 
                def username=(value)
                    @username = value
                end

                ## 
                # Composed type wrapper for classes string, TournamentStaffMemberAvatarUrlMember1
                class TournamentStaffMemberAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TournamentStaffMemberAvatarUrlMember1
                    @tournament_staff_member_avatar_url_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tournament_staff_member_avatar_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TournamentStaffMemberAvatarUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TournamentStaffMember_avatarUrlMember1" => lambda {|n| @tournament_staff_member_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentStaffMemberAvatarUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TournamentStaffMember_avatarUrlMember1", @tournament_staff_member_avatar_url_member1)
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
                    ## Gets the TournamentStaffMember_avatarUrlMember1 property value. Composed type representation for type TournamentStaffMemberAvatarUrlMember1
                    ## @return a tournament_staff_member_avatar_url_member1
                    ## 
                    def tournament_staff_member_avatar_url_member1
                        return @tournament_staff_member_avatar_url_member1
                    end
                    ## 
                    ## Sets the TournamentStaffMember_avatarUrlMember1 property value. Composed type representation for type TournamentStaffMemberAvatarUrlMember1
                    ## @param value Value to set for the TournamentStaffMember_avatarUrlMember1 property.
                    ## @return a void
                    ## 
                    def tournament_staff_member_avatar_url_member1=(value)
                        @tournament_staff_member_avatar_url_member1 = value
                    end
                end
            end
        end
    end
end
