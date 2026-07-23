require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Round schedule payload.
            class TournamentRoundScheduleRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Unix ms the round is scheduled to start, or null to clear the round's scheduled time. REQUIRED - there is no 'leave unchanged' value, because omitting it in the underlying mutation clears the field, and a silent clear is not something an integrator should be able to trigger by forgetting a key.
                @starts_at
                ## 
                ## Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @return a i_dictionary
                ## 
                def additional_data
                    return @additional_data
                end
                ## 
                ## Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                ## @param value Value to set for the AdditionalData property.
                ## @return a void
                ## 
                def additional_data=(value)
                    @additional_data = value
                end
                ## 
                ## Instantiates a new TournamentRoundScheduleRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_round_schedule_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentRoundScheduleRequestBody.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "startsAt" => lambda {|n| @starts_at = n.get_object_value(lambda {|pn| TournamentRoundScheduleRequestBody::TournamentRoundScheduleRequestBodyStartsAt.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("startsAt", @starts_at)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the startsAt property value. Unix ms the round is scheduled to start, or null to clear the round's scheduled time. REQUIRED - there is no 'leave unchanged' value, because omitting it in the underlying mutation clears the field, and a silent clear is not something an integrator should be able to trigger by forgetting a key.
                ## @return a tournament_round_schedule_request_body_starts_at
                ## 
                def starts_at
                    return @starts_at
                end
                ## 
                ## Sets the startsAt property value. Unix ms the round is scheduled to start, or null to clear the round's scheduled time. REQUIRED - there is no 'leave unchanged' value, because omitting it in the underlying mutation clears the field, and a silent clear is not something an integrator should be able to trigger by forgetting a key.
                ## @param value Value to set for the startsAt property.
                ## @return a void
                ## 
                def starts_at=(value)
                    @starts_at = value
                end

                ## 
                # Composed type wrapper for classes number, TournamentRoundScheduleRequestBodyStartsAtMember1
                class TournamentRoundScheduleRequestBodyStartsAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type number
                    @integer
                    ## 
                    # Composed type representation for type TournamentRoundScheduleRequestBodyStartsAtMember1
                    @tournament_round_schedule_request_body_starts_at_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tournament_round_schedule_request_body_starts_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TournamentRoundScheduleRequestBodyStartsAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "integer" => lambda {|n| @integer = n.get_number_value() },
                            "TournamentRoundScheduleRequestBody_startsAtMember1" => lambda {|n| @tournament_round_schedule_request_body_starts_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentRoundScheduleRequestBodyStartsAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TournamentRoundScheduleRequestBody_startsAtMember1", @tournament_round_schedule_request_body_starts_at_member1)
                    end
                    ## 
                    ## Gets the TournamentRoundScheduleRequestBody_startsAtMember1 property value. Composed type representation for type TournamentRoundScheduleRequestBodyStartsAtMember1
                    ## @return a tournament_round_schedule_request_body_starts_at_member1
                    ## 
                    def tournament_round_schedule_request_body_starts_at_member1
                        return @tournament_round_schedule_request_body_starts_at_member1
                    end
                    ## 
                    ## Sets the TournamentRoundScheduleRequestBody_startsAtMember1 property value. Composed type representation for type TournamentRoundScheduleRequestBodyStartsAtMember1
                    ## @param value Value to set for the TournamentRoundScheduleRequestBody_startsAtMember1 property.
                    ## @return a void
                    ## 
                    def tournament_round_schedule_request_body_starts_at_member1=(value)
                        @tournament_round_schedule_request_body_starts_at_member1 = value
                    end
                end
            end
        end
    end
end
