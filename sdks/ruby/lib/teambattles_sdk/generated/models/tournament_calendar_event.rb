require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # One dated tournament milestone for the key owner.
            class TournamentCalendarEvent
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Milestone time (epoch milliseconds).
                @at
                ## 
                # registration = registration deadline, checkin = check-in opens, start = tournament start.
                @kind
                ## 
                # Tournament display name.
                @name
                ## 
                # URL-friendly tournament identifier.
                @slug
                ## 
                # Tournament ID.
                @tournament_id
                ## 
                ## Gets the at property value. Milestone time (epoch milliseconds).
                ## @return a double
                ## 
                def at
                    return @at
                end
                ## 
                ## Sets the at property value. Milestone time (epoch milliseconds).
                ## @param value Value to set for the at property.
                ## @return a void
                ## 
                def at=(value)
                    @at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_calendar_event
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentCalendarEvent.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "at" => lambda {|n| @at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "kind" => lambda {|n| @kind = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentCalendarEventKind) },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "slug" => lambda {|n| @slug = n.get_string_value() },
                        "tournamentId" => lambda {|n| @tournament_id = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the kind property value. registration = registration deadline, checkin = check-in opens, start = tournament start.
                ## @return a tournament_calendar_event_kind
                ## 
                def kind
                    return @kind
                end
                ## 
                ## Sets the kind property value. registration = registration deadline, checkin = check-in opens, start = tournament start.
                ## @param value Value to set for the kind property.
                ## @return a void
                ## 
                def kind=(value)
                    @kind = value
                end
                ## 
                ## Gets the name property value. Tournament display name.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Tournament display name.
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
                    writer.write_object_value("at", @at)
                    writer.write_enum_value("kind", @kind)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("slug", @slug)
                    writer.write_string_value("tournamentId", @tournament_id)
                end
                ## 
                ## Gets the slug property value. URL-friendly tournament identifier.
                ## @return a string
                ## 
                def slug
                    return @slug
                end
                ## 
                ## Sets the slug property value. URL-friendly tournament identifier.
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
