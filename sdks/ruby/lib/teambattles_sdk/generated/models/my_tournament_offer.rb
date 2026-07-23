require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A free-agent offer addressed to the caller, in every state.
            class MyTournamentOffer
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Offer time (epoch milliseconds).
                @created_at
                ## 
                # Optional note from the offering team.
                @message
                ## 
                # Offer ID. Required by the offer-respond and offer-revoke endpoints.
                @offer_id
                ## 
                # The offering team's current entry status, or null if the participant row no longer resolves. Surfaced rather than filtered: the web drops offers whose participant is no longer APPROVED, so they simply vanish. Here a client can tell a dead offer from a live one - accepting a dead one only expires it.
                @offering_participant_status
                ## 
                # Offering team's participant ID.
                @participant_id
                ## 
                # State of a free-agent offer. EXPIRED is applied lazily, when the offer is next read or responded to, not by a scheduled sweep.
                @status
                ## 
                # Offering team's avatar URL.
                @team_avatar_url
                ## 
                # Offering team's ID.
                @team_id
                ## 
                # Offering team's display name.
                @team_name
                ## 
                ## Gets the createdAt property value. Offer time (epoch milliseconds).
                ## @return a double
                ## 
                def created_at
                    return @created_at
                end
                ## 
                ## Sets the createdAt property value. Offer time (epoch milliseconds).
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ## 
                def created_at=(value)
                    @created_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a my_tournament_offer
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MyTournamentOffer.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "message" => lambda {|n| @message = n.get_string_value() },
                        "offerId" => lambda {|n| @offer_id = n.get_string_value() },
                        "offeringParticipantStatus" => lambda {|n| @offering_participant_status = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentParticipantStatus) },
                        "participantId" => lambda {|n| @participant_id = n.get_string_value() },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentFreeAgentOfferStatus) },
                        "teamAvatarUrl" => lambda {|n| @team_avatar_url = n.get_string_value() },
                        "teamId" => lambda {|n| @team_id = n.get_string_value() },
                        "teamName" => lambda {|n| @team_name = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the message property value. Optional note from the offering team.
                ## @return a string
                ## 
                def message
                    return @message
                end
                ## 
                ## Sets the message property value. Optional note from the offering team.
                ## @param value Value to set for the message property.
                ## @return a void
                ## 
                def message=(value)
                    @message = value
                end
                ## 
                ## Gets the offerId property value. Offer ID. Required by the offer-respond and offer-revoke endpoints.
                ## @return a string
                ## 
                def offer_id
                    return @offer_id
                end
                ## 
                ## Sets the offerId property value. Offer ID. Required by the offer-respond and offer-revoke endpoints.
                ## @param value Value to set for the offerId property.
                ## @return a void
                ## 
                def offer_id=(value)
                    @offer_id = value
                end
                ## 
                ## Gets the offeringParticipantStatus property value. The offering team's current entry status, or null if the participant row no longer resolves. Surfaced rather than filtered: the web drops offers whose participant is no longer APPROVED, so they simply vanish. Here a client can tell a dead offer from a live one - accepting a dead one only expires it.
                ## @return a tournament_participant_status
                ## 
                def offering_participant_status
                    return @offering_participant_status
                end
                ## 
                ## Sets the offeringParticipantStatus property value. The offering team's current entry status, or null if the participant row no longer resolves. Surfaced rather than filtered: the web drops offers whose participant is no longer APPROVED, so they simply vanish. Here a client can tell a dead offer from a live one - accepting a dead one only expires it.
                ## @param value Value to set for the offeringParticipantStatus property.
                ## @return a void
                ## 
                def offering_participant_status=(value)
                    @offering_participant_status = value
                end
                ## 
                ## Gets the participantId property value. Offering team's participant ID.
                ## @return a string
                ## 
                def participant_id
                    return @participant_id
                end
                ## 
                ## Sets the participantId property value. Offering team's participant ID.
                ## @param value Value to set for the participantId property.
                ## @return a void
                ## 
                def participant_id=(value)
                    @participant_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_string_value("message", @message)
                    writer.write_string_value("offerId", @offer_id)
                    writer.write_enum_value("offeringParticipantStatus", @offering_participant_status)
                    writer.write_string_value("participantId", @participant_id)
                    writer.write_enum_value("status", @status)
                    writer.write_string_value("teamAvatarUrl", @team_avatar_url)
                    writer.write_string_value("teamId", @team_id)
                    writer.write_string_value("teamName", @team_name)
                end
                ## 
                ## Gets the status property value. State of a free-agent offer. EXPIRED is applied lazily, when the offer is next read or responded to, not by a scheduled sweep.
                ## @return a tournament_free_agent_offer_status
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. State of a free-agent offer. EXPIRED is applied lazily, when the offer is next read or responded to, not by a scheduled sweep.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
                ## 
                ## Gets the teamAvatarUrl property value. Offering team's avatar URL.
                ## @return a string
                ## 
                def team_avatar_url
                    return @team_avatar_url
                end
                ## 
                ## Sets the teamAvatarUrl property value. Offering team's avatar URL.
                ## @param value Value to set for the teamAvatarUrl property.
                ## @return a void
                ## 
                def team_avatar_url=(value)
                    @team_avatar_url = value
                end
                ## 
                ## Gets the teamId property value. Offering team's ID.
                ## @return a string
                ## 
                def team_id
                    return @team_id
                end
                ## 
                ## Sets the teamId property value. Offering team's ID.
                ## @param value Value to set for the teamId property.
                ## @return a void
                ## 
                def team_id=(value)
                    @team_id = value
                end
                ## 
                ## Gets the teamName property value. Offering team's display name.
                ## @return a string
                ## 
                def team_name
                    return @team_name
                end
                ## 
                ## Sets the teamName property value. Offering team's display name.
                ## @param value Value to set for the teamName property.
                ## @return a void
                ## 
                def team_name=(value)
                    @team_name = value
                end
            end
        end
    end
end
