require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # All map scores for a match plus the aggregate series tally.
            class GameScoresResponse
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # All recorded map scores for the match.
                @scores
                ## 
                # Aggregate map-win tally across the series.
                @series_score
                ## 
                # Server response time (ISO 8601).
                @timestamp
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a game_scores_response
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return GameScoresResponse.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "scores" => lambda {|n| @scores = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::GameScore.create_from_discriminator_value(pn) }) },
                        "seriesScore" => lambda {|n| @series_score = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::GameSeriesScore.create_from_discriminator_value(pn) }) },
                        "timestamp" => lambda {|n| @timestamp = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the scores property value. All recorded map scores for the match.
                ## @return a game_score
                ## 
                def scores
                    return @scores
                end
                ## 
                ## Sets the scores property value. All recorded map scores for the match.
                ## @param value Value to set for the scores property.
                ## @return a void
                ## 
                def scores=(value)
                    @scores = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_collection_of_object_values("scores", @scores)
                    writer.write_object_value("seriesScore", @series_score)
                    writer.write_string_value("timestamp", @timestamp)
                end
                ## 
                ## Gets the seriesScore property value. Aggregate map-win tally across the series.
                ## @return a game_series_score
                ## 
                def series_score
                    return @series_score
                end
                ## 
                ## Sets the seriesScore property value. Aggregate map-win tally across the series.
                ## @param value Value to set for the seriesScore property.
                ## @return a void
                ## 
                def series_score=(value)
                    @series_score = value
                end
                ## 
                ## Gets the timestamp property value. Server response time (ISO 8601).
                ## @return a string
                ## 
                def timestamp
                    return @timestamp
                end
                ## 
                ## Sets the timestamp property value. Server response time (ISO 8601).
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
