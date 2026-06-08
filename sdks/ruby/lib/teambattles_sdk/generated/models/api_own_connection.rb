require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # API-safe connection for the API key owner, including private fields.
            class ApiOwnConnection
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The connectedAt property
                @connected_at
                ## 
                # Gaming platform (e.g. pc / console), when set.
                @gaming_platform
                ## 
                # Connection ID.
                @id
                ## 
                # The isPrimary property
                @is_primary
                ## 
                # True when the connection was self-reported (ownership unverified).
                @is_self_reported
                ## 
                # The isVerified property
                @is_verified
                ## 
                # Connected platform.
                @platform
                ## 
                # Connection region, when set.
                @region
                ## 
                # Whether the owner has chosen to show this connection on their profile.
                @show_on_profile
                ## 
                # The url property
                @url
                ## 
                # The username property
                @username
                ## 
                ## Gets the connectedAt property value. The connectedAt property
                ## @return a api_own_connection_connected_at
                ## 
                def connected_at
                    return @connected_at
                end
                ## 
                ## Sets the connectedAt property value. The connectedAt property
                ## @param value Value to set for the connectedAt property.
                ## @return a void
                ## 
                def connected_at=(value)
                    @connected_at = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a api_own_connection
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiOwnConnection.new
                end
                ## 
                ## Gets the gamingPlatform property value. Gaming platform (e.g. pc / console), when set.
                ## @return a api_own_connection_gaming_platform
                ## 
                def gaming_platform
                    return @gaming_platform
                end
                ## 
                ## Sets the gamingPlatform property value. Gaming platform (e.g. pc / console), when set.
                ## @param value Value to set for the gamingPlatform property.
                ## @return a void
                ## 
                def gaming_platform=(value)
                    @gaming_platform = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "connectedAt" => lambda {|n| @connected_at = n.get_object_value(lambda {|pn| ApiOwnConnection::ApiOwnConnectionConnectedAt.create_from_discriminator_value(pn) }) },
                        "gamingPlatform" => lambda {|n| @gaming_platform = n.get_object_value(lambda {|pn| ApiOwnConnection::ApiOwnConnectionGamingPlatform.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isPrimary" => lambda {|n| @is_primary = n.get_boolean_value() },
                        "isSelfReported" => lambda {|n| @is_self_reported = n.get_boolean_value() },
                        "isVerified" => lambda {|n| @is_verified = n.get_boolean_value() },
                        "platform" => lambda {|n| @platform = n.get_string_value() },
                        "region" => lambda {|n| @region = n.get_object_value(lambda {|pn| ApiOwnConnection::ApiOwnConnectionRegion.create_from_discriminator_value(pn) }) },
                        "showOnProfile" => lambda {|n| @show_on_profile = n.get_boolean_value() },
                        "url" => lambda {|n| @url = n.get_object_value(lambda {|pn| ApiOwnConnection::ApiOwnConnectionUrl.create_from_discriminator_value(pn) }) },
                        "username" => lambda {|n| @username = n.get_object_value(lambda {|pn| ApiOwnConnection::ApiOwnConnectionUsername.create_from_discriminator_value(pn) }) },
                    }
                end
                ## 
                ## Gets the id property value. Connection ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Connection ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the isPrimary property value. The isPrimary property
                ## @return a boolean
                ## 
                def is_primary
                    return @is_primary
                end
                ## 
                ## Sets the isPrimary property value. The isPrimary property
                ## @param value Value to set for the isPrimary property.
                ## @return a void
                ## 
                def is_primary=(value)
                    @is_primary = value
                end
                ## 
                ## Gets the isSelfReported property value. True when the connection was self-reported (ownership unverified).
                ## @return a boolean
                ## 
                def is_self_reported
                    return @is_self_reported
                end
                ## 
                ## Sets the isSelfReported property value. True when the connection was self-reported (ownership unverified).
                ## @param value Value to set for the isSelfReported property.
                ## @return a void
                ## 
                def is_self_reported=(value)
                    @is_self_reported = value
                end
                ## 
                ## Gets the isVerified property value. The isVerified property
                ## @return a boolean
                ## 
                def is_verified
                    return @is_verified
                end
                ## 
                ## Sets the isVerified property value. The isVerified property
                ## @param value Value to set for the isVerified property.
                ## @return a void
                ## 
                def is_verified=(value)
                    @is_verified = value
                end
                ## 
                ## Gets the platform property value. Connected platform.
                ## @return a string
                ## 
                def platform
                    return @platform
                end
                ## 
                ## Sets the platform property value. Connected platform.
                ## @param value Value to set for the platform property.
                ## @return a void
                ## 
                def platform=(value)
                    @platform = value
                end
                ## 
                ## Gets the region property value. Connection region, when set.
                ## @return a api_own_connection_region
                ## 
                def region
                    return @region
                end
                ## 
                ## Sets the region property value. Connection region, when set.
                ## @param value Value to set for the region property.
                ## @return a void
                ## 
                def region=(value)
                    @region = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("connectedAt", @connected_at)
                    writer.write_object_value("gamingPlatform", @gaming_platform)
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isPrimary", @is_primary)
                    writer.write_boolean_value("isSelfReported", @is_self_reported)
                    writer.write_boolean_value("isVerified", @is_verified)
                    writer.write_string_value("platform", @platform)
                    writer.write_object_value("region", @region)
                    writer.write_boolean_value("showOnProfile", @show_on_profile)
                    writer.write_object_value("url", @url)
                    writer.write_object_value("username", @username)
                end
                ## 
                ## Gets the showOnProfile property value. Whether the owner has chosen to show this connection on their profile.
                ## @return a boolean
                ## 
                def show_on_profile
                    return @show_on_profile
                end
                ## 
                ## Sets the showOnProfile property value. Whether the owner has chosen to show this connection on their profile.
                ## @param value Value to set for the showOnProfile property.
                ## @return a void
                ## 
                def show_on_profile=(value)
                    @show_on_profile = value
                end
                ## 
                ## Gets the url property value. The url property
                ## @return a api_own_connection_url
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
                ## 
                ## Gets the username property value. The username property
                ## @return a api_own_connection_username
                ## 
                def username
                    return @username
                end
                ## 
                ## Sets the username property value. The username property
                ## @param value Value to set for the username property.
                ## @return a void
                ## 
                def username=(value)
                    @username = value
                end

                ## 
                # Composed type wrapper for classes ApiOwnConnectionConnectedAtMember1, string
                class ApiOwnConnectionConnectedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiOwnConnectionConnectedAtMember1
                    @api_own_connection_connected_at_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiOwnConnection_connectedAtMember1 property value. Composed type representation for type ApiOwnConnectionConnectedAtMember1
                    ## @return a api_own_connection_connected_at_member1
                    ## 
                    def api_own_connection_connected_at_member1
                        return @api_own_connection_connected_at_member1
                    end
                    ## 
                    ## Sets the ApiOwnConnection_connectedAtMember1 property value. Composed type representation for type ApiOwnConnectionConnectedAtMember1
                    ## @param value Value to set for the ApiOwnConnection_connectedAtMember1 property.
                    ## @return a void
                    ## 
                    def api_own_connection_connected_at_member1=(value)
                        @api_own_connection_connected_at_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_own_connection_connected_at
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiOwnConnectionConnectedAt.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiOwnConnection_connectedAtMember1" => lambda {|n| @api_own_connection_connected_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOwnConnectionConnectedAtMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiOwnConnection_connectedAtMember1", @api_own_connection_connected_at_member1)
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

                ## 
                # Composed type wrapper for classes ApiOwnConnectionGamingPlatformMember1, string
                class ApiOwnConnectionGamingPlatform
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiOwnConnectionGamingPlatformMember1
                    @api_own_connection_gaming_platform_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiOwnConnection_gamingPlatformMember1 property value. Composed type representation for type ApiOwnConnectionGamingPlatformMember1
                    ## @return a api_own_connection_gaming_platform_member1
                    ## 
                    def api_own_connection_gaming_platform_member1
                        return @api_own_connection_gaming_platform_member1
                    end
                    ## 
                    ## Sets the ApiOwnConnection_gamingPlatformMember1 property value. Composed type representation for type ApiOwnConnectionGamingPlatformMember1
                    ## @param value Value to set for the ApiOwnConnection_gamingPlatformMember1 property.
                    ## @return a void
                    ## 
                    def api_own_connection_gaming_platform_member1=(value)
                        @api_own_connection_gaming_platform_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_own_connection_gaming_platform
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiOwnConnectionGamingPlatform.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiOwnConnection_gamingPlatformMember1" => lambda {|n| @api_own_connection_gaming_platform_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOwnConnectionGamingPlatformMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiOwnConnection_gamingPlatformMember1", @api_own_connection_gaming_platform_member1)
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

                ## 
                # Composed type wrapper for classes ApiOwnConnectionRegionMember1, string
                class ApiOwnConnectionRegion
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiOwnConnectionRegionMember1
                    @api_own_connection_region_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiOwnConnection_regionMember1 property value. Composed type representation for type ApiOwnConnectionRegionMember1
                    ## @return a api_own_connection_region_member1
                    ## 
                    def api_own_connection_region_member1
                        return @api_own_connection_region_member1
                    end
                    ## 
                    ## Sets the ApiOwnConnection_regionMember1 property value. Composed type representation for type ApiOwnConnectionRegionMember1
                    ## @param value Value to set for the ApiOwnConnection_regionMember1 property.
                    ## @return a void
                    ## 
                    def api_own_connection_region_member1=(value)
                        @api_own_connection_region_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_own_connection_region
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiOwnConnectionRegion.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiOwnConnection_regionMember1" => lambda {|n| @api_own_connection_region_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOwnConnectionRegionMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiOwnConnection_regionMember1", @api_own_connection_region_member1)
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

                ## 
                # Composed type wrapper for classes ApiOwnConnectionUrlMember1, string
                class ApiOwnConnectionUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiOwnConnectionUrlMember1
                    @api_own_connection_url_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiOwnConnection_urlMember1 property value. Composed type representation for type ApiOwnConnectionUrlMember1
                    ## @return a api_own_connection_url_member1
                    ## 
                    def api_own_connection_url_member1
                        return @api_own_connection_url_member1
                    end
                    ## 
                    ## Sets the ApiOwnConnection_urlMember1 property value. Composed type representation for type ApiOwnConnectionUrlMember1
                    ## @param value Value to set for the ApiOwnConnection_urlMember1 property.
                    ## @return a void
                    ## 
                    def api_own_connection_url_member1=(value)
                        @api_own_connection_url_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_own_connection_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiOwnConnectionUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiOwnConnection_urlMember1" => lambda {|n| @api_own_connection_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOwnConnectionUrlMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiOwnConnection_urlMember1", @api_own_connection_url_member1)
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

                ## 
                # Composed type wrapper for classes ApiOwnConnectionUsernameMember1, string
                class ApiOwnConnectionUsername
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type ApiOwnConnectionUsernameMember1
                    @api_own_connection_username_member1
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    ## Gets the ApiOwnConnection_usernameMember1 property value. Composed type representation for type ApiOwnConnectionUsernameMember1
                    ## @return a api_own_connection_username_member1
                    ## 
                    def api_own_connection_username_member1
                        return @api_own_connection_username_member1
                    end
                    ## 
                    ## Sets the ApiOwnConnection_usernameMember1 property value. Composed type representation for type ApiOwnConnectionUsernameMember1
                    ## @param value Value to set for the ApiOwnConnection_usernameMember1 property.
                    ## @return a void
                    ## 
                    def api_own_connection_username_member1=(value)
                        @api_own_connection_username_member1 = value
                    end
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_own_connection_username
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiOwnConnectionUsername.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "ApiOwnConnection_usernameMember1" => lambda {|n| @api_own_connection_username_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiOwnConnectionUsernameMember1.create_from_discriminator_value(pn) }) },
                            "string" => lambda {|n| @string = n.get_string_value() },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_object_value("ApiOwnConnection_usernameMember1", @api_own_connection_username_member1)
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
