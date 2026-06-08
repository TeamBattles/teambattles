require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # API-safe team or organization member.
            class ApiMember
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Membership row ID.
                @id
                ## 
                # The joinedAt property
                @joined_at
                ## 
                # Role label within the team or organization.
                @role
                ## 
                # API-safe public user profile.
                @user
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_member
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiMember.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "joinedAt" => lambda {|n| @joined_at = n.get_object_value(lambda {|pn| ApiMember::ApiMemberJoinedAt.create_from_discriminator_value(pn) }) },
                        "role" => lambda {|n| @role = n.get_string_value() },
                        "user" => lambda {|n| @user = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserProfile.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the id property value. Membership row ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Membership row ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the joinedAt property value. The joinedAt property
                ## @return a api_member_joined_at
                ## 
                def joined_at
                    return @joined_at
                end
                ## 
                ## Sets the joinedAt property value. The joinedAt property
                ## @param value Value to set for the joinedAt property.
                ## @return a void
                ## 
                def joined_at=(value)
                    @joined_at = value
                end
                ## 
                ## Gets the role property value. Role label within the team or organization.
                ## @return a string
                ## 
                def role
                    return @role
                end
                ## 
                ## Sets the role property value. Role label within the team or organization.
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
                    writer.write_string_value("id", @id)
                    writer.write_object_value("joinedAt", @joined_at)
                    writer.write_string_value("role", @role)
                    writer.write_object_value("user", @user)
                end
                ## 
                ## Gets the user property value. API-safe public user profile.
                ## @return a api_user_profile
                ## 
                def user
                    return @user
                end
                ## 
                ## Sets the user property value. API-safe public user profile.
                ## @param value Value to set for the user property.
                ## @return a void
                ## 
                def user=(value)
                    @user = value
                end

                ## 
                # Composed type wrapper for classes ApiMemberJoinedAtMember1, string
                class ApiMemberJoinedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiMemberJoinedAtMember1
                    @api_member_joined_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiMember_joinedAtMember1 property value. Composed type representation for type ApiMemberJoinedAtMember1
                    ## @return a api_member_joined_at_member1
                    ## 
                    def api_member_joined_at_member1
                        return @api_member_joined_at_member1
                    end
                    ## 
                    ## Sets the ApiMember_joinedAtMember1 property value. Composed type representation for type ApiMemberJoinedAtMember1
                    ## @param value Value to set for the ApiMember_joinedAtMember1 property.
                    ## @return a void
                    ## 
                    def api_member_joined_at_member1=(value)
                        @api_member_joined_at_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_member_joined_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiMemberJoinedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiMember_joinedAtMember1" => lambda {|n| @api_member_joined_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMemberJoinedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiMember_joinedAtMember1", @api_member_joined_at_member1)
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
