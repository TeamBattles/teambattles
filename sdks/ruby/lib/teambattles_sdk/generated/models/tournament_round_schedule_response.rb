require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Result of scheduling a tournament round.
            class TournamentRoundScheduleResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The roundId property
                @round_id
                ## 
                # The value now stored on the round.
                @starts_at
                ## 
                # The success property
                @success
                ## 
                # The timestamp property
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_round_schedule_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentRoundScheduleResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "roundId" => lambda {|n| @round_id = n.get_string_value() },
                        "startsAt" => lambda {|n| @starts_at = n.get_object_value(lambda {|pn| TournamentRoundScheduleResponse::TournamentRoundScheduleResponseStartsAt.create_from_discriminator_value(pn) }) },
                        "success" => lambda {|n| @success = n.get_boolean_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the roundId property value. The roundId property
                ## @return a string
                ## 
                def round_id
                    return @round_id
                end
                ## 
                ## Sets the roundId property value. The roundId property
                ## @param value Value to set for the roundId property.
                ## @return a void
                ## 
                def round_id=(value)
                    @round_id = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("roundId", @round_id)
                    writer.write_object_value("startsAt", @starts_at)
                    writer.write_boolean_value("success", @success)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the startsAt property value. The value now stored on the round.
                ## @return a tournament_round_schedule_response_starts_at
                ## 
                def starts_at
                    return @starts_at
                end
                ## 
                ## Sets the startsAt property value. The value now stored on the round.
                ## @param value Value to set for the startsAt property.
                ## @return a void
                ## 
                def starts_at=(value)
                    @starts_at = value
                end
                ## 
                ## Gets the success property value. The success property
                ## @return a boolean
                ## 
                def success
                    return @success
                end
                ## 
                ## Sets the success property value. The success property
                ## @param value Value to set for the success property.
                ## @return a void
                ## 
                def success=(value)
                    @success = value
                end
                ## 
                ## Gets the timestamp property value. The timestamp property
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. The timestamp property
                ## @param value Value to set for the timestamp property.
                ## @return a void
                ## 
                def timestamp=(value)
                    @timestamp = value
                end

                ## 
                # Composed type wrapper for classes number, TournamentRoundScheduleResponseStartsAtMember1
                class TournamentRoundScheduleResponseStartsAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type number
                    @integer
                    ## 
                    # Composed type representation for type TournamentRoundScheduleResponseStartsAtMember1
                    @tournament_round_schedule_response_starts_at_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tournament_round_schedule_response_starts_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TournamentRoundScheduleResponseStartsAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "integer" => lambda {|n| @integer = n.get_number_value() },
                            "TournamentRoundScheduleResponse_startsAtMember1" => lambda {|n| @tournament_round_schedule_response_starts_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentRoundScheduleResponseStartsAtMember1.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Gets the integer property value. Composed type representation for type number
                    ## @return a integer
                    ## 
                    def integer
                        return @integer
                    end
                    ## 
                    ## Sets the integer property value. Composed type representation for type number
                    ## @param value Value to set for the integer property.
                    ## @return a void
                    ## 
                    def integer=(value)
                        @integer = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_number_value("integer", @integer)
                        writer.write_object_value("TournamentRoundScheduleResponse_startsAtMember1", @tournament_round_schedule_response_starts_at_member1)
                    end
                    ## 
                    ## Gets the TournamentRoundScheduleResponse_startsAtMember1 property value. Composed type representation for type TournamentRoundScheduleResponseStartsAtMember1
                    ## @return a tournament_round_schedule_response_starts_at_member1
                    ## 
                    def tournament_round_schedule_response_starts_at_member1
                        return @tournament_round_schedule_response_starts_at_member1
                    end
                    ## 
                    ## Sets the TournamentRoundScheduleResponse_startsAtMember1 property value. Composed type representation for type TournamentRoundScheduleResponseStartsAtMember1
                    ## @param value Value to set for the TournamentRoundScheduleResponse_startsAtMember1 property.
                    ## @return a void
                    ## 
                    def tournament_round_schedule_response_starts_at_member1=(value)
                        @tournament_round_schedule_response_starts_at_member1 = value
                    end
                end
            end
        end
    end
end
