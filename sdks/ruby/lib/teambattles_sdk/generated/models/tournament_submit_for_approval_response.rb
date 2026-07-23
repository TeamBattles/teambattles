require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Result of submitting a draft tournament for staff review.
            class TournamentSubmitForApprovalResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The approval status this call set. APPROVED when `autoApproved` is true, AWAITING_APPROVAL otherwise.
                @approval_status
                ## 
                # True when the platform's approval mode skipped review for this tournament. That happens only for an UNLISTED tournament while the mode is `public_listing_only`; the tournament is APPROVED on the spot and no staff review is queued.
                @auto_approved
                ## 
                # The timestamp property
                @timestamp
                ## 
                ## Gets the approvalStatus property value. The approval status this call set. APPROVED when `autoApproved` is true, AWAITING_APPROVAL otherwise.
                ## @return a tournament_submit_for_approval_response_approval_status
                ## 
                def approval_status
                    return @approval_status
                end
                ## 
                ## Sets the approvalStatus property value. The approval status this call set. APPROVED when `autoApproved` is true, AWAITING_APPROVAL otherwise.
                ## @param value Value to set for the approvalStatus property.
                ## @return a void
                ## 
                def approval_status=(value)
                    @approval_status = value
                end
                ## 
                ## Gets the autoApproved property value. True when the platform's approval mode skipped review for this tournament. That happens only for an UNLISTED tournament while the mode is `public_listing_only`; the tournament is APPROVED on the spot and no staff review is queued.
                ## @return a boolean
                ## 
                def auto_approved
                    return @auto_approved
                end
                ## 
                ## Sets the autoApproved property value. True when the platform's approval mode skipped review for this tournament. That happens only for an UNLISTED tournament while the mode is `public_listing_only`; the tournament is APPROVED on the spot and no staff review is queued.
                ## @param value Value to set for the autoApproved property.
                ## @return a void
                ## 
                def auto_approved=(value)
                    @auto_approved = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_submit_for_approval_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentSubmitForApprovalResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "approvalStatus" => lambda {|n| @approval_status = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentSubmitForApprovalResponseApprovalStatus) },
                        "autoApproved" => lambda {|n| @auto_approved = n.get_boolean_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_enum_value("approvalStatus", @approval_status)
                    writer.write_boolean_value("autoApproved", @auto_approved)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the timestamp property value. The timestamp property
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. The timestamp property
                ## @param value Value to set for the timestamp property.
                ## @return a void
                ## 
                def timestamp=(value)
                    @timestamp = value
                end
            end
        end
    end
end
