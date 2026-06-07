package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * API-safe aggregate user stats.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiUserStats implements Parsable {
    /**
     * The bestStreak property
     */
    private Integer bestStreak;
    /**
     * The currentStreak property
     */
    private Integer currentStreak;
    /**
     * The draws property
     */
    private Integer draws;
    /**
     * The experience property
     */
    private Double experience;
    /**
     * The losses property
     */
    private Integer losses;
    /**
     * The matchesPlayed property
     */
    private Integer matchesPlayed;
    /**
     * User ID these stats belong to.
     */
    private String userId;
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
     * @return a {@link ApiUserStats}
     */
    @jakarta.annotation.Nonnull
    public static ApiUserStats createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiUserStats();
    }
    /**
     * Gets the bestStreak property value. The bestStreak property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getBestStreak() {
        return this.bestStreak;
    }
    /**
     * Gets the currentStreak property value. The currentStreak property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getCurrentStreak() {
        return this.currentStreak;
    }
    /**
     * Gets the draws property value. The draws property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getDraws() {
        return this.draws;
    }
    /**
     * Gets the experience property value. The experience property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getExperience() {
        return this.experience;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(9);
        deserializerMap.put("bestStreak", (n) -> { this.setBestStreak(n.getIntegerValue()); });
        deserializerMap.put("currentStreak", (n) -> { this.setCurrentStreak(n.getIntegerValue()); });
        deserializerMap.put("draws", (n) -> { this.setDraws(n.getIntegerValue()); });
        deserializerMap.put("experience", (n) -> { this.setExperience(n.getDoubleValue()); });
        deserializerMap.put("losses", (n) -> { this.setLosses(n.getIntegerValue()); });
        deserializerMap.put("matchesPlayed", (n) -> { this.setMatchesPlayed(n.getIntegerValue()); });
        deserializerMap.put("userId", (n) -> { this.setUserId(n.getStringValue()); });
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
     * Gets the userId property value. User ID these stats belong to.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUserId() {
        return this.userId;
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
        writer.writeIntegerValue("bestStreak", this.getBestStreak());
        writer.writeIntegerValue("currentStreak", this.getCurrentStreak());
        writer.writeIntegerValue("draws", this.getDraws());
        writer.writeDoubleValue("experience", this.getExperience());
        writer.writeIntegerValue("losses", this.getLosses());
        writer.writeIntegerValue("matchesPlayed", this.getMatchesPlayed());
        writer.writeStringValue("userId", this.getUserId());
        writer.writeDoubleValue("winRate", this.getWinRate());
        writer.writeIntegerValue("wins", this.getWins());
    }
    /**
     * Sets the bestStreak property value. The bestStreak property
     * @param value Value to set for the bestStreak property.
     */
    public void setBestStreak(@jakarta.annotation.Nullable final Integer value) {
        this.bestStreak = value;
    }
    /**
     * Sets the currentStreak property value. The currentStreak property
     * @param value Value to set for the currentStreak property.
     */
    public void setCurrentStreak(@jakarta.annotation.Nullable final Integer value) {
        this.currentStreak = value;
    }
    /**
     * Sets the draws property value. The draws property
     * @param value Value to set for the draws property.
     */
    public void setDraws(@jakarta.annotation.Nullable final Integer value) {
        this.draws = value;
    }
    /**
     * Sets the experience property value. The experience property
     * @param value Value to set for the experience property.
     */
    public void setExperience(@jakarta.annotation.Nullable final Double value) {
        this.experience = value;
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
     * Sets the userId property value. User ID these stats belong to.
     * @param value Value to set for the userId property.
     */
    public void setUserId(@jakarta.annotation.Nullable final String value) {
        this.userId = value;
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
