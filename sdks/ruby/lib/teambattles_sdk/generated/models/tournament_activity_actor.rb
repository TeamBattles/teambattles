require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # The user who performed a logged tournament action. Platform Staff actions suppress username/name and set isPlatformStaff: true, keeping only the id.
            class TournamentActivityActor
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Actor's user ID.
                @id
                ## 
                # Present and true when a TeamBattles Platform Staff member took the action under audited elevation. username and name are suppressed in that case - only id is retained.
                @is_platform_staff
                ## 
                # Display name. Omitted when the action was taken by Platform Staff.
                @name
                ## 
                # Username. Omitted when the action was taken by Platform Staff.
                @username
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_activity_actor
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentActivityActor.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isPlatformStaff" => lambda {|n| @is_platform_staff = n.get_boolean_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "username" => lambda {|n| @username = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the id property value. Actor's user ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Actor's user ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the isPlatformStaff property value. Present and true when a TeamBattles Platform Staff member took the action under audited elevation. username and name are suppressed in that case - only id is retained.
                ## @return a boolean
                ## 
                def is_platform_staff
                    return @is_platform_staff
                end
                ## 
                ## Sets the isPlatformStaff property value. Present and true when a TeamBattles Platform Staff member took the action under audited elevation. username and name are suppressed in that case - only id is retained.
                ## @param value Value to set for the isPlatformStaff property.
                ## @return a void
                ## 
                def is_platform_staff=(value)
                    @is_platform_staff = value
                end
                ## 
                ## Gets the name property value. Display name. Omitted when the action was taken by Platform Staff.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Display name. Omitted when the action was taken by Platform Staff.
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
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isPlatformStaff", @is_platform_staff)
                    writer.write_string_value("name", @name)
                    writer.write_string_value("username", @username)
                end
                ## 
                ## Gets the username property value. Username. Omitted when the action was taken by Platform Staff.
                ## @return a string
                ## 
                def username
                    return @username
                end
                ## 
                ## Sets the username property value. Username. Omitted when the action was taken by Platform Staff.
                ## @param value Value to set for the username property.
                ## @return a void
                ## 
                def username=(value)
                    @username = value
                end
            end
        end
    end
end
