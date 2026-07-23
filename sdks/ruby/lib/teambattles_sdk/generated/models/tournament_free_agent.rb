require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # An available free agent.
            class TournamentFreeAgent
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Avatar image URL.
                @avatar_url
                ## 
                # Pool join time (epoch milliseconds).
                @created_at
                ## 
                # Free-agent row ID.
                @id
                ## 
                # Display name.
                @name
                ## 
                # Free-text note the agent supplied.
                @note
                ## 
                # User ID of the free agent.
                @user_id
                ## 
                # Username.
                @username
                ## 
                # PENDING when `viewerParticipantId` was supplied AND authorized AND that participant has an open offer to this agent; null otherwise. An unauthorized or stale `viewerParticipantId` fails soft to null rather than erroring.
                @viewer_offer_status
                ## 
                ## Gets the avatarUrl property value. Avatar image URL.
                ## @return a tournament_free_agent_avatar_url
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
                ## Gets the createdAt property value. Pool join time (epoch milliseconds).
                ## @return a double
                ## 
                def created_at
                    return @created_at
                end
                ## 
                ## Sets the createdAt property value. Pool join time (epoch milliseconds).
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ## 
                def created_at=(value)
                    @created_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_free_agent
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentFreeAgent.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "avatarUrl" => lambda {|n| @avatar_url = n.get_object_value(lambda {|pn| TournamentFreeAgent::TournamentFreeAgentAvatarUrl.create_from_discriminator_value(pn) }) },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "note" => lambda {|n| @note = n.get_string_value() },
                        "userId" => lambda {|n| @user_id = n.get_string_value() },
                        "username" => lambda {|n| @username = n.get_string_value() },
                        "viewerOfferStatus" => lambda {|n| @viewer_offer_status = n.get_object_value(lambda {|pn| TournamentFreeAgent::TournamentFreeAgentViewerOfferStatus.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the id property value. Free-agent row ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Free-agent row ID.
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
                ## Gets the note property value. Free-text note the agent supplied.
                ## @return a string
                ## 
                def note
                    return @note
                end
                ## 
                ## Sets the note property value. Free-text note the agent supplied.
                ## @param value Value to set for the note property.
                ## @return a void
                ## 
                def note=(value)
                    @note = value
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
                    writer.write_string_value("note", @note)
                    writer.write_string_value("userId", @user_id)
                    writer.write_string_value("username", @username)
                    writer.write_object_value("viewerOfferStatus", @viewer_offer_status)
                end
                ## 
                ## Gets the userId property value. User ID of the free agent.
                ## @return a string
                ## 
                def user_id
                    return @user_id
                end
                ## 
                ## Sets the userId property value. User ID of the free agent.
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
                ## Gets the viewerOfferStatus property value. PENDING when `viewerParticipantId` was supplied AND authorized AND that participant has an open offer to this agent; null otherwise. An unauthorized or stale `viewerParticipantId` fails soft to null rather than erroring.
                ## @return a tournament_free_agent_viewer_offer_status
                ## 
                def viewer_offer_status
                    return @viewer_offer_status
                end
                ## 
                ## Sets the viewerOfferStatus property value. PENDING when `viewerParticipantId` was supplied AND authorized AND that participant has an open offer to this agent; null otherwise. An unauthorized or stale `viewerParticipantId` fails soft to null rather than erroring.
                ## @param value Value to set for the viewerOfferStatus property.
                ## @return a void
                ## 
                def viewer_offer_status=(value)
                    @viewer_offer_status = value
                end

                ## 
                # Composed type wrapper for classes string, TournamentFreeAgentAvatarUrlMember1
                class TournamentFreeAgentAvatarUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TournamentFreeAgentAvatarUrlMember1
                    @tournament_free_agent_avatar_url_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tournament_free_agent_avatar_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TournamentFreeAgentAvatarUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TournamentFreeAgent_avatarUrlMember1" => lambda {|n| @tournament_free_agent_avatar_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentFreeAgentAvatarUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TournamentFreeAgent_avatarUrlMember1", @tournament_free_agent_avatar_url_member1)
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
                    ## Gets the TournamentFreeAgent_avatarUrlMember1 property value. Composed type representation for type TournamentFreeAgentAvatarUrlMember1
                    ## @return a tournament_free_agent_avatar_url_member1
                    ## 
                    def tournament_free_agent_avatar_url_member1
                        return @tournament_free_agent_avatar_url_member1
                    end
                    ## 
                    ## Sets the TournamentFreeAgent_avatarUrlMember1 property value. Composed type representation for type TournamentFreeAgentAvatarUrlMember1
                    ## @param value Value to set for the TournamentFreeAgent_avatarUrlMember1 property.
                    ## @return a void
                    ## 
                    def tournament_free_agent_avatar_url_member1=(value)
                        @tournament_free_agent_avatar_url_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes string, TournamentFreeAgentViewerOfferStatusMember1
                class TournamentFreeAgentViewerOfferStatus
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TournamentFreeAgentViewerOfferStatusMember1
                    @tournament_free_agent_viewer_offer_status_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tournament_free_agent_viewer_offer_status
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TournamentFreeAgentViewerOfferStatus.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TournamentFreeAgent_viewerOfferStatusMember1" => lambda {|n| @tournament_free_agent_viewer_offer_status_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentFreeAgentViewerOfferStatusMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TournamentFreeAgent_viewerOfferStatusMember1", @tournament_free_agent_viewer_offer_status_member1)
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
                    ## Gets the TournamentFreeAgent_viewerOfferStatusMember1 property value. Composed type representation for type TournamentFreeAgentViewerOfferStatusMember1
                    ## @return a tournament_free_agent_viewer_offer_status_member1
                    ## 
                    def tournament_free_agent_viewer_offer_status_member1
                        return @tournament_free_agent_viewer_offer_status_member1
                    end
                    ## 
                    ## Sets the TournamentFreeAgent_viewerOfferStatusMember1 property value. Composed type representation for type TournamentFreeAgentViewerOfferStatusMember1
                    ## @param value Value to set for the TournamentFreeAgent_viewerOfferStatusMember1 property.
                    ## @return a void
                    ## 
                    def tournament_free_agent_viewer_offer_status_member1=(value)
                        @tournament_free_agent_viewer_offer_status_member1 = value
                    end
                end
            end
        end
    end
end
