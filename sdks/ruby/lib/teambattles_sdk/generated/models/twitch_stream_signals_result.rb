require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # What the stream index did with the channels it was sent.
            class TwitchStreamSignalsResult
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Channels now being recorded: ones already indexed (renewed) plus ones this call added.
                @accepted
                ## 
                # Channels this call added to the index.
                @added
                ## 
                # Channels that were not taken, each with its code.
                @rejected
                ## 
                ## Gets the accepted property value. Channels now being recorded: ones already indexed (renewed) plus ones this call added.
                ## @return a integer
                ## 
                def accepted
                    return @accepted
                end
                ## 
                ## Sets the accepted property value. Channels now being recorded: ones already indexed (renewed) plus ones this call added.
                ## @param value Value to set for the accepted property.
                ## @return a void
                ## 
                def accepted=(value)
                    @accepted = value
                end
                ## 
                ## Gets the added property value. Channels this call added to the index.
                ## @return a integer
                ## 
                def added
                    return @added
                end
                ## 
                ## Sets the added property value. Channels this call added to the index.
                ## @param value Value to set for the added property.
                ## @return a void
                ## 
                def added=(value)
                    @added = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a twitch_stream_signals_result
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TwitchStreamSignalsResult.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "accepted" => lambda {|n| @accepted = n.get_number_value() },
                        "added" => lambda {|n| @added = n.get_number_value() },
                        "rejected" => lambda {|n| @rejected = n.get_collection_of_object_values(lambda {|pn| TeamBattlesSdk::Generated::Models::TwitchStreamSignalsResultRejected.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the rejected property value. Channels that were not taken, each with its code.
                ## @return a twitch_stream_signals_result_rejected
                ## 
                def rejected
                    return @rejected
                end
                ## 
                ## Sets the rejected property value. Channels that were not taken, each with its code.
                ## @param value Value to set for the rejected property.
                ## @return a void
                ## 
                def rejected=(value)
                    @rejected = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("accepted", @accepted)
                    writer.write_number_value("added", @added)
                    writer.write_collection_of_object_values("rejected", @rejected)
                end
            end
        end
    end
end
