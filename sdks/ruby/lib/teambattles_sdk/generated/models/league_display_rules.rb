require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # League display rules.
            class LeagueDisplayRules
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # Number of display rules returned.
                @count
                ##
                # Display rule documents for the league game.
                @display_rules
                ##
                # Response generation time (ISO 8601).
                @timestamp
                ##
                ## Gets the count property value. Number of display rules returned.
                ## @return a integer
                ##
                def count
                    return @count
                end
                ##
                ## Sets the count property value. Number of display rules returned.
                ## @param value Value to set for the count property.
                ## @return a void
                ##
                def count=(value)
                    @count = value
                end
                ##
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a league_display_rules
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeagueDisplayRules.new
                end
                ##
                ## Gets the displayRules property value. Display rule documents for the league game.
                ## @return a league_display_rules_display_rules
                ##
                def display_rules
                    return @display_rules
                end
                ##
                ## Sets the displayRules property value. Display rule documents for the league game.
                ## @param value Value to set for the displayRules property.
                ## @return a void
                ##
                def display_rules=(value)
                    @display_rules = value
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "count" => lambda {|n| @count = n.get_number_value() },
                        "displayRules" => lambda {|n| @display_rules = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueDisplayRulesDisplayRules.create_from_discriminator_value(pn) }) },
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
                    writer.write_number_value("count", @count)
                    writer.write_collection_of_object_values("displayRules", @display_rules)
                    writer.write_string_value("timestamp", @timestamp)
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
            end
        end
    end
end
