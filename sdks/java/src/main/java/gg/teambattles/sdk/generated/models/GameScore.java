package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import com.microsoft.kiota.serialization.UntypedNode;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * A single map score as returned when reading scores.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameScore implements Parsable {
    /**
     * When the score was confirmed (ISO 8601).
     */
    private String confirmedAt;
    /**
     * Score for the creator team.
     */
    private Integer creatorTeamScore;
    /**
     * Identifier of the map that was played.
     */
    private String mapId;
    /**
     * Zero-based index of the map within the series.
     */
    private Integer mapIndex;
    /**
     * Score for the opponent (accepted) team.
     */
    private Integer opponentTeamScore;
    /**
     * Per-player stats keyed by user ID, or null when none recorded.
     */
    private UntypedNode playerStats;
    /**
     * Confirmation state: &quot;CONFIRMED&quot; or &quot;PENDING&quot;.
     */
    private String scoreStatus;
    /**
     * When the score was submitted (ISO 8601).
     */
    private String submittedAt;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link GameScore}
     */
    @jakarta.annotation.Nonnull
    public static GameScore createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new GameScore();
    }
    /**
     * Gets the confirmedAt property value. When the score was confirmed (ISO 8601).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getConfirmedAt() {
        return this.confirmedAt;
    }
    /**
     * Gets the creatorTeamScore property value. Score for the creator team.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getCreatorTeamScore() {
        return this.creatorTeamScore;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(8);
        deserializerMap.put("confirmedAt", (n) -> { this.setConfirmedAt(n.getStringValue()); });
        deserializerMap.put("creatorTeamScore", (n) -> { this.setCreatorTeamScore(n.getIntegerValue()); });
        deserializerMap.put("mapId", (n) -> { this.setMapId(n.getStringValue()); });
        deserializerMap.put("mapIndex", (n) -> { this.setMapIndex(n.getIntegerValue()); });
        deserializerMap.put("opponentTeamScore", (n) -> { this.setOpponentTeamScore(n.getIntegerValue()); });
        deserializerMap.put("playerStats", (n) -> { this.setPlayerStats(n.getObjectValue(UntypedNode::createFromDiscriminatorValue)); });
        deserializerMap.put("scoreStatus", (n) -> { this.setScoreStatus(n.getStringValue()); });
        deserializerMap.put("submittedAt", (n) -> { this.setSubmittedAt(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the mapId property value. Identifier of the map that was played.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getMapId() {
        return this.mapId;
    }
    /**
     * Gets the mapIndex property value. Zero-based index of the map within the series.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getMapIndex() {
        return this.mapIndex;
    }
    /**
     * Gets the opponentTeamScore property value. Score for the opponent (accepted) team.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getOpponentTeamScore() {
        return this.opponentTeamScore;
    }
    /**
     * Gets the playerStats property value. Per-player stats keyed by user ID, or null when none recorded.
     * @return a {@link UntypedNode}
     */
    @jakarta.annotation.Nullable
    public UntypedNode getPlayerStats() {
        return this.playerStats;
    }
    /**
     * Gets the scoreStatus property value. Confirmation state: &quot;CONFIRMED&quot; or &quot;PENDING&quot;.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getScoreStatus() {
        return this.scoreStatus;
    }
    /**
     * Gets the submittedAt property value. When the score was submitted (ISO 8601).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSubmittedAt() {
        return this.submittedAt;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("confirmedAt", this.getConfirmedAt());
        writer.writeIntegerValue("creatorTeamScore", this.getCreatorTeamScore());
        writer.writeStringValue("mapId", this.getMapId());
        writer.writeIntegerValue("mapIndex", this.getMapIndex());
        writer.writeIntegerValue("opponentTeamScore", this.getOpponentTeamScore());
        writer.writeObjectValue("playerStats", this.getPlayerStats());
        writer.writeStringValue("scoreStatus", this.getScoreStatus());
        writer.writeStringValue("submittedAt", this.getSubmittedAt());
    }
    /**
     * Sets the confirmedAt property value. When the score was confirmed (ISO 8601).
     * @param value Value to set for the confirmedAt property.
     */
    public void setConfirmedAt(@jakarta.annotation.Nullable final String value) {
        this.confirmedAt = value;
    }
    /**
     * Sets the creatorTeamScore property value. Score for the creator team.
     * @param value Value to set for the creatorTeamScore property.
     */
    public void setCreatorTeamScore(@jakarta.annotation.Nullable final Integer value) {
        this.creatorTeamScore = value;
    }
    /**
     * Sets the mapId property value. Identifier of the map that was played.
     * @param value Value to set for the mapId property.
     */
    public void setMapId(@jakarta.annotation.Nullable final String value) {
        this.mapId = value;
    }
    /**
     * Sets the mapIndex property value. Zero-based index of the map within the series.
     * @param value Value to set for the mapIndex property.
     */
    public void setMapIndex(@jakarta.annotation.Nullable final Integer value) {
        this.mapIndex = value;
    }
    /**
     * Sets the opponentTeamScore property value. Score for the opponent (accepted) team.
     * @param value Value to set for the opponentTeamScore property.
     */
    public void setOpponentTeamScore(@jakarta.annotation.Nullable final Integer value) {
        this.opponentTeamScore = value;
    }
    /**
     * Sets the playerStats property value. Per-player stats keyed by user ID, or null when none recorded.
     * @param value Value to set for the playerStats property.
     */
    public void setPlayerStats(@jakarta.annotation.Nullable final UntypedNode value) {
        this.playerStats = value;
    }
    /**
     * Sets the scoreStatus property value. Confirmation state: &quot;CONFIRMED&quot; or &quot;PENDING&quot;.
     * @param value Value to set for the scoreStatus property.
     */
    public void setScoreStatus(@jakarta.annotation.Nullable final String value) {
        this.scoreStatus = value;
    }
    /**
     * Sets the submittedAt property value. When the score was submitted (ISO 8601).
     * @param value Value to set for the submittedAt property.
     */
    public void setSubmittedAt(@jakarta.annotation.Nullable final String value) {
        this.submittedAt = value;
    }
}
