require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class UpsertDisplayRuleRequestBodyScope
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # The modes property
                @modes
                ## 
                # The playlists property
                @playlists
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
                ## Instantiates a new UpsertDisplayRuleRequestBodyScope and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a upsert_display_rule_request_body_scope
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return UpsertDisplayRuleRequestBodyScope.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "modes" => lambda {|n| @modes = n.get_collection_of_primitive_values(String) },
                        "playlists" => lambda {|n| @playlists = n.get_collection_of_primitive_values(String) },
                    }
                end
                ## 
                ## Gets the modes property value. The modes property
                ## @return a string
                ## 
                def modes
                    return @modes
                end
                ## 
                ## Sets the modes property value. The modes property
                ## @param value Value to set for the modes property.
                ## @return a void
                ## 
                def modes=(value)
                    @modes = value
                end
                ## 
                ## Gets the playlists property value. The playlists property
                ## @return a string
                ## 
                def playlists
                    return @playlists
                end
                ## 
                ## Sets the playlists property value. The playlists property
                ## @param value Value to set for the playlists property.
                ## @return a void
                ## 
                def playlists=(value)
                    @playlists = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_primitive_values("modes", @modes)
                    writer.write_collection_of_primitive_values("playlists", @playlists)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
