require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Public profile for a single tournament. Manager-private review fields are present only for a caller who manages it.
            class TournamentProfile
                include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                ## 
                # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                @additional_data
                ## 
                # Platform review state, independent of `status`.
                @approval_status
                ## 
                # Banner image URL.
                @banner_url
                ## 
                # Bracket format of a tournament.
                @format
                ## 
                # Tournament ID.
                @id
                ## 
                # Whether the tournament appears in discovery.
                @is_publicly_listed
                ## 
                # Logo image URL.
                @logo_url
                ## 
                # Participant cap.
                @max_participants
                ## 
                # Tournament display name.
                @name
                ## 
                # Whether the tournament is non-terminal AND awaiting organizer action on approval.
                @needs_attention
                ## 
                # Current number of participants.
                @participant_count
                ## 
                # URL-friendly tournament identifier.
                @slug
                ## 
                # Lifecycle status of a tournament.
                @status
                ## 
                # Players per participating team.
                @team_size
                ## 
                # The caller's standing on this tournament. `isManager` includes tournament moderators; `isAdmin` does not.
                @viewer_management
                ## 
                # PUBLIC or UNLISTED.
                @visibility
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
                ## Gets the approvalStatus property value. Platform review state, independent of `status`.
                ## @return a string
                ## 
                def approval_status
                    return @approval_status
                end
                ## 
                ## Sets the approvalStatus property value. Platform review state, independent of `status`.
                ## @param value Value to set for the approvalStatus property.
                ## @return a void
                ## 
                def approval_status=(value)
                    @approval_status = value
                end
                ## 
                ## Gets the bannerUrl property value. Banner image URL.
                ## @return a tournament_profile_banner_url
                ## 
                def banner_url
                    return @banner_url
                end
                ## 
                ## Sets the bannerUrl property value. Banner image URL.
                ## @param value Value to set for the bannerUrl property.
                ## @return a void
                ## 
                def banner_url=(value)
                    @banner_url = value
                end
                ## 
                ## Instantiates a new TournamentProfile and sets the default values.
                ## @return a void
                ## 
                def initialize()
                    @additional_data = Hash.new
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_profile
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentProfile.new
                end
                ## 
                ## Gets the format property value. Bracket format of a tournament.
                ## @return a tournament_format
                ## 
                def format
                    return @format
                end
                ## 
                ## Sets the format property value. Bracket format of a tournament.
                ## @param value Value to set for the format property.
                ## @return a void
                ## 
                def format=(value)
                    @format = value
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "approvalStatus" => lambda {|n| @approval_status = n.get_string_value() },
                        "bannerUrl" => lambda {|n| @banner_url = n.get_object_value(lambda {|pn| TournamentProfile::TournamentProfileBannerUrl.create_from_discriminator_value(pn) }) },
                        "format" => lambda {|n| @format = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentFormat) },
                        "_id" => lambda {|n| @id = n.get_string_value() },
                        "isPubliclyListed" => lambda {|n| @is_publicly_listed = n.get_boolean_value() },
                        "logoUrl" => lambda {|n| @logo_url = n.get_object_value(lambda {|pn| TournamentProfile::TournamentProfileLogoUrl.create_from_discriminator_value(pn) }) },
                        "maxParticipants" => lambda {|n| @max_participants = n.get_number_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "needsAttention" => lambda {|n| @needs_attention = n.get_boolean_value() },
                        "participantCount" => lambda {|n| @participant_count = n.get_number_value() },
                        "slug" => lambda {|n| @slug = n.get_string_value() },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentStatus) },
                        "teamSize" => lambda {|n| @team_size = n.get_number_value() },
                        "viewerManagement" => lambda {|n| @viewer_management = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentProfileViewerManagement.create_from_discriminator_value(pn) }) },
                        "visibility" => lambda {|n| @visibility = n.get_string_value() },
                    }
                end
                ## 
                ## Gets the _id property value. Tournament ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the _id property value. Tournament ID.
                ## @param value Value to set for the _id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the isPubliclyListed property value. Whether the tournament appears in discovery.
                ## @return a boolean
                ## 
                def is_publicly_listed
                    return @is_publicly_listed
                end
                ## 
                ## Sets the isPubliclyListed property value. Whether the tournament appears in discovery.
                ## @param value Value to set for the isPubliclyListed property.
                ## @return a void
                ## 
                def is_publicly_listed=(value)
                    @is_publicly_listed = value
                end
                ## 
                ## Gets the logoUrl property value. Logo image URL.
                ## @return a tournament_profile_logo_url
                ## 
                def logo_url
                    return @logo_url
                end
                ## 
                ## Sets the logoUrl property value. Logo image URL.
                ## @param value Value to set for the logoUrl property.
                ## @return a void
                ## 
                def logo_url=(value)
                    @logo_url = value
                end
                ## 
                ## Gets the maxParticipants property value. Participant cap.
                ## @return a integer
                ## 
                def max_participants
                    return @max_participants
                end
                ## 
                ## Sets the maxParticipants property value. Participant cap.
                ## @param value Value to set for the maxParticipants property.
                ## @return a void
                ## 
                def max_participants=(value)
                    @max_participants = value
                end
                ## 
                ## Gets the name property value. Tournament display name.
                ## @return a string
                ## 
                def name
                    return @name
                end
                ## 
                ## Sets the name property value. Tournament display name.
                ## @param value Value to set for the name property.
                ## @return a void
                ## 
                def name=(value)
                    @name = value
                end
                ## 
                ## Gets the needsAttention property value. Whether the tournament is non-terminal AND awaiting organizer action on approval.
                ## @return a boolean
                ## 
                def needs_attention
                    return @needs_attention
                end
                ## 
                ## Sets the needsAttention property value. Whether the tournament is non-terminal AND awaiting organizer action on approval.
                ## @param value Value to set for the needsAttention property.
                ## @return a void
                ## 
                def needs_attention=(value)
                    @needs_attention = value
                end
                ## 
                ## Gets the participantCount property value. Current number of participants.
                ## @return a integer
                ## 
                def participant_count
                    return @participant_count
                end
                ## 
                ## Sets the participantCount property value. Current number of participants.
                ## @param value Value to set for the participantCount property.
                ## @return a void
                ## 
                def participant_count=(value)
                    @participant_count = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_string_value("approvalStatus", @approval_status)
                    writer.write_object_value("bannerUrl", @banner_url)
                    writer.write_enum_value("format", @format)
                    writer.write_string_value("_id", @id)
                    writer.write_boolean_value("isPubliclyListed", @is_publicly_listed)
                    writer.write_object_value("logoUrl", @logo_url)
                    writer.write_number_value("maxParticipants", @max_participants)
                    writer.write_string_value("name", @name)
                    writer.write_boolean_value("needsAttention", @needs_attention)
                    writer.write_number_value("participantCount", @participant_count)
                    writer.write_string_value("slug", @slug)
                    writer.write_enum_value("status", @status)
                    writer.write_number_value("teamSize", @team_size)
                    writer.write_object_value("viewerManagement", @viewer_management)
                    writer.write_string_value("visibility", @visibility)
                    writer.write_additional_data(@additional_data)
                end
                ## 
                ## Gets the slug property value. URL-friendly tournament identifier.
                ## @return a string
                ## 
                def slug
                    return @slug
                end
                ## 
                ## Sets the slug property value. URL-friendly tournament identifier.
                ## @param value Value to set for the slug property.
                ## @return a void
                ## 
                def slug=(value)
                    @slug = value
                end
                ## 
                ## Gets the status property value. Lifecycle status of a tournament.
                ## @return a tournament_status
                ## 
                def status
                    return @status
                end
                ## 
                ## Sets the status property value. Lifecycle status of a tournament.
                ## @param value Value to set for the status property.
                ## @return a void
                ## 
                def status=(value)
                    @status = value
                end
                ## 
                ## Gets the teamSize property value. Players per participating team.
                ## @return a integer
                ## 
                def team_size
                    return @team_size
                end
                ## 
                ## Sets the teamSize property value. Players per participating team.
                ## @param value Value to set for the teamSize property.
                ## @return a void
                ## 
                def team_size=(value)
                    @team_size = value
                end
                ## 
                ## Gets the viewerManagement property value. The caller's standing on this tournament. `isManager` includes tournament moderators; `isAdmin` does not.
                ## @return a tournament_profile_viewer_management
                ## 
                def viewer_management
                    return @viewer_management
                end
                ## 
                ## Sets the viewerManagement property value. The caller's standing on this tournament. `isManager` includes tournament moderators; `isAdmin` does not.
                ## @param value Value to set for the viewerManagement property.
                ## @return a void
                ## 
                def viewer_management=(value)
                    @viewer_management = value
                end
                ## 
                ## Gets the visibility property value. PUBLIC or UNLISTED.
                ## @return a string
                ## 
                def visibility
                    return @visibility
                end
                ## 
                ## Sets the visibility property value. PUBLIC or UNLISTED.
                ## @param value Value to set for the visibility property.
                ## @return a void
                ## 
                def visibility=(value)
                    @visibility = value
                end

                ## 
                # Composed type wrapper for classes string, TournamentProfileBannerUrlMember1
                class TournamentProfileBannerUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TournamentProfileBannerUrlMember1
                    @tournament_profile_banner_url_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tournament_profile_banner_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TournamentProfileBannerUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TournamentProfile_bannerUrlMember1" => lambda {|n| @tournament_profile_banner_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentProfileBannerUrlMember1.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("string", @string)
                        writer.write_object_value("TournamentProfile_bannerUrlMember1", @tournament_profile_banner_url_member1)
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
                    ## 
                    ## Gets the TournamentProfile_bannerUrlMember1 property value. Composed type representation for type TournamentProfileBannerUrlMember1
                    ## @return a tournament_profile_banner_url_member1
                    ## 
                    def tournament_profile_banner_url_member1
                        return @tournament_profile_banner_url_member1
                    end
                    ## 
                    ## Sets the TournamentProfile_bannerUrlMember1 property value. Composed type representation for type TournamentProfileBannerUrlMember1
                    ## @param value Value to set for the TournamentProfile_bannerUrlMember1 property.
                    ## @return a void
                    ## 
                    def tournament_profile_banner_url_member1=(value)
                        @tournament_profile_banner_url_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes string, TournamentProfileLogoUrlMember1
                class TournamentProfileLogoUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TournamentProfileLogoUrlMember1
                    @tournament_profile_logo_url_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tournament_profile_logo_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TournamentProfileLogoUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TournamentProfile_logoUrlMember1" => lambda {|n| @tournament_profile_logo_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentProfileLogoUrlMember1.create_from_discriminator_value(pn) }) },
                        }
                    end
                    ## 
                    ## Serializes information the current object
                    ## @param writer Serialization writer to use to serialize this model
                    ## @return a void
                    ## 
                    def serialize(writer)
                        raise StandardError, 'writer cannot be null' if writer.nil?
                        writer.write_string_value("string", @string)
                        writer.write_object_value("TournamentProfile_logoUrlMember1", @tournament_profile_logo_url_member1)
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
                    ## 
                    ## Gets the TournamentProfile_logoUrlMember1 property value. Composed type representation for type TournamentProfileLogoUrlMember1
                    ## @return a tournament_profile_logo_url_member1
                    ## 
                    def tournament_profile_logo_url_member1
                        return @tournament_profile_logo_url_member1
                    end
                    ## 
                    ## Sets the TournamentProfile_logoUrlMember1 property value. Composed type representation for type TournamentProfileLogoUrlMember1
                    ## @param value Value to set for the TournamentProfile_logoUrlMember1 property.
                    ## @return a void
                    ## 
                    def tournament_profile_logo_url_member1=(value)
                        @tournament_profile_logo_url_member1 = value
                    end
                end
            end
        end
    end
end
