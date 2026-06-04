package gg.teambattles.sdk.generated.game.matches;

import com.microsoft.kiota.serialization.ComposedTypeWrapper;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.ParseNodeHelper;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MatchesPostResponsePagination implements Parsable {
    /**
     * The cursor property
     */
    private MatchesPostResponsePaginationCursor cursor;
    /**
     * The hasMore property
     */
    private Boolean hasMore;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MatchesPostResponsePagination}
     */
    @jakarta.annotation.Nonnull
    public static MatchesPostResponsePagination createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MatchesPostResponsePagination();
    }
    /**
     * Gets the cursor property value. The cursor property
     * @return a {@link MatchesPostResponsePaginationCursor}
     */
    @jakarta.annotation.Nullable
    public MatchesPostResponsePaginationCursor getCursor() {
        return this.cursor;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("cursor", (n) -> { this.setCursor(n.getObjectValue(MatchesPostResponsePaginationCursor::createFromDiscriminatorValue)); });
        deserializerMap.put("hasMore", (n) -> { this.setHasMore(n.getBooleanValue()); });
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
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("cursor", this.getCursor());
        writer.writeBooleanValue("hasMore", this.getHasMore());
    }
    /**
     * Sets the cursor property value. The cursor property
     * @param value Value to set for the cursor property.
     */
    public void setCursor(@jakarta.annotation.Nullable final MatchesPostResponsePaginationCursor value) {
        this.cursor = value;
    }
    /**
     * Sets the hasMore property value. The hasMore property
     * @param value Value to set for the hasMore property.
     */
    public void setHasMore(@jakarta.annotation.Nullable final Boolean value) {
        this.hasMore = value;
    }
    /**
     * Composed type wrapper for classes {@link MatchesPostResponsePaginationCursorMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class MatchesPostResponsePaginationCursor implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link MatchesPostResponsePaginationCursorMember1}
         */
        private MatchesPostResponsePaginationCursorMember1 matchesPostResponsePaginationCursorMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link MatchesPostResponsePaginationCursor}
         */
        @jakarta.annotation.Nonnull
        public static MatchesPostResponsePaginationCursor createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final MatchesPostResponsePaginationCursor result = new MatchesPostResponsePaginationCursor();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setMatchesPostResponsePaginationCursorMember1(new MatchesPostResponsePaginationCursorMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getMatchesPostResponsePaginationCursorMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getMatchesPostResponsePaginationCursorMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the matchesPostResponse_pagination_cursorMember1 property value. Composed type representation for type {@link MatchesPostResponsePaginationCursorMember1}
         * @return a {@link MatchesPostResponsePaginationCursorMember1}
         */
        @jakarta.annotation.Nullable
        public MatchesPostResponsePaginationCursorMember1 getMatchesPostResponsePaginationCursorMember1() {
            return this.matchesPostResponsePaginationCursorMember1;
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
                writer.writeObjectValue(null, this.getMatchesPostResponsePaginationCursorMember1());
            }
        }
        /**
         * Sets the matchesPostResponse_pagination_cursorMember1 property value. Composed type representation for type {@link MatchesPostResponsePaginationCursorMember1}
         * @param value Value to set for the matchesPostResponse_pagination_cursorMember1 property.
         */
        public void setMatchesPostResponsePaginationCursorMember1(@jakarta.annotation.Nullable final MatchesPostResponsePaginationCursorMember1 value) {
            this.matchesPostResponsePaginationCursorMember1 = value;
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
