require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Season selector options.
            class LeagueSeasonOptions
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Recommended default option.
                @default_season_id
                ## 
                # Season selector options for a league game.
                @seasons
                ## 
                # Response generation time (ISO 8601).
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a league_season_options
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeagueSeasonOptions.new
                end
                ## 
                ## Gets the defaultSeasonId property value. Recommended default option.
                ## @return a league_season_options_default_season_id
                ## 
                def default_season_id
                    return @default_season_id
                end
                ## 
                ## Sets the defaultSeasonId property value. Recommended default option.
                ## @param value Value to set for the defaultSeasonId property.
                ## @return a void
                ## 
                def default_season_id=(value)
                    @default_season_id = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "defaultSeasonId" => lambda {|n| @default_season_id = n.get_object_value(lambda {|pn| LeagueSeasonOptions::LeagueSeasonOptionsDefaultSeasonId.create_from_discriminator_value(pn) }) },
                        "seasons" => lambda {|n| @seasons = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueSeasonOptionsSeasons.create_from_discriminator_value(pn) }) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the seasons property value. Season selector options for a league game.
                ## @return a league_season_options_seasons
                ## 
                def seasons
                    return @seasons
                end
                ## 
                ## Sets the seasons property value. Season selector options for a league game.
                ## @param value Value to set for the seasons property.
                ## @return a void
                ## 
                def seasons=(value)
                    @seasons = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("defaultSeasonId", @default_season_id)
                    writer.write_collection_of_object_values("seasons", @seasons)
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

                ## 
                # Composed type wrapper for classes LeagueSeasonOptionsDefaultSeasonIdMember1, string
                class LeagueSeasonOptionsDefaultSeasonId
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type LeagueSeasonOptionsDefaultSeasonIdMember1
                    @league_season_options_default_season_id_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a league_season_options_default_season_id
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return LeagueSeasonOptionsDefaultSeasonId.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "LeagueSeasonOptions_defaultSeasonIdMember1" => lambda {|n| @league_season_options_default_season_id_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::LeagueSeasonOptionsDefaultSeasonIdMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the LeagueSeasonOptions_defaultSeasonIdMember1 property value. Composed type representation for type LeagueSeasonOptionsDefaultSeasonIdMember1
                    ## @return a league_season_options_default_season_id_member1
                    ## 
                    def league_season_options_default_season_id_member1
                        return @league_season_options_default_season_id_member1
                    end
                    ## 
                    ## Sets the LeagueSeasonOptions_defaultSeasonIdMember1 property value. Composed type representation for type LeagueSeasonOptionsDefaultSeasonIdMember1
                    ## @param value Value to set for the LeagueSeasonOptions_defaultSeasonIdMember1 property.
                    ## @return a void
                    ## 
                    def league_season_options_default_season_id_member1=(value)
                        @league_season_options_default_season_id_member1 = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("LeagueSeasonOptions_defaultSeasonIdMember1", @league_season_options_default_season_id_member1)
                        writer.write_string_value("string", @string)
                    end
                    ## 
                    ## Gets the string property value. Composed type representation for type string
                    ## @return a string
                    ## 
                    def string
                        return @string
                    end
                    ## 
                    ## Sets the string property value. Composed type representation for type string
                    ## @param value Value to set for the string property.
                    ## @return a void
                    ## 
                    def string=(value)
                        @string = value
                    end
                end
            end
        end
    end
end
