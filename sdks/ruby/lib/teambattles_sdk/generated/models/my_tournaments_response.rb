require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # The key owner's manageable tournaments.
            class MyTournamentsResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Number of tournaments returned.
                @count
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                # Tournaments the caller manages, including drafts and unapproved ones. Capped at 100.
                @tournaments
                ## 
                ## Gets the count property value. Number of tournaments returned.
                ## @return a integer
                ## 
                def count
                    return @count
                end
                ## 
                ## Sets the count property value. Number of tournaments returned.
                ## @param value Value to set for the count property.
                ## @return a void
                ## 
                def count=(value)
                    @count = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a my_tournaments_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MyTournamentsResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "count" => lambda {|n| @count = n.get_number_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                        "tournaments" => lambda {|n| @tournaments = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::MyTournamentSummary.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("count", @count)
                    writer.write_string_value("timestamp", @timestamp)
                    writer.write_collection_of_object_values("tournaments", @tournaments)
                end
                ## 
                ## Gets the timestamp property value. Response generation time (ISO 8601).
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. Response generation time (ISO 8601).
                ## @param value Value to set for the timestamp property.
                ## @return a void
                ## 
                def timestamp=(value)
                    @timestamp = value
                end
                ## 
                ## Gets the tournaments property value. Tournaments the caller manages, including drafts and unapproved ones. Capped at 100.
                ## @return a my_tournament_summary
                ## 
                def tournaments
                    return @tournaments
                end
                ## 
                ## Sets the tournaments property value. Tournaments the caller manages, including drafts and unapproved ones. Capped at 100.
                ## @param value Value to set for the tournaments property.
                ## @return a void
                ## 
                def tournaments=(value)
                    @tournaments = value
                end
            end
        end
    end
end
