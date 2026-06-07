require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # API key owner's apply-to-join eligibility.
            class LeagueApplyEligibilityEligibility
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # The eligibleTeams property
                @eligible_teams
                ##
                # The hasApprovedTeamHere property
                @has_approved_team_here
                ##
                # The isAuthed property
                @is_authed
                ##
                # The pendingTeams property
                @pending_teams
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a league_apply_eligibility_eligibility
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeagueApplyEligibilityEligibility.new
                end
                ##
                ## Gets the eligibleTeams property value. The eligibleTeams property
                ## @return a league_apply_eligibility_eligibility_eligible_teams
                ##
                def eligible_teams
                    return @eligible_teams
                end
                ##
                ## Sets the eligibleTeams property value. The eligibleTeams property
                ## @param value Value to set for the eligibleTeams property.
                ## @return a void
                ##
                def eligible_teams=(value)
                    @eligible_teams = value
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "eligibleTeams" => lambda {|n| @eligible_teams = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueApplyEligibilityEligibilityEligibleTeams.create_from_discriminator_value(pn) }) },
                        "hasApprovedTeamHere" => lambda {|n| @has_approved_team_here = n.get_boolean_value() },
                        "isAuthed" => lambda {|n| @is_authed = n.get_boolean_value() },
                        "pendingTeams" => lambda {|n| @pending_teams = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueApplyEligibilityEligibilityPendingTeams.create_from_discriminator_value(pn) }) },
                    }
                end
                ##
                ## Gets the hasApprovedTeamHere property value. The hasApprovedTeamHere property
                ## @return a boolean
                ##
                def has_approved_team_here
                    return @has_approved_team_here
                end
                ##
                ## Sets the hasApprovedTeamHere property value. The hasApprovedTeamHere property
                ## @param value Value to set for the hasApprovedTeamHere property.
                ## @return a void
                ##
                def has_approved_team_here=(value)
                    @has_approved_team_here = value
                end
                ##
                ## Gets the isAuthed property value. The isAuthed property
                ## @return a boolean
                ##
                def is_authed
                    return @is_authed
                end
                ##
                ## Sets the isAuthed property value. The isAuthed property
                ## @param value Value to set for the isAuthed property.
                ## @return a void
                ##
                def is_authed=(value)
                    @is_authed = value
                end
                ##
                ## Gets the pendingTeams property value. The pendingTeams property
                ## @return a league_apply_eligibility_eligibility_pending_teams
                ##
                def pending_teams
                    return @pending_teams
                end
                ##
                ## Sets the pendingTeams property value. The pendingTeams property
                ## @param value Value to set for the pendingTeams property.
                ## @return a void
                ##
                def pending_teams=(value)
                    @pending_teams = value
                end
                ##
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_object_values("eligibleTeams", @eligible_teams)
                    writer.write_boolean_value("hasApprovedTeamHere", @has_approved_team_here)
                    writer.write_boolean_value("isAuthed", @is_authed)
                    writer.write_collection_of_object_values("pendingTeams", @pending_teams)
                end
            end
        end
    end
end
