package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.ComposedTypeWrapper;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.ParseNodeHelper;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Filters and cursor pagination for public open-match discovery.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MatchDiscoverBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * The cursor property
     */
    private MatchDiscoverBodyCursor cursor;
    /**
     * The gameId property
     */
    private String gameId;
    /**
     * The gameSlug property
     */
    private String gameSlug;
    /**
     * The leagueId property
     */
    private String leagueId;
    /**
     * The leagueSeasonId property
     */
    private String leagueSeasonId;
    /**
     * The limit property
     */
    private Integer limit;
    /**
     * The matchType property
     */
    private MatchDiscoverBodyMatchType matchType;
    /**
     * The platform property
     */
    private MatchDiscoverBodyPlatform platform;
    /**
     * The region property
     */
    private MatchDiscoverBodyRegion region;
    /**
     * The scheduledAfter property
     */
    private String scheduledAfter;
    /**
     * The scheduledBefore property
     */
    private String scheduledBefore;
    /**
     * Instantiates a new {@link MatchDiscoverBody} and sets the default values.
     */
    public MatchDiscoverBody() {
        this.setAdditionalData(new HashMap<>());
        this.setLimit(50);
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MatchDiscoverBody}
     */
    @jakarta.annotation.Nonnull
    public static MatchDiscoverBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MatchDiscoverBody();
    }
    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return a {@link Map<String, Object>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, Object> getAdditionalData() {
        return this.additionalData;
    }
    /**
     * Gets the cursor property value. The cursor property
     * @return a {@link MatchDiscoverBodyCursor}
     */
    @jakarta.annotation.Nullable
    public MatchDiscoverBodyCursor getCursor() {
        return this.cursor;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(11);
        deserializerMap.put("cursor", (n) -> { this.setCursor(n.getObjectValue(MatchDiscoverBodyCursor::createFromDiscriminatorValue)); });
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getStringValue()); });
        deserializerMap.put("gameSlug", (n) -> { this.setGameSlug(n.getStringValue()); });
        deserializerMap.put("leagueId", (n) -> { this.setLeagueId(n.getStringValue()); });
        deserializerMap.put("leagueSeasonId", (n) -> { this.setLeagueSeasonId(n.getStringValue()); });
        deserializerMap.put("limit", (n) -> { this.setLimit(n.getIntegerValue()); });
        deserializerMap.put("matchType", (n) -> { this.setMatchType(n.getEnumValue(MatchDiscoverBodyMatchType::forValue)); });
        deserializerMap.put("platform", (n) -> { this.setPlatform(n.getEnumValue(MatchDiscoverBodyPlatform::forValue)); });
        deserializerMap.put("region", (n) -> { this.setRegion(n.getEnumValue(MatchDiscoverBodyRegion::forValue)); });
        deserializerMap.put("scheduledAfter", (n) -> { this.setScheduledAfter(n.getStringValue()); });
        deserializerMap.put("scheduledBefore", (n) -> { this.setScheduledBefore(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gameId property value. The gameId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameId() {
        return this.gameId;
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
     * Gets the leagueId property value. The leagueId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getLeagueId() {
        return this.leagueId;
    }
    /**
     * Gets the leagueSeasonId property value. The leagueSeasonId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getLeagueSeasonId() {
        return this.leagueSeasonId;
    }
    /**
     * Gets the limit property value. The limit property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getLimit() {
        return this.limit;
    }
    /**
     * Gets the matchType property value. The matchType property
     * @return a {@link MatchDiscoverBodyMatchType}
     */
    @jakarta.annotation.Nullable
    public MatchDiscoverBodyMatchType getMatchType() {
        return this.matchType;
    }
    /**
     * Gets the platform property value. The platform property
     * @return a {@link MatchDiscoverBodyPlatform}
     */
    @jakarta.annotation.Nullable
    public MatchDiscoverBodyPlatform getPlatform() {
        return this.platform;
    }
    /**
     * Gets the region property value. The region property
     * @return a {@link MatchDiscoverBodyRegion}
     */
    @jakarta.annotation.Nullable
    public MatchDiscoverBodyRegion getRegion() {
        return this.region;
    }
    /**
     * Gets the scheduledAfter property value. The scheduledAfter property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getScheduledAfter() {
        return this.scheduledAfter;
    }
    /**
     * Gets the scheduledBefore property value. The scheduledBefore property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getScheduledBefore() {
        return this.scheduledBefore;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("cursor", this.getCursor());
        writer.writeStringValue("gameId", this.getGameId());
        writer.writeStringValue("gameSlug", this.getGameSlug());
        writer.writeStringValue("leagueId", this.getLeagueId());
        writer.writeStringValue("leagueSeasonId", this.getLeagueSeasonId());
        writer.writeIntegerValue("limit", this.getLimit());
        writer.writeEnumValue("matchType", this.getMatchType());
        writer.writeEnumValue("platform", this.getPlatform());
        writer.writeEnumValue("region", this.getRegion());
        writer.writeStringValue("scheduledAfter", this.getScheduledAfter());
        writer.writeStringValue("scheduledBefore", this.getScheduledBefore());
        writer.writeAdditionalData(this.getAdditionalData());
    }
    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param value Value to set for the AdditionalData property.
     */
    public void setAdditionalData(@jakarta.annotation.Nullable final Map<String, Object> value) {
        this.additionalData = value;
    }
    /**
     * Sets the cursor property value. The cursor property
     * @param value Value to set for the cursor property.
     */
    public void setCursor(@jakarta.annotation.Nullable final MatchDiscoverBodyCursor value) {
        this.cursor = value;
    }
    /**
     * Sets the gameId property value. The gameId property
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final String value) {
        this.gameId = value;
    }
    /**
     * Sets the gameSlug property value. The gameSlug property
     * @param value Value to set for the gameSlug property.
     */
    public void setGameSlug(@jakarta.annotation.Nullable final String value) {
        this.gameSlug = value;
    }
    /**
     * Sets the leagueId property value. The leagueId property
     * @param value Value to set for the leagueId property.
     */
    public void setLeagueId(@jakarta.annotation.Nullable final String value) {
        this.leagueId = value;
    }
    /**
     * Sets the leagueSeasonId property value. The leagueSeasonId property
     * @param value Value to set for the leagueSeasonId property.
     */
    public void setLeagueSeasonId(@jakarta.annotation.Nullable final String value) {
        this.leagueSeasonId = value;
    }
    /**
     * Sets the limit property value. The limit property
     * @param value Value to set for the limit property.
     */
    public void setLimit(@jakarta.annotation.Nullable final Integer value) {
        this.limit = value;
    }
    /**
     * Sets the matchType property value. The matchType property
     * @param value Value to set for the matchType property.
     */
    public void setMatchType(@jakarta.annotation.Nullable final MatchDiscoverBodyMatchType value) {
        this.matchType = value;
    }
    /**
     * Sets the platform property value. The platform property
     * @param value Value to set for the platform property.
     */
    public void setPlatform(@jakarta.annotation.Nullable final MatchDiscoverBodyPlatform value) {
        this.platform = value;
    }
    /**
     * Sets the region property value. The region property
     * @param value Value to set for the region property.
     */
    public void setRegion(@jakarta.annotation.Nullable final MatchDiscoverBodyRegion value) {
        this.region = value;
    }
    /**
     * Sets the scheduledAfter property value. The scheduledAfter property
     * @param value Value to set for the scheduledAfter property.
     */
    public void setScheduledAfter(@jakarta.annotation.Nullable final String value) {
        this.scheduledAfter = value;
    }
    /**
     * Sets the scheduledBefore property value. The scheduledBefore property
     * @param value Value to set for the scheduledBefore property.
     */
    public void setScheduledBefore(@jakarta.annotation.Nullable final String value) {
        this.scheduledBefore = value;
    }
    /**
     * Composed type wrapper for classes {@link MatchDiscoverBodyCursorMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class MatchDiscoverBodyCursor implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link MatchDiscoverBodyCursorMember1}
         */
        private MatchDiscoverBodyCursorMember1 matchDiscoverBodyCursorMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link MatchDiscoverBodyCursor}
         */
        @jakarta.annotation.Nonnull
        public static MatchDiscoverBodyCursor createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final MatchDiscoverBodyCursor result = new MatchDiscoverBodyCursor();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setMatchDiscoverBodyCursorMember1(new MatchDiscoverBodyCursorMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getMatchDiscoverBodyCursorMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getMatchDiscoverBodyCursorMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the MatchDiscoverBody_cursorMember1 property value. Composed type representation for type {@link MatchDiscoverBodyCursorMember1}
         * @return a {@link MatchDiscoverBodyCursorMember1}
         */
        @jakarta.annotation.Nullable
        public MatchDiscoverBodyCursorMember1 getMatchDiscoverBodyCursorMember1() {
            return this.matchDiscoverBodyCursorMember1;
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
                writer.writeObjectValue(null, this.getMatchDiscoverBodyCursorMember1());
            }
        }
        /**
         * Sets the MatchDiscoverBody_cursorMember1 property value. Composed type representation for type {@link MatchDiscoverBodyCursorMember1}
         * @param value Value to set for the MatchDiscoverBody_cursorMember1 property.
         */
        public void setMatchDiscoverBodyCursorMember1(@jakarta.annotation.Nullable final MatchDiscoverBodyCursorMember1 value) {
            this.matchDiscoverBodyCursorMember1 = value;
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
