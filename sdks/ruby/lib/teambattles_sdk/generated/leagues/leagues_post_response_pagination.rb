require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './leagues'

module TeamBattlesSdk
    module Generated
        module Leagues
            class LeaguesPostResponsePagination
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The limit property
                @limit
                ## 
                # The page property
                @page
                ## 
                # The total property
                @total
                ## 
                # The totalPages property
                @total_pages
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a leagues_post_response_pagination
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeaguesPostResponsePagination.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "limit" => lambda {|n| @limit = n.get_number_value() },
                        "page" => lambda {|n| @page = n.get_number_value() },
                        "total" => lambda {|n| @total = n.get_number_value() },
                        "totalPages" => lambda {|n| @total_pages = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the limit property value. The limit property
                ## @return a integer
                ## 
                def limit
                    return @limit
                end
                ## 
                ## Sets the limit property value. The limit property
                ## @param value Value to set for the limit property.
                ## @return a void
                ## 
                def limit=(value)
                    @limit = value
                end
                ## 
                ## Gets the page property value. The page property
                ## @return a integer
                ## 
                def page
                    return @page
                end
                ## 
                ## Sets the page property value. The page property
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
                    writer.write_number_value("limit", @limit)
                    writer.write_number_value("page", @page)
                    writer.write_number_value("total", @total)
                    writer.write_number_value("totalPages", @total_pages)
                end
                ## 
                ## Gets the total property value. The total property
                ## @return a integer
                ## 
                def total
                    return @total
                end
                ## 
                ## Sets the total property value. The total property
                ## @param value Value to set for the total property.
                ## @return a void
                ## 
                def total=(value)
                    @total = value
                end
                ## 
                ## Gets the totalPages property value. The totalPages property
                ## @return a integer
                ## 
                def total_pages
                    return @total_pages
                end
                ## 
                ## Sets the totalPages property value. The totalPages property
                ## @param value Value to set for the totalPages property.
                ## @return a void
                ## 
                def total_pages=(value)
                    @total_pages = value
                end
            end
        end
    end
end
