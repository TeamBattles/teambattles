require 'microsoft_kiota_abstractions'
require_relative '../../../models/api_user_stats'
require_relative '../../../team_battles_sdk::_generated'
require_relative '../../users'
require_relative '../item'
require_relative './stats'

module TeamBattlesSdk
    module Generated
        module Users
            module Item
                module Stats
                    ##
                    # Envelope containing stats plus a response timestamp.
                    class StatsGetResponse
                        include MicrosoftKiotaAbstractions::Parsable
                        ##
                        # API-safe aggregate user stats.
                        @stats
                        ##
                        # ISO 8601 timestamp.
                        @timestamp
                        ##
                        ## Creates a new instance of the appropriate class based on discriminator value
                        ## @param parse_node The parse node to use to read the discriminator value and create the object
                        ## @return a stats_get_response
                        ##
                        def self.create_from_discriminator_value(parse_node)
                            raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                            return StatsGetResponse.new
                        end
                        ##
                        ## The deserialization information for the current model
                        ## @return a i_dictionary
                        ##
                        def get_field_deserializers()
                            return {
                                "stats" => lambda {|n| @stats = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserStats.create_from_discriminator_value(pn) }) },
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
                            writer.write_object_value("stats", @stats)
                            writer.write_string_value("timestamp", @timestamp)
                        end
                        ##
                        ## Gets the stats property value. API-safe aggregate user stats.
                        ## @return a api_user_stats
                        ##
                        def stats
                            return @stats
                        end
                        ##
                        ## Sets the stats property value. API-safe aggregate user stats.
                        ## @param value Value to set for the stats property.
                        ## @return a void
                        ##
                        def stats=(value)
                            @stats = value
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
