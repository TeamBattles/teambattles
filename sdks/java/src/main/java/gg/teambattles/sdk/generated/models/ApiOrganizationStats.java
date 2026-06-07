package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * API-safe organization aggregate stats.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiOrganizationStats implements Parsable {
    /**
     * The losses property
     */
    private Integer losses;
    /**
     * The matchesPlayed property
     */
    private Integer matchesPlayed;
    /**
     * The members property
     */
    private Integer members;
    /**
     * The organizationId property
     */
    private String organizationId;
    /**
     * The teams property
     */
    private Integer teams;
    /**
     * The winRate property
     */
    private Double winRate;
    /**
     * The wins property
     */
    private Integer wins;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiOrganizationStats}
     */
    @jakarta.annotation.Nonnull
    public static ApiOrganizationStats createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiOrganizationStats();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(7);
        deserializerMap.put("losses", (n) -> { this.setLosses(n.getIntegerValue()); });
        deserializerMap.put("matchesPlayed", (n) -> { this.setMatchesPlayed(n.getIntegerValue()); });
        deserializerMap.put("members", (n) -> { this.setMembers(n.getIntegerValue()); });
        deserializerMap.put("organizationId", (n) -> { this.setOrganizationId(n.getStringValue()); });
        deserializerMap.put("teams", (n) -> { this.setTeams(n.getIntegerValue()); });
        deserializerMap.put("winRate", (n) -> { this.setWinRate(n.getDoubleValue()); });
        deserializerMap.put("wins", (n) -> { this.setWins(n.getIntegerValue()); });
        return deserializerMap;
    }
    /**
     * Gets the losses property value. The losses property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getLosses() {
        return this.losses;
    }
    /**
     * Gets the matchesPlayed property value. The matchesPlayed property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getMatchesPlayed() {
        return this.matchesPlayed;
    }
    /**
     * Gets the members property value. The members property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getMembers() {
        return this.members;
    }
    /**
     * Gets the organizationId property value. The organizationId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getOrganizationId() {
        return this.organizationId;
    }
    /**
     * Gets the teams property value. The teams property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getTeams() {
        return this.teams;
    }
    /**
     * Gets the winRate property value. The winRate property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getWinRate() {
        return this.winRate;
    }
    /**
     * Gets the wins property value. The wins property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getWins() {
        return this.wins;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("losses", this.getLosses());
        writer.writeIntegerValue("matchesPlayed", this.getMatchesPlayed());
        writer.writeIntegerValue("members", this.getMembers());
        writer.writeStringValue("organizationId", this.getOrganizationId());
        writer.writeIntegerValue("teams", this.getTeams());
        writer.writeDoubleValue("winRate", this.getWinRate());
        writer.writeIntegerValue("wins", this.getWins());
    }
    /**
     * Sets the losses property value. The losses property
     * @param value Value to set for the losses property.
     */
    public void setLosses(@jakarta.annotation.Nullable final Integer value) {
        this.losses = value;
    }
    /**
     * Sets the matchesPlayed property value. The matchesPlayed property
     * @param value Value to set for the matchesPlayed property.
     */
    public void setMatchesPlayed(@jakarta.annotation.Nullable final Integer value) {
        this.matchesPlayed = value;
    }
    /**
     * Sets the members property value. The members property
     * @param value Value to set for the members property.
     */
    public void setMembers(@jakarta.annotation.Nullable final Integer value) {
        this.members = value;
    }
    /**
     * Sets the organizationId property value. The organizationId property
     * @param value Value to set for the organizationId property.
     */
    public void setOrganizationId(@jakarta.annotation.Nullable final String value) {
        this.organizationId = value;
    }
    /**
     * Sets the teams property value. The teams property
     * @param value Value to set for the teams property.
     */
    public void setTeams(@jakarta.annotation.Nullable final Integer value) {
        this.teams = value;
    }
    /**
     * Sets the winRate property value. The winRate property
     * @param value Value to set for the winRate property.
     */
    public void setWinRate(@jakarta.annotation.Nullable final Double value) {
        this.winRate = value;
    }
    /**
     * Sets the wins property value. The wins property
     * @param value Value to set for the wins property.
     */
    public void setWins(@jakarta.annotation.Nullable final Integer value) {
        this.wins = value;
    }
}
