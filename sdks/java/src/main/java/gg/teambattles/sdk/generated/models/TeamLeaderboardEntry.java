package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Team leaderboard row.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TeamLeaderboardEntry implements Parsable {
    /**
     * The gameSlug property
     */
    private String gameSlug;
    /**
     * Team ID.
     */
    private String id;
    /**
     * The rank property
     */
    private Integer rank;
    /**
     * Aggregate stats used for leaderboard ranking.
     */
    private LeaderboardStats stats;
    /**
     * Small API-safe team summary.
     */
    private ApiTeamSummary team;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TeamLeaderboardEntry}
     */
    @jakarta.annotation.Nonnull
    public static TeamLeaderboardEntry createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TeamLeaderboardEntry();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("gameSlug", (n) -> { this.setGameSlug(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("rank", (n) -> { this.setRank(n.getIntegerValue()); });
        deserializerMap.put("stats", (n) -> { this.setStats(n.getObjectValue(LeaderboardStats::createFromDiscriminatorValue)); });
        deserializerMap.put("team", (n) -> { this.setTeam(n.getObjectValue(ApiTeamSummary::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the gameSlug property value. The gameSlug property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameSlug() {
        return this.gameSlug;
    }
    /**
     * Gets the id property value. Team ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the rank property value. The rank property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getRank() {
        return this.rank;
    }
    /**
     * Gets the stats property value. Aggregate stats used for leaderboard ranking.
     * @return a {@link LeaderboardStats}
     */
    @jakarta.annotation.Nullable
    public LeaderboardStats getStats() {
        return this.stats;
    }
    /**
     * Gets the team property value. Small API-safe team summary.
     * @return a {@link ApiTeamSummary}
     */
    @jakarta.annotation.Nullable
    public ApiTeamSummary getTeam() {
        return this.team;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("gameSlug", this.getGameSlug());
        writer.writeStringValue("id", this.getId());
        writer.writeIntegerValue("rank", this.getRank());
        writer.writeObjectValue("stats", this.getStats());
        writer.writeObjectValue("team", this.getTeam());
    }
    /**
     * Sets the gameSlug property value. The gameSlug property
     * @param value Value to set for the gameSlug property.
     */
    public void setGameSlug(@jakarta.annotation.Nullable final String value) {
        this.gameSlug = value;
    }
    /**
     * Sets the id property value. Team ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the rank property value. The rank property
     * @param value Value to set for the rank property.
     */
    public void setRank(@jakarta.annotation.Nullable final Integer value) {
        this.rank = value;
    }
    /**
     * Sets the stats property value. Aggregate stats used for leaderboard ranking.
     * @param value Value to set for the stats property.
     */
    public void setStats(@jakarta.annotation.Nullable final LeaderboardStats value) {
        this.stats = value;
    }
    /**
     * Sets the team property value. Small API-safe team summary.
     * @param value Value to set for the team property.
     */
    public void setTeam(@jakarta.annotation.Nullable final ApiTeamSummary value) {
        this.team = value;
    }
}
