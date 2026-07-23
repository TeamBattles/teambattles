require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # One sponsor credit line.
            class TournamentSponsorTag
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Used only when prefix is CUSTOM.
                @custom_prefix
                ## 
                # Convex storage id for the sponsor logo.
                @logo_storage_id
                ## 
                # The name property
                @name
                ## 
                # The prefix property
                @prefix
                ## 
                # The url property
                @url
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
                ## Instantiates a new TournamentSponsorTag and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_sponsor_tag
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentSponsorTag.new
                end
                ## 
                ## Gets the customPrefix property value. Used only when prefix is CUSTOM.
                ## @return a string
                ## 
                def custom_prefix
                    return @custom_prefix
                end
                ## 
                ## Sets the customPrefix property value. Used only when prefix is CUSTOM.
                ## @param value Value to set for the customPrefix property.
                ## @return a void
                ## 
                def custom_prefix=(value)
                    @custom_prefix = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "customPrefix" => lambda {|n| @custom_prefix = n.get_string_value() },
                        "logoStorageId" => lambda {|n| @logo_storage_id = n.get_string_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "prefix" => lambda {|n| @prefix = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentSponsorTagPrefix) },
                        "url" => lambda {|n| @url = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the logoStorageId property value. Convex storage id for the sponsor logo.
                ## @return a string
                ## 
                def logo_storage_id
                    return @logo_storage_id
                end
                ## 
                ## Sets the logoStorageId property value. Convex storage id for the sponsor logo.
                ## @param value Value to set for the logoStorageId property.
                ## @return a void
                ## 
                def logo_storage_id=(value)
                    @logo_storage_id = value
                end
                ## 
                ## Gets the name property value. The name property
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. The name property
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the prefix property value. The prefix property
                ## @return a tournament_sponsor_tag_prefix
                ## 
                def prefix
                    return @prefix
                end
                ## 
                ## Sets the prefix property value. The prefix property
                ## @param value Value to set for the prefix property.
                ## @return a void
                ## 
                def prefix=(value)
                    @prefix = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("customPrefix", @custom_prefix)
                    writer.write_string_value("logoStorageId", @logo_storage_id)
                    writer.write_string_value("name", @name)
                    writer.write_enum_value("prefix", @prefix)
                    writer.write_string_value("url", @url)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the url property value. The url property
                ## @return a string
                ## 
                def url
                    return @url
                end
                ## 
                ## Sets the url property value. The url property
                ## @param value Value to set for the url property.
                ## @return a void
                ## 
                def url=(value)
                    @url = value
                end
            end
        end
    end
end
