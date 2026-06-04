require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # A single map's score entry.
            class MapScoreItem
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The confirmedBy property
                @confirmed_by
                ## 
                # Creation time (ISO 8601).
                @created_at
                ## 
                # The creatorTeamScore property
                @creator_team_score
                ## 
                # The mapId property
                @map_id
                ## 
                # The mapIndex property
                @map_index
                ## 
                # The opponentTeamScore property
                @opponent_team_score
                ## 
                # CONFIRMED or PENDING.
                @score_status
                ## 
                # The screenshotUrls property
                @screenshot_urls
                ## 
                # The submittedBy property
                @submitted_by
                ## 
                ## Gets the confirmedBy property value. The confirmedBy property
                ## @return a score_confirmer
                ## 
                def confirmed_by
                    return @confirmed_by
                end
                ## 
                ## Sets the confirmedBy property value. The confirmedBy property
                ## @param value Value to set for the confirmedBy property.
                ## @return a void
                ## 
                def confirmed_by=(value)
                    @confirmed_by = value
                end
                ## 
                ## Gets the createdAt property value. Creation time (ISO 8601).
                ## @return a map_score_item_created_at
                ## 
                def created_at
                    return @created_at
                end
                ## 
                ## Sets the createdAt property value. Creation time (ISO 8601).
                ## @param value Value to set for the createdAt property.
                ## @return a void
                ## 
                def created_at=(value)
                    @created_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a map_score_item
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return MapScoreItem.new
                end
                ## 
                ## Gets the creatorTeamScore property value. The creatorTeamScore property
                ## @return a integer
                ## 
                def creator_team_score
                    return @creator_team_score
                end
                ## 
                ## Sets the creatorTeamScore property value. The creatorTeamScore property
                ## @param value Value to set for the creatorTeamScore property.
                ## @return a void
                ## 
                def creator_team_score=(value)
                    @creator_team_score = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "confirmedBy" => lambda {|n| @confirmed_by = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ScoreConfirmer.create_from_discriminator_value(pn) }) },
                        "createdAt" => lambda {|n| @created_at = n.get_object_value(lambda {|pn| MapScoreItem::MapScoreItemCreatedAt.create_from_discriminator_value(pn) }) },
                        "creatorTeamScore" => lambda {|n| @creator_team_score = n.get_number_value() },
                        "mapId" => lambda {|n| @map_id = n.get_string_value() },
                        "mapIndex" => lambda {|n| @map_index = n.get_number_value() },
                        "opponentTeamScore" => lambda {|n| @opponent_team_score = n.get_number_value() },
                        "scoreStatus" => lambda {|n| @score_status = n.get_string_value() },
                        "screenshotUrls" => lambda {|n| @screenshot_urls = n.get_collection_of_primitive_values(String) },
                        "submittedBy" => lambda {|n| @submitted_by = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ScoreSubmitter.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the mapId property value. The mapId property
                ## @return a string
                ## 
                def map_id
                    return @map_id
                end
                ## 
                ## Sets the mapId property value. The mapId property
                ## @param value Value to set for the mapId property.
                ## @return a void
                ## 
                def map_id=(value)
                    @map_id = value
                end
                ## 
                ## Gets the mapIndex property value. The mapIndex property
                ## @return a integer
                ## 
                def map_index
                    return @map_index
                end
                ## 
                ## Sets the mapIndex property value. The mapIndex property
                ## @param value Value to set for the mapIndex property.
                ## @return a void
                ## 
                def map_index=(value)
                    @map_index = value
                end
                ## 
                ## Gets the opponentTeamScore property value. The opponentTeamScore property
                ## @return a integer
                ## 
                def opponent_team_score
                    return @opponent_team_score
                end
                ## 
                ## Sets the opponentTeamScore property value. The opponentTeamScore property
                ## @param value Value to set for the opponentTeamScore property.
                ## @return a void
                ## 
                def opponent_team_score=(value)
                    @opponent_team_score = value
                end
                ## 
                ## Gets the scoreStatus property value. CONFIRMED or PENDING.
                ## @return a string
                ## 
                def score_status
                    return @score_status
                end
                ## 
                ## Sets the scoreStatus property value. CONFIRMED or PENDING.
                ## @param value Value to set for the scoreStatus property.
                ## @return a void
                ## 
                def score_status=(value)
                    @score_status = value
                end
                ## 
                ## Gets the screenshotUrls property value. The screenshotUrls property
                ## @return a string
                ## 
                def screenshot_urls
                    return @screenshot_urls
                end
                ## 
                ## Sets the screenshotUrls property value. The screenshotUrls property
                ## @param value Value to set for the screenshotUrls property.
                ## @return a void
                ## 
                def screenshot_urls=(value)
                    @screenshot_urls = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("confirmedBy", @confirmed_by)
                    writer.write_object_value("createdAt", @created_at)
                    writer.write_number_value("creatorTeamScore", @creator_team_score)
                    writer.write_string_value("mapId", @map_id)
                    writer.write_number_value("mapIndex", @map_index)
                    writer.write_number_value("opponentTeamScore", @opponent_team_score)
                    writer.write_string_value("scoreStatus", @score_status)
                    writer.write_collection_of_primitive_values("screenshotUrls", @screenshot_urls)
                    writer.write_object_value("submittedBy", @submitted_by)
                end
                ## 
                ## Gets the submittedBy property value. The submittedBy property
                ## @return a score_submitter
                ## 
                def submitted_by
                    return @submitted_by
                end
                ## 
                ## Sets the submittedBy property value. The submittedBy property
                ## @param value Value to set for the submittedBy property.
                ## @return a void
                ## 
                def submitted_by=(value)
                    @submitted_by = value
                end

                ## 
                # Composed type wrapper for classes MapScoreItemCreatedAtMember1, string
                class MapScoreItemCreatedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type MapScoreItemCreatedAtMember1
                    @map_score_item_created_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a map_score_item_created_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return MapScoreItemCreatedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "MapScoreItem_createdAtMember1" => lambda {|n| @map_score_item_created_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::MapScoreItemCreatedAtMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Gets the MapScoreItem_createdAtMember1 property value. Composed type representation for type MapScoreItemCreatedAtMember1
                    ## @return a map_score_item_created_at_member1
                    ## 
                    def map_score_item_created_at_member1
                        return @map_score_item_created_at_member1
                    end
                    ## 
                    ## Sets the MapScoreItem_createdAtMember1 property value. Composed type representation for type MapScoreItemCreatedAtMember1
                    ## @param value Value to set for the MapScoreItem_createdAtMember1 property.
                    ## @return a void
                    ## 
                    def map_score_item_created_at_member1=(value)
                        @map_score_item_created_at_member1 = value
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("MapScoreItem_createdAtMember1", @map_score_item_created_at_member1)
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
