package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Player leaderboard row.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class PlayerLeaderboardEntry implements Parsable {
    /**
     * User ID.
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
     * API-safe public user profile.
     */
    private ApiUserProfile user;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link PlayerLeaderboardEntry}
     */
    @jakarta.annotation.Nonnull
    public static PlayerLeaderboardEntry createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new PlayerLeaderboardEntry();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("rank", (n) -> { this.setRank(n.getIntegerValue()); });
        deserializerMap.put("stats", (n) -> { this.setStats(n.getObjectValue(LeaderboardStats::createFromDiscriminatorValue)); });
        deserializerMap.put("user", (n) -> { this.setUser(n.getObjectValue(ApiUserProfile::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. User ID.
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
     * Gets the user property value. API-safe public user profile.
     * @return a {@link ApiUserProfile}
     */
    @jakarta.annotation.Nullable
    public ApiUserProfile getUser() {
        return this.user;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("id", this.getId());
        writer.writeIntegerValue("rank", this.getRank());
        writer.writeObjectValue("stats", this.getStats());
        writer.writeObjectValue("user", this.getUser());
    }
    /**
     * Sets the id property value. User ID.
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
     * Sets the user property value. API-safe public user profile.
     * @param value Value to set for the user property.
     */
    public void setUser(@jakarta.annotation.Nullable final ApiUserProfile value) {
        this.user = value;
    }
}
