require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class StreamSignalsBodyChannels
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Twitch user id.
                @id
                ## 
                # favorite: a user starred the channel. follow: a user follows it on Twitch. watch: a user watched it live.
                @kind
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
                ## Instantiates a new StreamSignalsBodyChannels and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a stream_signals_body_channels
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return StreamSignalsBodyChannels.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "kind" => lambda {|n| @kind = n.get_enum_value(TeamBattlesSdk::Generated::Models::StreamSignalsBodyChannelsKind) },
                    }
                end
                ## 
                ## Gets the id property value. Twitch user id.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Twitch user id.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the kind property value. favorite: a user starred the channel. follow: a user follows it on Twitch. watch: a user watched it live.
                ## @return a stream_signals_body_channels_kind
                ## 
                def kind
                    return @kind
                end
                ## 
                ## Sets the kind property value. favorite: a user starred the channel. follow: a user follows it on Twitch. watch: a user watched it live.
                ## @param value Value to set for the kind property.
                ## @return a void
                ## 
                def kind=(value)
                    @kind = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("id", @id)
                    writer.write_enum_value("kind", @kind)
                    writer.write_additional_data(@additional_data)
                end
            end
        end
    end
end
