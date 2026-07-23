require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # The newly created draft tournament.
            class TournamentCreateResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Always NOT_SUBMITTED. Call submit-for-approval next; the tournament is invisible to the public discovery surface until staff approve it.
                @approval_status
                ## 
                # Derived from the name and de-duplicated server-side, so it is NOT predictable from the name you sent. Every other tournament endpoint resolves by this slug, never by `tournamentId`, so store it.
                @slug
                ## 
                # Always DRAFT. A guaranteed post-condition, not an echo - createCore hard-codes it.
                @status
                ## 
                # The success property
                @success
                ## 
                # The timestamp property
                @timestamp
                ## 
                # The tournamentId property
                @tournament_id
                ## 
                ## Gets the approvalStatus property value. Always NOT_SUBMITTED. Call submit-for-approval next; the tournament is invisible to the public discovery surface until staff approve it.
                ## @return a string
                ## 
                def approval_status
                    return @approval_status
                end
                ## 
                ## Sets the approvalStatus property value. Always NOT_SUBMITTED. Call submit-for-approval next; the tournament is invisible to the public discovery surface until staff approve it.
                ## @param value Value to set for the approvalStatus property.
                ## @return a void
                ## 
                def approval_status=(value)
                    @approval_status = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_create_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentCreateResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "approvalStatus" => lambda {|n| @approval_status = n.get_string_value() },
                        "slug" => lambda {|n| @slug = n.get_string_value() },
                        "status" => lambda {|n| @status = n.get_string_value() },
                        "success" => lambda {|n| @success = n.get_boolean_value() },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                        "tournamentId" => lambda {|n| @tournament_id = n.get_string_value() },
                    }
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("approvalStatus", @approval_status)
                    writer.write_string_value("slug", @slug)
                    writer.write_string_value("status", @status)
                    writer.write_boolean_value("success", @success)
                    writer.write_string_value("timestamp", @timestamp)
                    writer.write_string_value("tournamentId", @tournament_id)
                end
                ## 
                ## Gets the slug property value. Derived from the name and de-duplicated server-side, so it is NOT predictable from the name you sent. Every other tournament endpoint resolves by this slug, never by `tournamentId`, so store it.
                ## @return a string
                ## 
                def slug
                    return @slug
                end
                ## 
                ## Sets the slug property value. Derived from the name and de-duplicated server-side, so it is NOT predictable from the name you sent. Every other tournament endpoint resolves by this slug, never by `tournamentId`, so store it.
                ## @param value Value to set for the slug property.
                ## @return a void
                ## 
                def slug=(value)
                    @slug = value
                end
                ## 
                ## Gets the status property value. Always DRAFT. A guaranteed post-condition, not an echo - createCore hard-codes it.
                ## @return a string
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. Always DRAFT. A guaranteed post-condition, not an echo - createCore hard-codes it.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
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
                ## Gets the tournamentId property value. The tournamentId property
                ## @return a string
                ## 
                def tournament_id
                    return @tournament_id
                end
                ## 
                ## Sets the tournamentId property value. The tournamentId property
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
