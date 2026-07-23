require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A team application awaiting organizer review.
            class TournamentApplication
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # User who submitted the application, when recorded.
                @applied_by_user_id
                ## 
                # Participant ID of the pending application.
                @id
                ## 
                # Application time (epoch milliseconds).
                @registered_at
                ## 
                # Applying team's avatar URL.
                @team_avatar_url
                ## 
                # Applying team's ID.
                @team_id
                ## 
                # Applying team's display name.
                @team_name
                ## 
                ## Gets the appliedByUserId property value. User who submitted the application, when recorded.
                ## @return a string
                ## 
                def applied_by_user_id
                    return @applied_by_user_id
                end
                ## 
                ## Sets the appliedByUserId property value. User who submitted the application, when recorded.
                ## @param value Value to set for the appliedByUserId property.
                ## @return a void
                ## 
                def applied_by_user_id=(value)
                    @applied_by_user_id = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_application
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentApplication.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "appliedByUserId" => lambda {|n| @applied_by_user_id = n.get_string_value() },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "registeredAt" => lambda {|n| @registered_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "teamAvatarUrl" => lambda {|n| @team_avatar_url = n.get_object_value(lambda {|pn| TournamentApplication::TournamentApplicationTeamAvatarUrl.create_from_discriminator_value(pn) }) },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                        "teamName" => lambda {|n| @team_name = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the id property value. Participant ID of the pending application.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Participant ID of the pending application.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the registeredAt property value. Application time (epoch milliseconds).
                ## @return a double
                ## 
                def registered_at
                    return @registered_at
                end
                ## 
                ## Sets the registeredAt property value. Application time (epoch milliseconds).
                ## @param value Value to set for the registeredAt property.
                ## @return a void
                ## 
                def registered_at=(value)
                    @registered_at = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("appliedByUserId", @applied_by_user_id)
                    writer.write_string_value("id", @id)
                    writer.write_object_value("registeredAt", @registered_at)
                    writer.write_object_value("teamAvatarUrl", @team_avatar_url)
                    writer.write_string_value("teamId", @team_id)
                    writer.write_string_value("teamName", @team_name)
                end
                ## 
                ## Gets the teamAvatarUrl property value. Applying team's avatar URL.
                ## @return a tournament_application_team_avatar_url
                ## 
                def team_avatar_url
                    return @team_avatar_url
                end
                ## 
                ## Sets the teamAvatarUrl property value. Applying team's avatar URL.
                ## @param value Value to set for the teamAvatarUrl property.
                ## @return a void
                ## 
                def team_avatar_url=(value)
                    @team_avatar_url = value
                end
                ## 
                ## Gets the teamId property value. Applying team's ID.
                ## @return a string
                ## 
                def team_id
                    return @team_id
                end
                ## 
                ## Sets the teamId property value. Applying team's ID.
                ## @param value Value to set for the teamId property.
                ## @return a void
                ## 
                def team_id=(value)
                    @team_id = value
                end
                ## 
                ## Gets the teamName property value. Applying team's display name.
                ## @return a string
                ## 
                def team_name
                    return @team_name
                end
                ## 
                ## Sets the teamName property value. Applying team's display name.
                ## @param value Value to set for the teamName property.
                ## @return a void
                ## 
                def team_name=(value)
                    @team_name = value
                end

                ## 
                # Composed type wrapper for classes string, TournamentApplicationTeamAvatarUrlMember1
                class TournamentApplicationTeamAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TournamentApplicationTeamAvatarUrlMember1
                    @tournament_application_team_avatar_url_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tournament_application_team_avatar_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TournamentApplicationTeamAvatarUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TournamentApplication_teamAvatarUrlMember1" => lambda {|n| @tournament_application_team_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentApplicationTeamAvatarUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TournamentApplication_teamAvatarUrlMember1", @tournament_application_team_avatar_url_member1)
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
                    ## Gets the TournamentApplication_teamAvatarUrlMember1 property value. Composed type representation for type TournamentApplicationTeamAvatarUrlMember1
                    ## @return a tournament_application_team_avatar_url_member1
                    ## 
                    def tournament_application_team_avatar_url_member1
                        return @tournament_application_team_avatar_url_member1
                    end
                    ## 
                    ## Sets the TournamentApplication_teamAvatarUrlMember1 property value. Composed type representation for type TournamentApplicationTeamAvatarUrlMember1
                    ## @param value Value to set for the TournamentApplication_teamAvatarUrlMember1 property.
                    ## @return a void
                    ## 
                    def tournament_application_team_avatar_url_member1=(value)
                        @tournament_application_team_avatar_url_member1 = value
                    end
                end
            end
        end
    end
end
