require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # The API key owner's own state in one tournament.
            class MyTournamentEntry
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Every team of the tournament's game that the caller may act for - captain, co-captain, or owner of the team's organization. Includes teams NOT yet entered, which is what makes it the enter/apply candidate list.
                @actable_teams
                ## 
                # The caller's free-agent row, or null if they have never joined this tournament's pool. A WITHDRAWN row is returned rather than nulled, because the row is reused if they rejoin.
                @free_agent
                ## 
                # Every invite addressed to an actable team, in all four states.
                @invites
                ## 
                # Every free-agent offer addressed to the caller, in all five states. Filter on `status` for the ones still answerable.
                @offers
                ## 
                # Every entry belonging to one of the caller's teams, in ALL states including terminal ones. An array, never collapsed to a single row: a caller running several teams in one tournament has several entries and needs every participantId.
                @participants
                ## 
                # True when the game requires a linked external account the caller has not connected. Surfaced so a client can explain a pre-emptive failure instead of discovering it when the free-agency join is rejected.
                @required_connection_missing
                ## 
                # Every tournament roster the caller is personally on. More than one is normal - a player can be rostered for several of their own teams.
                @roster_entries
                ## 
                # The tournament's canonical slug. Echoed because the request may have used a stale one that still resolves.
                @slug
                ## 
                # Tournament ID.
                @tournament_id
                ## 
                ## Gets the actableTeams property value. Every team of the tournament's game that the caller may act for - captain, co-captain, or owner of the team's organization. Includes teams NOT yet entered, which is what makes it the enter/apply candidate list.
                ## @return a my_tournament_actable_team
                ## 
                def actable_teams
                    return @actable_teams
                end
                ## 
                ## Sets the actableTeams property value. Every team of the tournament's game that the caller may act for - captain, co-captain, or owner of the team's organization. Includes teams NOT yet entered, which is what makes it the enter/apply candidate list.
                ## @param value Value to set for the actableTeams property.
                ## @return a void
                ## 
                def actable_teams=(value)
                    @actable_teams = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a my_tournament_entry
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MyTournamentEntry.new
                end
                ## 
                ## Gets the freeAgent property value. The caller's free-agent row, or null if they have never joined this tournament's pool. A WITHDRAWN row is returned rather than nulled, because the row is reused if they rejoin.
                ## @return a my_tournament_free_agent
                ## 
                def free_agent
                    return @free_agent
                end
                ## 
                ## Sets the freeAgent property value. The caller's free-agent row, or null if they have never joined this tournament's pool. A WITHDRAWN row is returned rather than nulled, because the row is reused if they rejoin.
                ## @param value Value to set for the freeAgent property.
                ## @return a void
                ## 
                def free_agent=(value)
                    @free_agent = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "actableTeams" => lambda {|n| @actable_teams = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::MyTournamentActableTeam.create_from_discriminator_value(pn) }) },
                        "freeAgent" => lambda {|n| @free_agent = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::MyTournamentFreeAgent.create_from_discriminator_value(pn) }) },
                        "invites" => lambda {|n| @invites = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::MyTournamentInvite.create_from_discriminator_value(pn) }) },
                        "offers" => lambda {|n| @offers = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::MyTournamentOffer.create_from_discriminator_value(pn) }) },
                        "participants" => lambda {|n| @participants = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::MyTournamentParticipant.create_from_discriminator_value(pn) }) },
                        "requiredConnectionMissing" => lambda {|n| @required_connection_missing = n.get_boolean_value() },
                        "rosterEntries" => lambda {|n| @roster_entries = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::MyTournamentRosterEntry.create_from_discriminator_value(pn) }) },
                        "slug" => lambda {|n| @slug = n.get_string_value() },
                        "tournamentId" => lambda {|n| @tournament_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the invites property value. Every invite addressed to an actable team, in all four states.
                ## @return a my_tournament_invite
                ## 
                def invites
                    return @invites
                end
                ## 
                ## Sets the invites property value. Every invite addressed to an actable team, in all four states.
                ## @param value Value to set for the invites property.
                ## @return a void
                ## 
                def invites=(value)
                    @invites = value
                end
                ## 
                ## Gets the offers property value. Every free-agent offer addressed to the caller, in all five states. Filter on `status` for the ones still answerable.
                ## @return a my_tournament_offer
                ## 
                def offers
                    return @offers
                end
                ## 
                ## Sets the offers property value. Every free-agent offer addressed to the caller, in all five states. Filter on `status` for the ones still answerable.
                ## @param value Value to set for the offers property.
                ## @return a void
                ## 
                def offers=(value)
                    @offers = value
                end
                ## 
                ## Gets the participants property value. Every entry belonging to one of the caller's teams, in ALL states including terminal ones. An array, never collapsed to a single row: a caller running several teams in one tournament has several entries and needs every participantId.
                ## @return a my_tournament_participant
                ## 
                def participants
                    return @participants
                end
                ## 
                ## Sets the participants property value. Every entry belonging to one of the caller's teams, in ALL states including terminal ones. An array, never collapsed to a single row: a caller running several teams in one tournament has several entries and needs every participantId.
                ## @param value Value to set for the participants property.
                ## @return a void
                ## 
                def participants=(value)
                    @participants = value
                end
                ## 
                ## Gets the requiredConnectionMissing property value. True when the game requires a linked external account the caller has not connected. Surfaced so a client can explain a pre-emptive failure instead of discovering it when the free-agency join is rejected.
                ## @return a boolean
                ## 
                def required_connection_missing
                    return @required_connection_missing
                end
                ## 
                ## Sets the requiredConnectionMissing property value. True when the game requires a linked external account the caller has not connected. Surfaced so a client can explain a pre-emptive failure instead of discovering it when the free-agency join is rejected.
                ## @param value Value to set for the requiredConnectionMissing property.
                ## @return a void
                ## 
                def required_connection_missing=(value)
                    @required_connection_missing = value
                end
                ## 
                ## Gets the rosterEntries property value. Every tournament roster the caller is personally on. More than one is normal - a player can be rostered for several of their own teams.
                ## @return a my_tournament_roster_entry
                ## 
                def roster_entries
                    return @roster_entries
                end
                ## 
                ## Sets the rosterEntries property value. Every tournament roster the caller is personally on. More than one is normal - a player can be rostered for several of their own teams.
                ## @param value Value to set for the rosterEntries property.
                ## @return a void
                ## 
                def roster_entries=(value)
                    @roster_entries = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_object_values("actableTeams", @actable_teams)
                    writer.write_object_value("freeAgent", @free_agent)
                    writer.write_collection_of_object_values("invites", @invites)
                    writer.write_collection_of_object_values("offers", @offers)
                    writer.write_collection_of_object_values("participants", @participants)
                    writer.write_boolean_value("requiredConnectionMissing", @required_connection_missing)
                    writer.write_collection_of_object_values("rosterEntries", @roster_entries)
                    writer.write_string_value("slug", @slug)
                    writer.write_string_value("tournamentId", @tournament_id)
                end
                ## 
                ## Gets the slug property value. The tournament's canonical slug. Echoed because the request may have used a stale one that still resolves.
                ## @return a string
                ## 
                def slug
                    return @slug
                end
                ## 
                ## Sets the slug property value. The tournament's canonical slug. Echoed because the request may have used a stale one that still resolves.
                ## @param value Value to set for the slug property.
                ## @return a void
                ## 
                def slug=(value)
                    @slug = value
                end
                ## 
                ## Gets the tournamentId property value. Tournament ID.
                ## @return a string
                ## 
                def tournament_id
                    return @tournament_id
                end
                ## 
                ## Sets the tournamentId property value. Tournament ID.
                ## @param value Value to set for the tournamentId property.
                ## @return a void
                ## 
                def tournament_id=(value)
                    @tournament_id = value
                end
            end
        end
    end
end
