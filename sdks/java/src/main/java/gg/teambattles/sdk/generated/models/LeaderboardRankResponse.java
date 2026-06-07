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
 * Leaderboard rank lookup response.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeaderboardRankResponse implements Parsable {
    /**
     * The gameSlug property
     */
    private LeaderboardRankResponseGameSlug gameSlug;
    /**
     * Resolved entity ID.
     */
    private String id;
    /**
     * The rank property
     */
    private LeaderboardRankResponseRank rank;
    /**
     * Supported leaderboard sort field.
     */
    private LeaderboardSortBy sortBy;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeaderboardRankResponse}
     */
    @jakarta.annotation.Nonnull
    public static LeaderboardRankResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeaderboardRankResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("gameSlug", (n) -> { this.setGameSlug(n.getObjectValue(LeaderboardRankResponseGameSlug::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("rank", (n) -> { this.setRank(n.getObjectValue(LeaderboardRankResponseRank::createFromDiscriminatorValue)); });
        deserializerMap.put("sortBy", (n) -> { this.setSortBy(n.getEnumValue(LeaderboardSortBy::forValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gameSlug property value. The gameSlug property
     * @return a {@link LeaderboardRankResponseGameSlug}
     */
    @jakarta.annotation.Nullable
    public LeaderboardRankResponseGameSlug getGameSlug() {
        return this.gameSlug;
    }
    /**
     * Gets the id property value. Resolved entity ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the rank property value. The rank property
     * @return a {@link LeaderboardRankResponseRank}
     */
    @jakarta.annotation.Nullable
    public LeaderboardRankResponseRank getRank() {
        return this.rank;
    }
    /**
     * Gets the sortBy property value. Supported leaderboard sort field.
     * @return a {@link LeaderboardSortBy}
     */
    @jakarta.annotation.Nullable
    public LeaderboardSortBy getSortBy() {
        return this.sortBy;
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
        writer.writeObjectValue("gameSlug", this.getGameSlug());
        writer.writeStringValue("id", this.getId());
        writer.writeObjectValue("rank", this.getRank());
        writer.writeEnumValue("sortBy", this.getSortBy());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the gameSlug property value. The gameSlug property
     * @param value Value to set for the gameSlug property.
     */
    public void setGameSlug(@jakarta.annotation.Nullable final LeaderboardRankResponseGameSlug value) {
        this.gameSlug = value;
    }
    /**
     * Sets the id property value. Resolved entity ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the rank property value. The rank property
     * @param value Value to set for the rank property.
     */
    public void setRank(@jakarta.annotation.Nullable final LeaderboardRankResponseRank value) {
        this.rank = value;
    }
    /**
     * Sets the sortBy property value. Supported leaderboard sort field.
     * @param value Value to set for the sortBy property.
     */
    public void setSortBy(@jakarta.annotation.Nullable final LeaderboardSortBy value) {
        this.sortBy = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Composed type wrapper for classes {@link LeaderboardRankResponseGameSlugMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class LeaderboardRankResponseGameSlug implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link LeaderboardRankResponseGameSlugMember1}
         */
        private LeaderboardRankResponseGameSlugMember1 leaderboardRankResponseGameSlugMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link LeaderboardRankResponseGameSlug}
         */
        @jakarta.annotation.Nonnull
        public static LeaderboardRankResponseGameSlug createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final LeaderboardRankResponseGameSlug result = new LeaderboardRankResponseGameSlug();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setLeaderboardRankResponseGameSlugMember1(new LeaderboardRankResponseGameSlugMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getLeaderboardRankResponseGameSlugMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getLeaderboardRankResponseGameSlugMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the LeaderboardRankResponse_gameSlugMember1 property value. Composed type representation for type {@link LeaderboardRankResponseGameSlugMember1}
         * @return a {@link LeaderboardRankResponseGameSlugMember1}
         */
        @jakarta.annotation.Nullable
        public LeaderboardRankResponseGameSlugMember1 getLeaderboardRankResponseGameSlugMember1() {
            return this.leaderboardRankResponseGameSlugMember1;
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
                writer.writeObjectValue(null, this.getLeaderboardRankResponseGameSlugMember1());
            }
        }
        /**
         * Sets the LeaderboardRankResponse_gameSlugMember1 property value. Composed type representation for type {@link LeaderboardRankResponseGameSlugMember1}
         * @param value Value to set for the LeaderboardRankResponse_gameSlugMember1 property.
         */
        public void setLeaderboardRankResponseGameSlugMember1(@jakarta.annotation.Nullable final LeaderboardRankResponseGameSlugMember1 value) {
            this.leaderboardRankResponseGameSlugMember1 = value;
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link Integer}, {@link LeaderboardRankResponseRankMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class LeaderboardRankResponseRank implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link Integer}
         */
        private Integer integer;
        /**
         * Composed type representation for type {@link LeaderboardRankResponseRankMember1}
         */
        private LeaderboardRankResponseRankMember1 leaderboardRankResponseRankMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link LeaderboardRankResponseRank}
         */
        @jakarta.annotation.Nonnull
        public static LeaderboardRankResponseRank createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final LeaderboardRankResponseRank result = new LeaderboardRankResponseRank();
            if (parseNode.getIntegerValue() != null) {
                result.setInteger(parseNode.getIntegerValue());
            } else {
                result.setLeaderboardRankResponseRankMember1(new LeaderboardRankResponseRankMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getLeaderboardRankResponseRankMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getLeaderboardRankResponseRankMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the integer property value. Composed type representation for type {@link Integer}
         * @return a {@link Integer}
         */
        @jakarta.annotation.Nullable
        public Integer getInteger() {
            return this.integer;
        }
        /**
         * Gets the LeaderboardRankResponse_rankMember1 property value. Composed type representation for type {@link LeaderboardRankResponseRankMember1}
         * @return a {@link LeaderboardRankResponseRankMember1}
         */
        @jakarta.annotation.Nullable
        public LeaderboardRankResponseRankMember1 getLeaderboardRankResponseRankMember1() {
            return this.leaderboardRankResponseRankMember1;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getInteger() != null) {
                writer.writeIntegerValue(null, this.getInteger());
            } else {
                writer.writeObjectValue(null, this.getLeaderboardRankResponseRankMember1());
            }
        }
        /**
         * Sets the integer property value. Composed type representation for type {@link Integer}
         * @param value Value to set for the integer property.
         */
        public void setInteger(@jakarta.annotation.Nullable final Integer value) {
            this.integer = value;
        }
        /**
         * Sets the LeaderboardRankResponse_rankMember1 property value. Composed type representation for type {@link LeaderboardRankResponseRankMember1}
         * @param value Value to set for the LeaderboardRankResponse_rankMember1 property.
         */
        public void setLeaderboardRankResponseRankMember1(@jakarta.annotation.Nullable final LeaderboardRankResponseRankMember1 value) {
            this.leaderboardRankResponseRankMember1 = value;
        }
    }
}
