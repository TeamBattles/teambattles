require 'microsoft_kiota_abstractions'
require_relative '../team_battles_sdk::_generated'
require_relative './models'

module TeamBattlesSdk
    module Generated
        module Models
            class LeagueDashboardStatsResponseStats
                include MicrosoftKiotaAbstractions::Parsable
                ## 
                # The activeSeasons property
                @active_seasons
                ## 
                # The openTickets property
                @open_tickets
                ## 
                # The pendingApplications property
                @pending_applications
                ## 
                # The teamCount property
                @team_count
                ## 
                ## Gets the activeSeasons property value. The activeSeasons property
                ## @return a integer
                ## 
                def active_seasons
                    return @active_seasons
                end
                ## 
                ## Sets the activeSeasons property value. The activeSeasons property
                ## @param value Value to set for the activeSeasons property.
                ## @return a void
                ## 
                def active_seasons=(value)
                    @active_seasons = value
                end
                ## 
                ## Creates a new instance of the appropriate class based on discriminator value
                ## @param parse_node The parse node to use to read the discriminator value and create the object
                ## @return a league_dashboard_stats_response_stats
                ## 
                def self.create_from_discriminator_value(parse_node)
                    raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                    return LeagueDashboardStatsResponseStats.new
                end
                ## 
                ## The deserialization information for the current model
                ## @return a i_dictionary
                ## 
                def get_field_deserializers()
                    return {
                        "activeSeasons" => lambda {|n| @active_seasons = n.get_number_value() },
                        "openTickets" => lambda {|n| @open_tickets = n.get_number_value() },
                        "pendingApplications" => lambda {|n| @pending_applications = n.get_number_value() },
                        "teamCount" => lambda {|n| @team_count = n.get_number_value() },
                    }
                end
                ## 
                ## Gets the openTickets property value. The openTickets property
                ## @return a integer
                ## 
                def open_tickets
                    return @open_tickets
                end
                ## 
                ## Sets the openTickets property value. The openTickets property
                ## @param value Value to set for the openTickets property.
                ## @return a void
                ## 
                def open_tickets=(value)
                    @open_tickets = value
                end
                ## 
                ## Gets the pendingApplications property value. The pendingApplications property
                ## @return a integer
                ## 
                def pending_applications
                    return @pending_applications
                end
                ## 
                ## Sets the pendingApplications property value. The pendingApplications property
                ## @param value Value to set for the pendingApplications property.
                ## @return a void
                ## 
                def pending_applications=(value)
                    @pending_applications = value
                end
                ## 
                ## Serializes information the current object
                ## @param writer Serialization writer to use to serialize this model
                ## @return a void
                ## 
                def serialize(writer)
                    raise StandardError, 'writer cannot be null' if writer.nil?
                    writer.write_number_value("activeSeasons", @active_seasons)
                    writer.write_number_value("openTickets", @open_tickets)
                    writer.write_number_value("pendingApplications", @pending_applications)
                    writer.write_number_value("teamCount", @team_count)
                end
                ## 
                ## Gets the teamCount property value. The teamCount property
                ## @return a integer
                ## 
                def team_count
                    return @team_count
                end
                ## 
                ## Sets the teamCount property value. The teamCount property
                ## @param value Value to set for the teamCount property.
                ## @return a void
                ## 
                def team_count=(value)
                    @team_count = value
                end
            end
        end
    end
end
