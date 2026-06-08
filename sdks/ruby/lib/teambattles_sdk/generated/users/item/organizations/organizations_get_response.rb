require 'microsoft_kiota_abstractions'
require_relative '../../../models/api_user_organization_membership'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../users'
require_relative '../item'
require_relative './organizations'

module TeamBattlesSdk
    module Generated
        module Users
            module Item
                module Organizations
                    ## 
                    # Envelope containing organizations, count, and a response timestamp.
                    class OrganizationsGetResponse
                        include MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # The count property
                        @count
                        ## 
                        # The organizations property
                        @organizations
                        ## 
                        # ISO 8601 timestamp.
                        @timestamp
                        ## 
                        ## Gets the count property value. The count property
                        ## @return a integer
                        ## 
                        def count
                            return @count
                        end
                        ## 
                        ## Sets the count property value. The count property
                        ## @param value Value to set for the count property.
                        ## @return a void
                        ## 
                        def count=(value)
                            @count = value
                        end
                        ## 
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a organizations_get_response
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return OrganizationsGetResponse.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "count" => lambda {|n| @count = n.get_number_value() },
                                "organizations" => lambda {|n| @organizations = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserOrganizationMembership.create_from_discriminator_value(pn) }) },
                                "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the organizations property value. The organizations property
                        ## @return a api_user_organization_membership
                        ## 
                        def organizations
                            return @organizations
                        end
                        ## 
                        ## Sets the organizations property value. The organizations property
                        ## @param value Value to set for the organizations property.
                        ## @return a void
                        ## 
                        def organizations=(value)
                            @organizations = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_number_value("count", @count)
                            writer.write_collection_of_object_values("organizations", @organizations)
                            writer.write_string_value("timestamp", @timestamp)
                        end
                        ## 
                        ## Gets the timestamp property value. ISO 8601 timestamp.
                        ## @return a string
                        ## 
                        def timestamp
                            return @timestamp
                        end
                        ## 
                        ## Sets the timestamp property value. ISO 8601 timestamp.
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
    end
end
