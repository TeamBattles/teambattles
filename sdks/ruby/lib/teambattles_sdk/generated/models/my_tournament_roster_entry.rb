require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A tournament roster the caller is personally on.
            class MyTournamentRosterEntry
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Time the caller was rostered (epoch milliseconds).
                @added_at
                ## 
                # Participant whose roster the caller is on.
                @participant_id
                ## 
                # Roster entry ID. Required by the roster-removal endpoints. This is the caller's OWN roster row - a captain removing a different player reads that id from the participants endpoint instead.
                @roster_entry_id
                ## 
                # How a player reached a participant's tournament roster.
                @source
                ## 
                ## Gets the addedAt property value. Time the caller was rostered (epoch milliseconds).
                ## @return a double
                ## 
                def added_at
                    return @added_at
                end
                ## 
                ## Sets the addedAt property value. Time the caller was rostered (epoch milliseconds).
                ## @param value Value to set for the addedAt property.
                ## @return a void
                ## 
                def added_at=(value)
                    @added_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a my_tournament_roster_entry
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MyTournamentRosterEntry.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "addedAt" => lambda {|n| @added_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "participantId" => lambda {|n| @participant_id = n.get_string_value() },
                        "rosterEntryId" => lambda {|n| @roster_entry_id = n.get_string_value() },
                        "source" => lambda {|n| @source = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentRosterSource) },
                    }
                end
                ## 
                ## Gets the participantId property value. Participant whose roster the caller is on.
                ## @return a string
                ## 
                def participant_id
                    return @participant_id
                end
                ## 
                ## Sets the participantId property value. Participant whose roster the caller is on.
                ## @param value Value to set for the participantId property.
                ## @return a void
                ## 
                def participant_id=(value)
                    @participant_id = value
                end
                ## 
                ## Gets the rosterEntryId property value. Roster entry ID. Required by the roster-removal endpoints. This is the caller's OWN roster row - a captain removing a different player reads that id from the participants endpoint instead.
                ## @return a string
                ## 
                def roster_entry_id
                    return @roster_entry_id
                end
                ## 
                ## Sets the rosterEntryId property value. Roster entry ID. Required by the roster-removal endpoints. This is the caller's OWN roster row - a captain removing a different player reads that id from the participants endpoint instead.
                ## @param value Value to set for the rosterEntryId property.
                ## @return a void
                ## 
                def roster_entry_id=(value)
                    @roster_entry_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("addedAt", @added_at)
                    writer.write_string_value("participantId", @participant_id)
                    writer.write_string_value("rosterEntryId", @roster_entry_id)
                    writer.write_enum_value("source", @source)
                end
                ## 
                ## Gets the source property value. How a player reached a participant's tournament roster.
                ## @return a tournament_roster_source
                ## 
                def source
                    return @source
                end
                ## 
                ## Sets the source property value. How a player reached a participant's tournament roster.
                ## @param value Value to set for the source property.
                ## @return a void
                ## 
                def source=(value)
                    @source = value
                end
            end
        end
    end
end
