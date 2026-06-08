require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # League season creation payload.
            class CreateSeasonRequestBody
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Season end timestamp in milliseconds.
                @end_date
                ## 
                # Game ID the season belongs to.
                @game_id
                ## 
                # Season name.
                @name
                ## 
                # Season start timestamp in milliseconds.
                @start_date
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
                ## Instantiates a new CreateSeasonRequestBody and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a create_season_request_body
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return CreateSeasonRequestBody.new
                end
                ## 
                ## Gets the endDate property value. Season end timestamp in milliseconds.
                ## @return a double
                ## 
                def end_date
                    return @end_date
                end
                ## 
                ## Sets the endDate property value. Season end timestamp in milliseconds.
                ## @param value Value to set for the endDate property.
                ## @return a void
                ## 
                def end_date=(value)
                    @end_date = value
                end
                ## 
                ## Gets the gameId property value. Game ID the season belongs to.
                ## @return a string
                ## 
                def game_id
                    return @game_id
                end
                ## 
                ## Sets the gameId property value. Game ID the season belongs to.
                ## @param value Value to set for the gameId property.
                ## @return a void
                ## 
                def game_id=(value)
                    @game_id = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "endDate" => lambda {|n| @end_date = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "gameId" => lambda {|n| @game_id = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "startDate" => lambda {|n| @start_date = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the name property value. Season name.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Season name.
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
                    writer.write_object_value("endDate", @end_date)
                    writer.write_string_value("gameId", @game_id)
                    writer.write_string_value("name", @name)
                    writer.write_object_value("startDate", @start_date)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the startDate property value. Season start timestamp in milliseconds.
                ## @return a double
                ## 
                def start_date
                    return @start_date
                end
                ## 
                ## Sets the startDate property value. Season start timestamp in milliseconds.
                ## @param value Value to set for the startDate property.
                ## @return a void
                ## 
                def start_date=(value)
                    @start_date = value
                end
            end
        end
    end
end
