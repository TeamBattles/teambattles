require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A page of publicly listed tournaments, featured entries first.
            class TournamentDiscoverPage
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Number of tournaments in this page.
                @count
                ## 
                # Echo of the applied page size.
                @limit
                ## 
                # Echo of the requested 1-based page.
                @page
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                # Total tournaments matching the filters.
                @total
                ## 
                # Tournaments on this page.
                @tournaments
                ## 
                ## Gets the count property value. Number of tournaments in this page.
                ## @return a integer
                ## 
                def count
                    return @count
                end
                ## 
                ## Sets the count property value. Number of tournaments in this page.
                ## @param value Value to set for the count property.
                ## @return a void
                ## 
                def count=(value)
                    @count = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_discover_page
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentDiscoverPage.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "count" => lambda {|n| @count = n.get_number_value() },
                        "limit" => lambda {|n| @limit = n.get_number_value() },
                        "page" => lambda {|n| @page = n.get_number_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                        "total" => lambda {|n| @total = n.get_number_value() },
                        "tournaments" => lambda {|n| @tournaments = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentSummary.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the limit property value. Echo of the applied page size.
                ## @return a integer
                ## 
                def limit
                    return @limit
                end
                ## 
                ## Sets the limit property value. Echo of the applied page size.
                ## @param value Value to set for the limit property.
                ## @return a void
                ## 
                def limit=(value)
                    @limit = value
                end
                ## 
                ## Gets the page property value. Echo of the requested 1-based page.
                ## @return a integer
                ## 
                def page
                    return @page
                end
                ## 
                ## Sets the page property value. Echo of the requested 1-based page.
                ## @param value Value to set for the page property.
                ## @return a void
                ## 
                def page=(value)
                    @page = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("count", @count)
                    writer.write_number_value("limit", @limit)
                    writer.write_number_value("page", @page)
                    writer.write_string_value("timestamp", @timestamp)
                    writer.write_number_value("total", @total)
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
                ## Gets the total property value. Total tournaments matching the filters.
                ## @return a integer
                ## 
                def total
                    return @total
                end
                ## 
                ## Sets the total property value. Total tournaments matching the filters.
                ## @param value Value to set for the total property.
                ## @return a void
                ## 
                def total=(value)
                    @total = value
                end
                ## 
                ## Gets the tournaments property value. Tournaments on this page.
                ## @return a tournament_summary
                ## 
                def tournaments
                    return @tournaments
                end
                ## 
                ## Sets the tournaments property value. Tournaments on this page.
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
