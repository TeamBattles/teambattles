package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ComposedTypeWrapper;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.ParseNodeHelper;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * A single map&apos;s score entry.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MapScoreItem implements Parsable {
    /**
     * The confirmedBy property
     */
    private ScoreConfirmer confirmedBy;
    /**
     * Creation time (ISO 8601).
     */
    private MapScoreItemCreatedAt createdAt;
    /**
     * The creatorTeamScore property
     */
    private Integer creatorTeamScore;
    /**
     * The mapId property
     */
    private String mapId;
    /**
     * The mapIndex property
     */
    private Integer mapIndex;
    /**
     * The opponentTeamScore property
     */
    private Integer opponentTeamScore;
    /**
     * CONFIRMED or PENDING.
     */
    private String scoreStatus;
    /**
     * The screenshotUrls property
     */
    private java.util.List<String> screenshotUrls;
    /**
     * The submittedBy property
     */
    private ScoreSubmitter submittedBy;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MapScoreItem}
     */
    @jakarta.annotation.Nonnull
    public static MapScoreItem createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MapScoreItem();
    }
    /**
     * Gets the confirmedBy property value. The confirmedBy property
     * @return a {@link ScoreConfirmer}
     */
    @jakarta.annotation.Nullable
    public ScoreConfirmer getConfirmedBy() {
        return this.confirmedBy;
    }
    /**
     * Gets the createdAt property value. Creation time (ISO 8601).
     * @return a {@link MapScoreItemCreatedAt}
     */
    @jakarta.annotation.Nullable
    public MapScoreItemCreatedAt getCreatedAt() {
        return this.createdAt;
    }
    /**
     * Gets the creatorTeamScore property value. The creatorTeamScore property
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(9);
        deserializerMap.put("confirmedBy", (n) -> { this.setConfirmedBy(n.getObjectValue(ScoreConfirmer::createFromDiscriminatorValue)); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getObjectValue(MapScoreItemCreatedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("creatorTeamScore", (n) -> { this.setCreatorTeamScore(n.getIntegerValue()); });
        deserializerMap.put("mapId", (n) -> { this.setMapId(n.getStringValue()); });
        deserializerMap.put("mapIndex", (n) -> { this.setMapIndex(n.getIntegerValue()); });
        deserializerMap.put("opponentTeamScore", (n) -> { this.setOpponentTeamScore(n.getIntegerValue()); });
        deserializerMap.put("scoreStatus", (n) -> { this.setScoreStatus(n.getStringValue()); });
        deserializerMap.put("screenshotUrls", (n) -> { this.setScreenshotUrls(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("submittedBy", (n) -> { this.setSubmittedBy(n.getObjectValue(ScoreSubmitter::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the mapId property value. The mapId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getMapId() {
        return this.mapId;
    }
    /**
     * Gets the mapIndex property value. The mapIndex property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getMapIndex() {
        return this.mapIndex;
    }
    /**
     * Gets the opponentTeamScore property value. The opponentTeamScore property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getOpponentTeamScore() {
        return this.opponentTeamScore;
    }
    /**
     * Gets the scoreStatus property value. CONFIRMED or PENDING.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getScoreStatus() {
        return this.scoreStatus;
    }
    /**
     * Gets the screenshotUrls property value. The screenshotUrls property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getScreenshotUrls() {
        return this.screenshotUrls;
    }
    /**
     * Gets the submittedBy property value. The submittedBy property
     * @return a {@link ScoreSubmitter}
     */
    @jakarta.annotation.Nullable
    public ScoreSubmitter getSubmittedBy() {
        return this.submittedBy;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("confirmedBy", this.getConfirmedBy());
        writer.writeObjectValue("createdAt", this.getCreatedAt());
        writer.writeIntegerValue("creatorTeamScore", this.getCreatorTeamScore());
        writer.writeStringValue("mapId", this.getMapId());
        writer.writeIntegerValue("mapIndex", this.getMapIndex());
        writer.writeIntegerValue("opponentTeamScore", this.getOpponentTeamScore());
        writer.writeStringValue("scoreStatus", this.getScoreStatus());
        writer.writeCollectionOfPrimitiveValues("screenshotUrls", this.getScreenshotUrls());
        writer.writeObjectValue("submittedBy", this.getSubmittedBy());
    }
    /**
     * Sets the confirmedBy property value. The confirmedBy property
     * @param value Value to set for the confirmedBy property.
     */
    public void setConfirmedBy(@jakarta.annotation.Nullable final ScoreConfirmer value) {
        this.confirmedBy = value;
    }
    /**
     * Sets the createdAt property value. Creation time (ISO 8601).
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final MapScoreItemCreatedAt value) {
        this.createdAt = value;
    }
    /**
     * Sets the creatorTeamScore property value. The creatorTeamScore property
     * @param value Value to set for the creatorTeamScore property.
     */
    public void setCreatorTeamScore(@jakarta.annotation.Nullable final Integer value) {
        this.creatorTeamScore = value;
    }
    /**
     * Sets the mapId property value. The mapId property
     * @param value Value to set for the mapId property.
     */
    public void setMapId(@jakarta.annotation.Nullable final String value) {
        this.mapId = value;
    }
    /**
     * Sets the mapIndex property value. The mapIndex property
     * @param value Value to set for the mapIndex property.
     */
    public void setMapIndex(@jakarta.annotation.Nullable final Integer value) {
        this.mapIndex = value;
    }
    /**
     * Sets the opponentTeamScore property value. The opponentTeamScore property
     * @param value Value to set for the opponentTeamScore property.
     */
    public void setOpponentTeamScore(@jakarta.annotation.Nullable final Integer value) {
        this.opponentTeamScore = value;
    }
    /**
     * Sets the scoreStatus property value. CONFIRMED or PENDING.
     * @param value Value to set for the scoreStatus property.
     */
    public void setScoreStatus(@jakarta.annotation.Nullable final String value) {
        this.scoreStatus = value;
    }
    /**
     * Sets the screenshotUrls property value. The screenshotUrls property
     * @param value Value to set for the screenshotUrls property.
     */
    public void setScreenshotUrls(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.screenshotUrls = value;
    }
    /**
     * Sets the submittedBy property value. The submittedBy property
     * @param value Value to set for the submittedBy property.
     */
    public void setSubmittedBy(@jakarta.annotation.Nullable final ScoreSubmitter value) {
        this.submittedBy = value;
    }
    /**
     * Composed type wrapper for classes {@link MapScoreItemCreatedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class MapScoreItemCreatedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link MapScoreItemCreatedAtMember1}
         */
        private MapScoreItemCreatedAtMember1 mapScoreItemCreatedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link MapScoreItemCreatedAt}
         */
        @jakarta.annotation.Nonnull
        public static MapScoreItemCreatedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final MapScoreItemCreatedAt result = new MapScoreItemCreatedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setMapScoreItemCreatedAtMember1(new MapScoreItemCreatedAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getMapScoreItemCreatedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getMapScoreItemCreatedAtMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the MapScoreItem_createdAtMember1 property value. Composed type representation for type {@link MapScoreItemCreatedAtMember1}
         * @return a {@link MapScoreItemCreatedAtMember1}
         */
        @jakarta.annotation.Nullable
        public MapScoreItemCreatedAtMember1 getMapScoreItemCreatedAtMember1() {
            return this.mapScoreItemCreatedAtMember1;
        }
        /**
         * Gets the string property value. Composed type representation for type {@link String}
         * @return a {@link String}
         */
        @jakarta.annotation.Nullable
        public String getString() {
            return this.string;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getString() != null) {
                writer.writeStringValue(null, this.getString());
            } else {
                writer.writeObjectValue(null, this.getMapScoreItemCreatedAtMember1());
            }
        }
        /**
         * Sets the MapScoreItem_createdAtMember1 property value. Composed type representation for type {@link MapScoreItemCreatedAtMember1}
         * @param value Value to set for the MapScoreItem_createdAtMember1 property.
         */
        public void setMapScoreItemCreatedAtMember1(@jakarta.annotation.Nullable final MapScoreItemCreatedAtMember1 value) {
            this.mapScoreItemCreatedAtMember1 = value;
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
    }
}
