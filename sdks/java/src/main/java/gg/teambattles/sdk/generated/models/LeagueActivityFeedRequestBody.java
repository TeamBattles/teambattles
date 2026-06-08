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
 * Cursor pagination options for a league activity feed.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeagueActivityFeedRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * The cursor property
     */
    private LeagueActivityFeedRequestBodyCursor cursor;
    /**
     * The limit property
     */
    private Integer limit;
    /**
     * Instantiates a new {@link LeagueActivityFeedRequestBody} and sets the default values.
     */
    public LeagueActivityFeedRequestBody() {
        this.setAdditionalData(new HashMap<>());
        this.setLimit(25);
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeagueActivityFeedRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static LeagueActivityFeedRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeagueActivityFeedRequestBody();
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
     * @return a {@link LeagueActivityFeedRequestBodyCursor}
     */
    @jakarta.annotation.Nullable
    public LeagueActivityFeedRequestBodyCursor getCursor() {
        return this.cursor;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("cursor", (n) -> { this.setCursor(n.getObjectValue(LeagueActivityFeedRequestBodyCursor::createFromDiscriminatorValue)); });
        deserializerMap.put("limit", (n) -> { this.setLimit(n.getIntegerValue()); });
        return deserializerMap;
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
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("cursor", this.getCursor());
        writer.writeIntegerValue("limit", this.getLimit());
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
    public void setCursor(@jakarta.annotation.Nullable final LeagueActivityFeedRequestBodyCursor value) {
        this.cursor = value;
    }
    /**
     * Sets the limit property value. The limit property
     * @param value Value to set for the limit property.
     */
    public void setLimit(@jakarta.annotation.Nullable final Integer value) {
        this.limit = value;
    }
    /**
     * Composed type wrapper for classes {@link LeagueActivityFeedRequestBodyCursorMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class LeagueActivityFeedRequestBodyCursor implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link LeagueActivityFeedRequestBodyCursorMember1}
         */
        private LeagueActivityFeedRequestBodyCursorMember1 leagueActivityFeedRequestBodyCursorMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link LeagueActivityFeedRequestBodyCursor}
         */
        @jakarta.annotation.Nonnull
        public static LeagueActivityFeedRequestBodyCursor createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final LeagueActivityFeedRequestBodyCursor result = new LeagueActivityFeedRequestBodyCursor();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setLeagueActivityFeedRequestBodyCursorMember1(new LeagueActivityFeedRequestBodyCursorMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getLeagueActivityFeedRequestBodyCursorMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getLeagueActivityFeedRequestBodyCursorMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the LeagueActivityFeedRequestBody_cursorMember1 property value. Composed type representation for type {@link LeagueActivityFeedRequestBodyCursorMember1}
         * @return a {@link LeagueActivityFeedRequestBodyCursorMember1}
         */
        @jakarta.annotation.Nullable
        public LeagueActivityFeedRequestBodyCursorMember1 getLeagueActivityFeedRequestBodyCursorMember1() {
            return this.leagueActivityFeedRequestBodyCursorMember1;
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
                writer.writeObjectValue(null, this.getLeagueActivityFeedRequestBodyCursorMember1());
            }
        }
        /**
         * Sets the LeagueActivityFeedRequestBody_cursorMember1 property value. Composed type representation for type {@link LeagueActivityFeedRequestBodyCursorMember1}
         * @param value Value to set for the LeagueActivityFeedRequestBody_cursorMember1 property.
         */
        public void setLeagueActivityFeedRequestBodyCursorMember1(@jakarta.annotation.Nullable final LeagueActivityFeedRequestBodyCursorMember1 value) {
            this.leagueActivityFeedRequestBodyCursorMember1 = value;
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
