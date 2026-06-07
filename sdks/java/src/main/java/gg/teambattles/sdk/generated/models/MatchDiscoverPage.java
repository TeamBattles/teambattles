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
 * SP-2 open-match discovery page.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MatchDiscoverPage implements Parsable {
    /**
     * The data property
     */
    private java.util.List<ApiMatchDetail> data;
    /**
     * The hasMore property
     */
    private Boolean hasMore;
    /**
     * The nextCursor property
     */
    private MatchDiscoverPageNextCursor nextCursor;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MatchDiscoverPage}
     */
    @jakarta.annotation.Nonnull
    public static MatchDiscoverPage createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MatchDiscoverPage();
    }
    /**
     * Gets the data property value. The data property
     * @return a {@link java.util.List<ApiMatchDetail>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<ApiMatchDetail> getData() {
        return this.data;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("data", (n) -> { this.setData(n.getCollectionOfObjectValues(ApiMatchDetail::createFromDiscriminatorValue)); });
        deserializerMap.put("hasMore", (n) -> { this.setHasMore(n.getBooleanValue()); });
        deserializerMap.put("nextCursor", (n) -> { this.setNextCursor(n.getObjectValue(MatchDiscoverPageNextCursor::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the hasMore property value. The hasMore property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getHasMore() {
        return this.hasMore;
    }
    /**
     * Gets the nextCursor property value. The nextCursor property
     * @return a {@link MatchDiscoverPageNextCursor}
     */
    @jakarta.annotation.Nullable
    public MatchDiscoverPageNextCursor getNextCursor() {
        return this.nextCursor;
    }
    /**
     * Gets the timestamp property value. The timestamp property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTimestamp() {
        return this.timestamp;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfObjectValues("data", this.getData());
        writer.writeBooleanValue("hasMore", this.getHasMore());
        writer.writeObjectValue("nextCursor", this.getNextCursor());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the data property value. The data property
     * @param value Value to set for the data property.
     */
    public void setData(@jakarta.annotation.Nullable final java.util.List<ApiMatchDetail> value) {
        this.data = value;
    }
    /**
     * Sets the hasMore property value. The hasMore property
     * @param value Value to set for the hasMore property.
     */
    public void setHasMore(@jakarta.annotation.Nullable final Boolean value) {
        this.hasMore = value;
    }
    /**
     * Sets the nextCursor property value. The nextCursor property
     * @param value Value to set for the nextCursor property.
     */
    public void setNextCursor(@jakarta.annotation.Nullable final MatchDiscoverPageNextCursor value) {
        this.nextCursor = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Composed type wrapper for classes {@link MatchDiscoverPageNextCursorMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class MatchDiscoverPageNextCursor implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link MatchDiscoverPageNextCursorMember1}
         */
        private MatchDiscoverPageNextCursorMember1 matchDiscoverPageNextCursorMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link MatchDiscoverPageNextCursor}
         */
        @jakarta.annotation.Nonnull
        public static MatchDiscoverPageNextCursor createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final MatchDiscoverPageNextCursor result = new MatchDiscoverPageNextCursor();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setMatchDiscoverPageNextCursorMember1(new MatchDiscoverPageNextCursorMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getMatchDiscoverPageNextCursorMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getMatchDiscoverPageNextCursorMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the MatchDiscoverPage_nextCursorMember1 property value. Composed type representation for type {@link MatchDiscoverPageNextCursorMember1}
         * @return a {@link MatchDiscoverPageNextCursorMember1}
         */
        @jakarta.annotation.Nullable
        public MatchDiscoverPageNextCursorMember1 getMatchDiscoverPageNextCursorMember1() {
            return this.matchDiscoverPageNextCursorMember1;
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
                writer.writeObjectValue(null, this.getMatchDiscoverPageNextCursorMember1());
            }
        }
        /**
         * Sets the MatchDiscoverPage_nextCursorMember1 property value. Composed type representation for type {@link MatchDiscoverPageNextCursorMember1}
         * @param value Value to set for the MatchDiscoverPage_nextCursorMember1 property.
         */
        public void setMatchDiscoverPageNextCursorMember1(@jakarta.annotation.Nullable final MatchDiscoverPageNextCursorMember1 value) {
            this.matchDiscoverPageNextCursorMember1 = value;
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
