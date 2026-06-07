require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ##
            # API-safe public account connection.
            class ApiUserConnection
                include MicrosoftKiotaAbstractions::Parsable
                ##
                # The connectedAt property
                @connected_at
                ##
                # Connection ID.
                @id
                ##
                # The isPrimary property
                @is_primary
                ##
                # The isVerified property
                @is_verified
                ##
                # Connected platform.
                @platform
                ##
                # The url property
                @url
                ##
                # The username property
                @username
                ##
                ## Gets the connectedAt property value. The connectedAt property
                ## @return a api_user_connection_connected_at
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
                ## @return a api_user_connection
                ##
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return ApiUserConnection.new
                end
                ##
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ##
                def get_field_deserializers()
                    return {
                        "connectedAt" => lambda {|n| @connected_at = n.get_object_value(lambda {|pn| ApiUserConnection::ApiUserConnectionConnectedAt.create_from_discriminator_value(pn) }) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isPrimary" => lambda {|n| @is_primary = n.get_boolean_value() },
                        "isVerified" => lambda {|n| @is_verified = n.get_boolean_value() },
                        "platform" => lambda {|n| @platform = n.get_string_value() },
                        "url" => lambda {|n| @url = n.get_object_value(lambda {|pn| ApiUserConnection::ApiUserConnectionUrl.create_from_discriminator_value(pn) }) },
                        "username" => lambda {|n| @username = n.get_object_value(lambda {|pn| ApiUserConnection::ApiUserConnectionUsername.create_from_discriminator_value(pn) }) },
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
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ##
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("connectedAt", @connected_at)
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isPrimary", @is_primary)
                    writer.write_boolean_value("isVerified", @is_verified)
                    writer.write_string_value("platform", @platform)
                    writer.write_object_value("url", @url)
                    writer.write_object_value("username", @username)
                end
                ##
                ## Gets the url property value. The url property
                ## @return a api_user_connection_url
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
                ## @return a api_user_connection_username
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
                # Composed type wrapper for classes ApiUserConnectionConnectedAtMember1, string
                class ApiUserConnectionConnectedAt
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiUserConnectionConnectedAtMember1
                    @api_user_connection_connected_at_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiUserConnection_connectedAtMember1 property value. Composed type representation for type ApiUserConnectionConnectedAtMember1
                    ## @return a api_user_connection_connected_at_member1
                    ##
                    def api_user_connection_connected_at_member1
                        return @api_user_connection_connected_at_member1
                    end
                    ##
                    ## Sets the ApiUserConnection_connectedAtMember1 property value. Composed type representation for type ApiUserConnectionConnectedAtMember1
                    ## @param value Value to set for the ApiUserConnection_connectedAtMember1 property.
                    ## @return a void
                    ##
                    def api_user_connection_connected_at_member1=(value)
                        @api_user_connection_connected_at_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_connection_connected_at
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserConnectionConnectedAt.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiUserConnection_connectedAtMember1" => lambda {|n| @api_user_connection_connected_at_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserConnectionConnectedAtMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserConnection_connectedAtMember1", @api_user_connection_connected_at_member1)
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
                # Composed type wrapper for classes ApiUserConnectionUrlMember1, string
                class ApiUserConnectionUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiUserConnectionUrlMember1
                    @api_user_connection_url_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiUserConnection_urlMember1 property value. Composed type representation for type ApiUserConnectionUrlMember1
                    ## @return a api_user_connection_url_member1
                    ##
                    def api_user_connection_url_member1
                        return @api_user_connection_url_member1
                    end
                    ##
                    ## Sets the ApiUserConnection_urlMember1 property value. Composed type representation for type ApiUserConnectionUrlMember1
                    ## @param value Value to set for the ApiUserConnection_urlMember1 property.
                    ## @return a void
                    ##
                    def api_user_connection_url_member1=(value)
                        @api_user_connection_url_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_connection_url
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserConnectionUrl.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiUserConnection_urlMember1" => lambda {|n| @api_user_connection_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserConnectionUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserConnection_urlMember1", @api_user_connection_url_member1)
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
                # Composed type wrapper for classes ApiUserConnectionUsernameMember1, string
                class ApiUserConnectionUsername
                    include MicrosoftKiotaAbstractions::Parsable
                    ##
                    # Composed type representation for type ApiUserConnectionUsernameMember1
                    @api_user_connection_username_member1
                    ##
                    # Composed type representation for type string
                    @string
                    ##
                    ## Gets the ApiUserConnection_usernameMember1 property value. Composed type representation for type ApiUserConnectionUsernameMember1
                    ## @return a api_user_connection_username_member1
                    ##
                    def api_user_connection_username_member1
                        return @api_user_connection_username_member1
                    end
                    ##
                    ## Sets the ApiUserConnection_usernameMember1 property value. Composed type representation for type ApiUserConnectionUsernameMember1
                    ## @param value Value to set for the ApiUserConnection_usernameMember1 property.
                    ## @return a void
                    ##
                    def api_user_connection_username_member1=(value)
                        @api_user_connection_username_member1 = value
                    end
                    ##
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a api_user_connection_username
                    ##
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return ApiUserConnectionUsername.new
                    end
                    ##
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ##
                    def get_field_deserializers()
                        return {
                            "ApiUserConnection_usernameMember1" => lambda {|n| @api_user_connection_username_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::ApiUserConnectionUsernameMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("ApiUserConnection_usernameMember1", @api_user_connection_username_member1)
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
