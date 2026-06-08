package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeagueDashboardStatsResponseStats implements Parsable {
    /**
     * The activeSeasons property
     */
    private Integer activeSeasons;
    /**
     * The openTickets property
     */
    private Integer openTickets;
    /**
     * The pendingApplications property
     */
    private Integer pendingApplications;
    /**
     * The teamCount property
     */
    private Integer teamCount;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeagueDashboardStatsResponseStats}
     */
    @jakarta.annotation.Nonnull
    public static LeagueDashboardStatsResponseStats createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeagueDashboardStatsResponseStats();
    }
    /**
     * Gets the activeSeasons property value. The activeSeasons property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getActiveSeasons() {
        return this.activeSeasons;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("activeSeasons", (n) -> { this.setActiveSeasons(n.getIntegerValue()); });
        deserializerMap.put("openTickets", (n) -> { this.setOpenTickets(n.getIntegerValue()); });
        deserializerMap.put("pendingApplications", (n) -> { this.setPendingApplications(n.getIntegerValue()); });
        deserializerMap.put("teamCount", (n) -> { this.setTeamCount(n.getIntegerValue()); });
        return deserializerMap;
    }
    /**
     * Gets the openTickets property value. The openTickets property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getOpenTickets() {
        return this.openTickets;
    }
    /**
     * Gets the pendingApplications property value. The pendingApplications property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getPendingApplications() {
        return this.pendingApplications;
    }
    /**
     * Gets the teamCount property value. The teamCount property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getTeamCount() {
        return this.teamCount;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("activeSeasons", this.getActiveSeasons());
        writer.writeIntegerValue("openTickets", this.getOpenTickets());
        writer.writeIntegerValue("pendingApplications", this.getPendingApplications());
        writer.writeIntegerValue("teamCount", this.getTeamCount());
    }
    /**
     * Sets the activeSeasons property value. The activeSeasons property
     * @param value Value to set for the activeSeasons property.
     */
    public void setActiveSeasons(@jakarta.annotation.Nullable final Integer value) {
        this.activeSeasons = value;
    }
    /**
     * Sets the openTickets property value. The openTickets property
     * @param value Value to set for the openTickets property.
     */
    public void setOpenTickets(@jakarta.annotation.Nullable final Integer value) {
        this.openTickets = value;
    }
    /**
     * Sets the pendingApplications property value. The pendingApplications property
     * @param value Value to set for the pendingApplications property.
     */
    public void setPendingApplications(@jakarta.annotation.Nullable final Integer value) {
        this.pendingApplications = value;
    }
    /**
     * Sets the teamCount property value. The teamCount property
     * @param value Value to set for the teamCount property.
     */
    public void setTeamCount(@jakarta.annotation.Nullable final Integer value) {
        this.teamCount = value;
    }
}
