require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            ## 
            # Summary view of a tournament for discovery.
            class TournamentSummary
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # Banner image URL.
                @banner_url
                ## 
                # Short tournament description.
                @description
                ## 
                # Bracket format of a tournament.
                @format
                ## 
                # Tournament ID.
                @id
                ## 
                # Whether the featured placement is live at request time.
                @is_featured
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
                # Current number of participants.
                @participant_count
                ## 
                # ISO currency code of the pool.
                @prize_currency
                ## 
                # Total prize pool.
                @prize_pool
                ## 
                # URL-friendly tournament identifier.
                @slug
                ## 
                # Scheduled start (epoch milliseconds).
                @starts_at
                ## 
                # Lifecycle status of a tournament.
                @status
                ## 
                ## Gets the bannerUrl property value. Banner image URL.
                ## @return a tournament_summary_banner_url
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
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a tournament_summary
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return TournamentSummary.new
                end
                ## 
                ## Gets the description property value. Short tournament description.
                ## @return a string
                ## 
                def description
                    return @description
                end
                ## 
                ## Sets the description property value. Short tournament description.
                ## @param value Value to set for the description property.
                ## @return a void
                ## 
                def description=(value)
                    @description = value
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
                        "bannerUrl" => lambda {|n| @banner_url = n.get_object_value(lambda {|pn| TournamentSummary::TournamentSummaryBannerUrl.create_from_discriminator_value(pn) }) },
                        "description" => lambda {|n| @description = n.get_string_value() },
                        "format" => lambda {|n| @format = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentFormat) },
                        "id" => lambda {|n| @id = n.get_string_value() },
                        "isFeatured" => lambda {|n| @is_featured = n.get_boolean_value() },
                        "logoUrl" => lambda {|n| @logo_url = n.get_object_value(lambda {|pn| TournamentSummary::TournamentSummaryLogoUrl.create_from_discriminator_value(pn) }) },
                        "maxParticipants" => lambda {|n| @max_participants = n.get_number_value() },
                        "name" => lambda {|n| @name = n.get_string_value() },
                        "participantCount" => lambda {|n| @participant_count = n.get_number_value() },
                        "prizeCurrency" => lambda {|n| @prize_currency = n.get_string_value() },
                        "prizePool" => lambda {|n| @prize_pool = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "slug" => lambda {|n| @slug = n.get_string_value() },
                        "startsAt" => lambda {|n| @starts_at = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                        "status" => lambda {|n| @status = n.get_enum_value(TeamBattlesSdk::Generated::Models::TournamentStatus) },
                    }
                end
                ## 
                ## Gets the id property value. Tournament ID.
                ## @return a string
                ## 
                def id
                    return @id
                end
                ## 
                ## Sets the id property value. Tournament ID.
                ## @param value Value to set for the id property.
                ## @return a void
                ## 
                def id=(value)
                    @id = value
                end
                ## 
                ## Gets the isFeatured property value. Whether the featured placement is live at request time.
                ## @return a boolean
                ## 
                def is_featured
                    return @is_featured
                end
                ## 
                ## Sets the isFeatured property value. Whether the featured placement is live at request time.
                ## @param value Value to set for the isFeatured property.
                ## @return a void
                ## 
                def is_featured=(value)
                    @is_featured = value
                end
                ## 
                ## Gets the logoUrl property value. Logo image URL.
                ## @return a tournament_summary_logo_url
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
                ## Gets the prizeCurrency property value. ISO currency code of the pool.
                ## @return a string
                ## 
                def prize_currency
                    return @prize_currency
                end
                ## 
                ## Sets the prizeCurrency property value. ISO currency code of the pool.
                ## @param value Value to set for the prizeCurrency property.
                ## @return a void
                ## 
                def prize_currency=(value)
                    @prize_currency = value
                end
                ## 
                ## Gets the prizePool property value. Total prize pool.
                ## @return a double
                ## 
                def prize_pool
                    return @prize_pool
                end
                ## 
                ## Sets the prizePool property value. Total prize pool.
                ## @param value Value to set for the prizePool property.
                ## @return a void
                ## 
                def prize_pool=(value)
                    @prize_pool = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_object_value("bannerUrl", @banner_url)
                    writer.write_string_value("description", @description)
                    writer.write_enum_value("format", @format)
                    writer.write_string_value("id", @id)
                    writer.write_boolean_value("isFeatured", @is_featured)
                    writer.write_object_value("logoUrl", @logo_url)
                    writer.write_number_value("maxParticipants", @max_participants)
                    writer.write_string_value("name", @name)
                    writer.write_number_value("participantCount", @participant_count)
                    writer.write_string_value("prizeCurrency", @prize_currency)
                    writer.write_object_value("prizePool", @prize_pool)
                    writer.write_string_value("slug", @slug)
                    writer.write_object_value("startsAt", @starts_at)
                    writer.write_enum_value("status", @status)
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
                ## Gets the startsAt property value. Scheduled start (epoch milliseconds).
                ## @return a double
                ## 
                def starts_at
                    return @starts_at
                end
                ## 
                ## Sets the startsAt property value. Scheduled start (epoch milliseconds).
                ## @param value Value to set for the startsAt property.
                ## @return a void
                ## 
                def starts_at=(value)
                    @starts_at = value
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
                # Composed type wrapper for classes string, TournamentSummaryBannerUrlMember1
                class TournamentSummaryBannerUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TournamentSummaryBannerUrlMember1
                    @tournament_summary_banner_url_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tournament_summary_banner_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TournamentSummaryBannerUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TournamentSummary_bannerUrlMember1" => lambda {|n| @tournament_summary_banner_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentSummaryBannerUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TournamentSummary_bannerUrlMember1", @tournament_summary_banner_url_member1)
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
                    ## Gets the TournamentSummary_bannerUrlMember1 property value. Composed type representation for type TournamentSummaryBannerUrlMember1
                    ## @return a tournament_summary_banner_url_member1
                    ## 
                    def tournament_summary_banner_url_member1
                        return @tournament_summary_banner_url_member1
                    end
                    ## 
                    ## Sets the TournamentSummary_bannerUrlMember1 property value. Composed type representation for type TournamentSummaryBannerUrlMember1
                    ## @param value Value to set for the TournamentSummary_bannerUrlMember1 property.
                    ## @return a void
                    ## 
                    def tournament_summary_banner_url_member1=(value)
                        @tournament_summary_banner_url_member1 = value
                    end
                end

                ## 
                # Composed type wrapper for classes string, TournamentSummaryLogoUrlMember1
                class TournamentSummaryLogoUrl
                    include MicrosoftKiotaAbstractions::Parsable
                    ## 
                    # Composed type representation for type string
                    @string
                    ## 
                    # Composed type representation for type TournamentSummaryLogoUrlMember1
                    @tournament_summary_logo_url_member1
                    ## 
                    ## Creates a new instance of the appropriate class based on discriminator value
                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                    ## @return a tournament_summary_logo_url
                    ## 
                    def self.create_from_discriminator_value(parse_node)
                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                        return TournamentSummaryLogoUrl.new
                    end
                    ## 
                    ## The deserialization information for the current model
                    ## @return a i_dictionary
                    ## 
                    def get_field_deserializers()
                        return {
                            "string" => lambda {|n| @string = n.get_string_value() },
                            "TournamentSummary_logoUrlMember1" => lambda {|n| @tournament_summary_logo_url_member1 = n.get_object_value(lambda {|pn| TeamBattlesSdk::Generated::Models::TournamentSummaryLogoUrlMember1.create_from_discriminator_value(pn) }) },
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
                        writer.write_object_value("TournamentSummary_logoUrlMember1", @tournament_summary_logo_url_member1)
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
                    ## Gets the TournamentSummary_logoUrlMember1 property value. Composed type representation for type TournamentSummaryLogoUrlMember1
                    ## @return a tournament_summary_logo_url_member1
                    ## 
                    def tournament_summary_logo_url_member1
                        return @tournament_summary_logo_url_member1
                    end
                    ## 
                    ## Sets the TournamentSummary_logoUrlMember1 property value. Composed type representation for type TournamentSummaryLogoUrlMember1
                    ## @param value Value to set for the TournamentSummary_logoUrlMember1 property.
                    ## @return a void
                    ## 
                    def tournament_summary_logo_url_member1=(value)
                        @tournament_summary_logo_url_member1 = value
                    end
                end
            end
        end
    end
end
