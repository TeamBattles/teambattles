require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # One member of a participant's roster.
            class TournamentRosterMember
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Avatar image URL.
                @avatar_url
                ## 
                # User ID.
                @id
                ## 
                # Display name.
                @name
                ## 
                # How the member joined the tournament roster.
                @source
                ## 
                # Username.
                @username
                ## 
                ## Gets the avatarUrl property value. Avatar image URL.
                ## @return a tournament_roster_member_avatar_url
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
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_roster_member
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentRosterMember.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_object_value(lambda {|pn| TournamentRosterMember::TournamentRosterMemberAvatarUrl.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "source" => lambda {|n| @source = n.get_string_value() },
                        "username" => lambda {|n| @username = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the id property value. User ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. User ID.
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
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("avatarUrl", @avatar_url)
                    writer.write_string_value("id", @id)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("source", @source)
                    writer.write_string_value("username", @username)
                end
                ## 
                ## Gets the source property value. How the member joined the tournament roster.
                ## @return a string
                ## 
                def source
                    return @source
                end
                ## 
                ## Sets the source property value. How the member joined the tournament roster.
                ## @param value Value to set for the source property.
                ## @return a void
                ## 
                def source=(value)
                    @source = value
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
                # Composed type wrapper for classes string, TournamentRosterMemberAvatarUrlMember1
                class TournamentRosterMemberAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TournamentRosterMemberAvatarUrlMember1
                    @tournament_roster_member_avatar_url_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tournament_roster_member_avatar_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TournamentRosterMemberAvatarUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TournamentRosterMember_avatarUrlMember1" => lambda {|n| @tournament_roster_member_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentRosterMemberAvatarUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TournamentRosterMember_avatarUrlMember1", @tournament_roster_member_avatar_url_member1)
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
                    ## Gets the TournamentRosterMember_avatarUrlMember1 property value. Composed type representation for type TournamentRosterMemberAvatarUrlMember1
                    ## @return a tournament_roster_member_avatar_url_member1
                    ## 
                    def tournament_roster_member_avatar_url_member1
                        return @tournament_roster_member_avatar_url_member1
                    end
                    ## 
                    ## Sets the TournamentRosterMember_avatarUrlMember1 property value. Composed type representation for type TournamentRosterMemberAvatarUrlMember1
                    ## @param value Value to set for the TournamentRosterMember_avatarUrlMember1 property.
                    ## @return a void
                    ## 
                    def tournament_roster_member_avatar_url_member1=(value)
                        @tournament_roster_member_avatar_url_member1 = value
                    end
                end
            end
        end
    end
end
