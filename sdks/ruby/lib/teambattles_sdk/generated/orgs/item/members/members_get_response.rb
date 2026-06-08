require 'microsoft_kiota_abstractions'
require_relative '../../../models/api_member'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../orgs'
require_relative '../item'
require_relative './members'

module TeamBattlesSdk
    module Generated
        module Orgs
            module Item
                module Members
                    ## 
                    # Envelope containing members, count, and a response timestamp.
                    class MembersGetResponse
                        include MicrosoftKiotaAbstractions::Parsable
                        ## 
                        # The count property
                        @count
                        ## 
                        # The members property
                        @members
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
                        ## @return a members_get_response
                        ## 
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return MembersGetResponse.new
                        end
                        ## 
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ## 
                        def get_field_deserializers()
                            return {
                                "count" => lambda {|n| @count = n.get_number_value() },
                                "members" => lambda {|n| @members = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiMember.create_from_discriminator_value(pn) }) },
                                "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                            }
                        end
                        ## 
                        ## Gets the members property value. The members property
                        ## @return a api_member
                        ## 
                        def members
                            return @members
                        end
                        ## 
                        ## Sets the members property value. The members property
                        ## @param value Value to set for the members property.
                        ## @return a void
                        ## 
                        def members=(value)
                            @members = value
                        end
                        ## 
                        ## Serializes information the current object
                        ## @param writer Serialization writer to use to serialize this model
                        ## @return a void
                        ## 
                        def serialize(writer)
                            raise StandardError, 'writer cannot be null' if writer.nil?
                            writer.write_number_value("count", @count)
                            writer.write_collection_of_object_values("members", @members)
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
