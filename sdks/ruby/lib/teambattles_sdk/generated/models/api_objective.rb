require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # Server-safe objective DTO. UI icon components are intentionally omitted.
            class ApiObjective
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # Machine-readable completion rule.
                @completion_rule
                ##
                # i18n key for the objective description.
                @description_key
                ##
                # Experience awarded by this objective.
                @exp
                ##
                # Objective definition ID.
                @id
                ##
                # Objective completion scope.
                @scope
                ##
                # i18n key for the objective title.
                @title_key
                ##
                ## Gets the completionRule property value. Machine-readable completion rule.
                ## @return a string
                ##
                def completion_rule
                    return @completion_rule
                end
                ##
                ## Sets the completionRule property value. Machine-readable completion rule.
                ## @param value Value to set for the completionRule property.
                ## @return a void
                ##
                def completion_rule=(value)
                    @completion_rule = value
                end
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_objective
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiObjective.new
                end
                ##
                ## Gets the descriptionKey property value. i18n key for the objective description.
                ## @return a string
                ##
                def description_key
                    return @description_key
                end
                ##
                ## Sets the descriptionKey property value. i18n key for the objective description.
                ## @param value Value to set for the descriptionKey property.
                ## @return a void
                ##
                def description_key=(value)
                    @description_key = value
                end
                ##
                ## Gets the exp property value. Experience awarded by this objective.
                ## @return a double
                ##
                def exp
                    return @exp
                end
                ##
                ## Sets the exp property value. Experience awarded by this objective.
                ## @param value Value to set for the exp property.
                ## @return a void
                ##
                def exp=(value)
                    @exp = value
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "completionRule" => lambda {|n| @completion_rule = n.get_string_value() },
                        "descriptionKey" => lambda {|n| @description_key = n.get_string_value() },
                        "exp" => lambda {|n| @exp = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "scope" => lambda {|n| @scope = n.get_string_value() },
                        "titleKey" => lambda {|n| @title_key = n.get_string_value() },
                    }
                end
                ##
                ## Gets the id property value. Objective definition ID.
                ## @return a string
                ##
                def id
                    return @id
                end
                ##
                ## Sets the id property value. Objective definition ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ##
                def id=(value)
                    @id = value
                end
                ##
                ## Gets the scope property value. Objective completion scope.
                ## @return a string
                ##
                def scope
                    return @scope
                end
                ##
                ## Sets the scope property value. Objective completion scope.
                ## @param value Value to set for the scope property.
                ## @return a void
                ##
                def scope=(value)
                    @scope = value
                end
                ##
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("completionRule", @completion_rule)
                    writer.write_string_value("descriptionKey", @description_key)
                    writer.write_object_value("exp", @exp)
                    writer.write_string_value("id", @id)
                    writer.write_string_value("scope", @scope)
                    writer.write_string_value("titleKey", @title_key)
                end
                ##
                ## Gets the titleKey property value. i18n key for the objective title.
                ## @return a string
                ##
                def title_key
                    return @title_key
                end
                ##
                ## Sets the titleKey property value. i18n key for the objective title.
                ## @param value Value to set for the titleKey property.
                ## @return a void
                ##
                def title_key=(value)
                    @title_key = value
                end
            end
        end
    end
end
