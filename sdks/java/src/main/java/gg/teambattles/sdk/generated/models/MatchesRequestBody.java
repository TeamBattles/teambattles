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
 * Filters and cursor pagination for listing matches.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MatchesRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * ISO 8601; only matches created at or after this time.
     */
    private String createdAfter;
    /**
     * ISO 8601; only matches created at or before this time.
     */
    private String createdBefore;
    /**
     * Opaque continuation cursor from a prior page&apos;s continueCursor.
     */
    private MatchesRequestBodyCursor cursor;
    /**
     * Exclude matches with these MatchStatus codes; unknown values are ignored.
     */
    private java.util.List<String> excludeStatuses;
    /**
     * Filter to a single game by id.
     */
    private String gameId;
    /**
     * Only include matches with these MatchStatus codes; unknown values are ignored.
     */
    private java.util.List<String> includeStatuses;
    /**
     * Page size (1-100). Defaults to 25.
     */
    private Integer numItems;
    /**
     * Filter to matches against this opponent team (team id or slug).
     */
    private String opponentId;
    /**
     * ISO 8601; only matches scheduled at or after this time.
     */
    private String scheduledAfter;
    /**
     * ISO 8601; only matches scheduled at or before this time.
     */
    private String scheduledBefore;
    /**
     * Instantiates a new {@link MatchesRequestBody} and sets the default values.
     */
    public MatchesRequestBody() {
        this.setAdditionalData(new HashMap<>());
        this.setNumItems(25);
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MatchesRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static MatchesRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MatchesRequestBody();
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
     * Gets the createdAfter property value. ISO 8601; only matches created at or after this time.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCreatedAfter() {
        return this.createdAfter;
    }
    /**
     * Gets the createdBefore property value. ISO 8601; only matches created at or before this time.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCreatedBefore() {
        return this.createdBefore;
    }
    /**
     * Gets the cursor property value. Opaque continuation cursor from a prior page&apos;s continueCursor.
     * @return a {@link MatchesRequestBodyCursor}
     */
    @jakarta.annotation.Nullable
    public MatchesRequestBodyCursor getCursor() {
        return this.cursor;
    }
    /**
     * Gets the excludeStatuses property value. Exclude matches with these MatchStatus codes; unknown values are ignored.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getExcludeStatuses() {
        return this.excludeStatuses;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(10);
        deserializerMap.put("createdAfter", (n) -> { this.setCreatedAfter(n.getStringValue()); });
        deserializerMap.put("createdBefore", (n) -> { this.setCreatedBefore(n.getStringValue()); });
        deserializerMap.put("cursor", (n) -> { this.setCursor(n.getObjectValue(MatchesRequestBodyCursor::createFromDiscriminatorValue)); });
        deserializerMap.put("excludeStatuses", (n) -> { this.setExcludeStatuses(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getStringValue()); });
        deserializerMap.put("includeStatuses", (n) -> { this.setIncludeStatuses(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("numItems", (n) -> { this.setNumItems(n.getIntegerValue()); });
        deserializerMap.put("opponentId", (n) -> { this.setOpponentId(n.getStringValue()); });
        deserializerMap.put("scheduledAfter", (n) -> { this.setScheduledAfter(n.getStringValue()); });
        deserializerMap.put("scheduledBefore", (n) -> { this.setScheduledBefore(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gameId property value. Filter to a single game by id.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameId() {
        return this.gameId;
    }
    /**
     * Gets the includeStatuses property value. Only include matches with these MatchStatus codes; unknown values are ignored.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getIncludeStatuses() {
        return this.includeStatuses;
    }
    /**
     * Gets the numItems property value. Page size (1-100). Defaults to 25.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getNumItems() {
        return this.numItems;
    }
    /**
     * Gets the opponentId property value. Filter to matches against this opponent team (team id or slug).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getOpponentId() {
        return this.opponentId;
    }
    /**
     * Gets the scheduledAfter property value. ISO 8601; only matches scheduled at or after this time.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getScheduledAfter() {
        return this.scheduledAfter;
    }
    /**
     * Gets the scheduledBefore property value. ISO 8601; only matches scheduled at or before this time.
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
        writer.writeStringValue("createdAfter", this.getCreatedAfter());
        writer.writeStringValue("createdBefore", this.getCreatedBefore());
        writer.writeObjectValue("cursor", this.getCursor());
        writer.writeCollectionOfPrimitiveValues("excludeStatuses", this.getExcludeStatuses());
        writer.writeStringValue("gameId", this.getGameId());
        writer.writeCollectionOfPrimitiveValues("includeStatuses", this.getIncludeStatuses());
        writer.writeIntegerValue("numItems", this.getNumItems());
        writer.writeStringValue("opponentId", this.getOpponentId());
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
     * Sets the createdAfter property value. ISO 8601; only matches created at or after this time.
     * @param value Value to set for the createdAfter property.
     */
    public void setCreatedAfter(@jakarta.annotation.Nullable final String value) {
        this.createdAfter = value;
    }
    /**
     * Sets the createdBefore property value. ISO 8601; only matches created at or before this time.
     * @param value Value to set for the createdBefore property.
     */
    public void setCreatedBefore(@jakarta.annotation.Nullable final String value) {
        this.createdBefore = value;
    }
    /**
     * Sets the cursor property value. Opaque continuation cursor from a prior page&apos;s continueCursor.
     * @param value Value to set for the cursor property.
     */
    public void setCursor(@jakarta.annotation.Nullable final MatchesRequestBodyCursor value) {
        this.cursor = value;
    }
    /**
     * Sets the excludeStatuses property value. Exclude matches with these MatchStatus codes; unknown values are ignored.
     * @param value Value to set for the excludeStatuses property.
     */
    public void setExcludeStatuses(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.excludeStatuses = value;
    }
    /**
     * Sets the gameId property value. Filter to a single game by id.
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final String value) {
        this.gameId = value;
    }
    /**
     * Sets the includeStatuses property value. Only include matches with these MatchStatus codes; unknown values are ignored.
     * @param value Value to set for the includeStatuses property.
     */
    public void setIncludeStatuses(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.includeStatuses = value;
    }
    /**
     * Sets the numItems property value. Page size (1-100). Defaults to 25.
     * @param value Value to set for the numItems property.
     */
    public void setNumItems(@jakarta.annotation.Nullable final Integer value) {
        this.numItems = value;
    }
    /**
     * Sets the opponentId property value. Filter to matches against this opponent team (team id or slug).
     * @param value Value to set for the opponentId property.
     */
    public void setOpponentId(@jakarta.annotation.Nullable final String value) {
        this.opponentId = value;
    }
    /**
     * Sets the scheduledAfter property value. ISO 8601; only matches scheduled at or after this time.
     * @param value Value to set for the scheduledAfter property.
     */
    public void setScheduledAfter(@jakarta.annotation.Nullable final String value) {
        this.scheduledAfter = value;
    }
    /**
     * Sets the scheduledBefore property value. ISO 8601; only matches scheduled at or before this time.
     * @param value Value to set for the scheduledBefore property.
     */
    public void setScheduledBefore(@jakarta.annotation.Nullable final String value) {
        this.scheduledBefore = value;
    }
    /**
     * Composed type wrapper for classes {@link MatchesRequestBodyCursorMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class MatchesRequestBodyCursor implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link MatchesRequestBodyCursorMember1}
         */
        private MatchesRequestBodyCursorMember1 matchesRequestBodyCursorMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link MatchesRequestBodyCursor}
         */
        @jakarta.annotation.Nonnull
        public static MatchesRequestBodyCursor createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final MatchesRequestBodyCursor result = new MatchesRequestBodyCursor();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setMatchesRequestBodyCursorMember1(new MatchesRequestBodyCursorMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getMatchesRequestBodyCursorMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getMatchesRequestBodyCursorMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the MatchesRequestBody_cursorMember1 property value. Composed type representation for type {@link MatchesRequestBodyCursorMember1}
         * @return a {@link MatchesRequestBodyCursorMember1}
         */
        @jakarta.annotation.Nullable
        public MatchesRequestBodyCursorMember1 getMatchesRequestBodyCursorMember1() {
            return this.matchesRequestBodyCursorMember1;
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
                writer.writeObjectValue(null, this.getMatchesRequestBodyCursorMember1());
            }
        }
        /**
         * Sets the MatchesRequestBody_cursorMember1 property value. Composed type representation for type {@link MatchesRequestBodyCursorMember1}
         * @param value Value to set for the MatchesRequestBody_cursorMember1 property.
         */
        public void setMatchesRequestBodyCursorMember1(@jakarta.annotation.Nullable final MatchesRequestBodyCursorMember1 value) {
            this.matchesRequestBodyCursorMember1 = value;
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
