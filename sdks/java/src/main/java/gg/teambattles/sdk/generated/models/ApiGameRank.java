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
 * API-safe game rank entry for the API key owner.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiGameRank implements Parsable {
    /**
     * When the rank was first recorded.
     */
    private String createdAt;
    /**
     * Game definition ID this rank belongs to.
     */
    private String gameId;
    /**
     * Game rank row ID.
     */
    private String id;
    /**
     * Whether the player is in the Top 250 ladder.
     */
    private Boolean isTop250;
    /**
     * Game mode / playlist the rank is tracked for.
     */
    private String mode;
    /**
     * Origin of the rank: manual entry or an API push.
     */
    private ApiGameRankSource source;
    /**
     * Skill rating, when set.
     */
    private ApiGameRankSr sr;
    /**
     * Top 250 ladder position (1-250), when applicable.
     */
    private ApiGameRankTop250Rank top250Rank;
    /**
     * When the rank was last updated.
     */
    private String updatedAt;
    /**
     * Current win streak count.
     */
    private Integer winstreak;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiGameRank}
     */
    @jakarta.annotation.Nonnull
    public static ApiGameRank createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiGameRank();
    }
    /**
     * Gets the createdAt property value. When the rank was first recorded.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCreatedAt() {
        return this.createdAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(10);
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getStringValue()); });
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isTop250", (n) -> { this.setIsTop250(n.getBooleanValue()); });
        deserializerMap.put("mode", (n) -> { this.setMode(n.getStringValue()); });
        deserializerMap.put("source", (n) -> { this.setSource(n.getEnumValue(ApiGameRankSource::forValue)); });
        deserializerMap.put("sr", (n) -> { this.setSr(n.getObjectValue(ApiGameRankSr::createFromDiscriminatorValue)); });
        deserializerMap.put("top250Rank", (n) -> { this.setTop250Rank(n.getObjectValue(ApiGameRankTop250Rank::createFromDiscriminatorValue)); });
        deserializerMap.put("updatedAt", (n) -> { this.setUpdatedAt(n.getStringValue()); });
        deserializerMap.put("winstreak", (n) -> { this.setWinstreak(n.getIntegerValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gameId property value. Game definition ID this rank belongs to.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameId() {
        return this.gameId;
    }
    /**
     * Gets the id property value. Game rank row ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the isTop250 property value. Whether the player is in the Top 250 ladder.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsTop250() {
        return this.isTop250;
    }
    /**
     * Gets the mode property value. Game mode / playlist the rank is tracked for.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getMode() {
        return this.mode;
    }
    /**
     * Gets the source property value. Origin of the rank: manual entry or an API push.
     * @return a {@link ApiGameRankSource}
     */
    @jakarta.annotation.Nullable
    public ApiGameRankSource getSource() {
        return this.source;
    }
    /**
     * Gets the sr property value. Skill rating, when set.
     * @return a {@link ApiGameRankSr}
     */
    @jakarta.annotation.Nullable
    public ApiGameRankSr getSr() {
        return this.sr;
    }
    /**
     * Gets the top250Rank property value. Top 250 ladder position (1-250), when applicable.
     * @return a {@link ApiGameRankTop250Rank}
     */
    @jakarta.annotation.Nullable
    public ApiGameRankTop250Rank getTop250Rank() {
        return this.top250Rank;
    }
    /**
     * Gets the updatedAt property value. When the rank was last updated.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUpdatedAt() {
        return this.updatedAt;
    }
    /**
     * Gets the winstreak property value. Current win streak count.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getWinstreak() {
        return this.winstreak;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("createdAt", this.getCreatedAt());
        writer.writeStringValue("gameId", this.getGameId());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isTop250", this.getIsTop250());
        writer.writeStringValue("mode", this.getMode());
        writer.writeEnumValue("source", this.getSource());
        writer.writeObjectValue("sr", this.getSr());
        writer.writeObjectValue("top250Rank", this.getTop250Rank());
        writer.writeStringValue("updatedAt", this.getUpdatedAt());
        writer.writeIntegerValue("winstreak", this.getWinstreak());
    }
    /**
     * Sets the createdAt property value. When the rank was first recorded.
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final String value) {
        this.createdAt = value;
    }
    /**
     * Sets the gameId property value. Game definition ID this rank belongs to.
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final String value) {
        this.gameId = value;
    }
    /**
     * Sets the id property value. Game rank row ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the isTop250 property value. Whether the player is in the Top 250 ladder.
     * @param value Value to set for the isTop250 property.
     */
    public void setIsTop250(@jakarta.annotation.Nullable final Boolean value) {
        this.isTop250 = value;
    }
    /**
     * Sets the mode property value. Game mode / playlist the rank is tracked for.
     * @param value Value to set for the mode property.
     */
    public void setMode(@jakarta.annotation.Nullable final String value) {
        this.mode = value;
    }
    /**
     * Sets the source property value. Origin of the rank: manual entry or an API push.
     * @param value Value to set for the source property.
     */
    public void setSource(@jakarta.annotation.Nullable final ApiGameRankSource value) {
        this.source = value;
    }
    /**
     * Sets the sr property value. Skill rating, when set.
     * @param value Value to set for the sr property.
     */
    public void setSr(@jakarta.annotation.Nullable final ApiGameRankSr value) {
        this.sr = value;
    }
    /**
     * Sets the top250Rank property value. Top 250 ladder position (1-250), when applicable.
     * @param value Value to set for the top250Rank property.
     */
    public void setTop250Rank(@jakarta.annotation.Nullable final ApiGameRankTop250Rank value) {
        this.top250Rank = value;
    }
    /**
     * Sets the updatedAt property value. When the rank was last updated.
     * @param value Value to set for the updatedAt property.
     */
    public void setUpdatedAt(@jakarta.annotation.Nullable final String value) {
        this.updatedAt = value;
    }
    /**
     * Sets the winstreak property value. Current win streak count.
     * @param value Value to set for the winstreak property.
     */
    public void setWinstreak(@jakarta.annotation.Nullable final Integer value) {
        this.winstreak = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiGameRankSrMember1}, {@link Double}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGameRankSr implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGameRankSrMember1}
         */
        private ApiGameRankSrMember1 apiGameRankSrMember1;
        /**
         * Composed type representation for type {@link Double}
         */
        private Double doubleEscaped;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGameRankSr}
         */
        @jakarta.annotation.Nonnull
        public static ApiGameRankSr createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGameRankSr result = new ApiGameRankSr();
            if (parseNode.getDoubleValue() != null) {
                result.setDouble(parseNode.getDoubleValue());
            } else {
                result.setApiGameRankSrMember1(new ApiGameRankSrMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGameRank_srMember1 property value. Composed type representation for type {@link ApiGameRankSrMember1}
         * @return a {@link ApiGameRankSrMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGameRankSrMember1 getApiGameRankSrMember1() {
            return this.apiGameRankSrMember1;
        }
        /**
         * Gets the double property value. Composed type representation for type {@link Double}
         * @return a {@link Double}
         */
        @jakarta.annotation.Nullable
        public Double getDouble() {
            return this.doubleEscaped;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiGameRankSrMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGameRankSrMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getDouble() != null) {
                writer.writeDoubleValue(null, this.getDouble());
            } else {
                writer.writeObjectValue(null, this.getApiGameRankSrMember1());
            }
        }
        /**
         * Sets the ApiGameRank_srMember1 property value. Composed type representation for type {@link ApiGameRankSrMember1}
         * @param value Value to set for the ApiGameRank_srMember1 property.
         */
        public void setApiGameRankSrMember1(@jakarta.annotation.Nullable final ApiGameRankSrMember1 value) {
            this.apiGameRankSrMember1 = value;
        }
        /**
         * Sets the double property value. Composed type representation for type {@link Double}
         * @param value Value to set for the double property.
         */
        public void setDouble(@jakarta.annotation.Nullable final Double value) {
            this.doubleEscaped = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link ApiGameRankTop250RankMember1}, {@link Integer}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiGameRankTop250Rank implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiGameRankTop250RankMember1}
         */
        private ApiGameRankTop250RankMember1 apiGameRankTop250RankMember1;
        /**
         * Composed type representation for type {@link Integer}
         */
        private Integer integer;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiGameRankTop250Rank}
         */
        @jakarta.annotation.Nonnull
        public static ApiGameRankTop250Rank createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiGameRankTop250Rank result = new ApiGameRankTop250Rank();
            if (parseNode.getIntegerValue() != null) {
                result.setInteger(parseNode.getIntegerValue());
            } else {
                result.setApiGameRankTop250RankMember1(new ApiGameRankTop250RankMember1());
            }
            return result;
        }
        /**
         * Gets the ApiGameRank_top250RankMember1 property value. Composed type representation for type {@link ApiGameRankTop250RankMember1}
         * @return a {@link ApiGameRankTop250RankMember1}
         */
        @jakarta.annotation.Nullable
        public ApiGameRankTop250RankMember1 getApiGameRankTop250RankMember1() {
            return this.apiGameRankTop250RankMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiGameRankTop250RankMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiGameRankTop250RankMember1());
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
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getInteger() != null) {
                writer.writeIntegerValue(null, this.getInteger());
            } else {
                writer.writeObjectValue(null, this.getApiGameRankTop250RankMember1());
            }
        }
        /**
         * Sets the ApiGameRank_top250RankMember1 property value. Composed type representation for type {@link ApiGameRankTop250RankMember1}
         * @param value Value to set for the ApiGameRank_top250RankMember1 property.
         */
        public void setApiGameRankTop250RankMember1(@jakarta.annotation.Nullable final ApiGameRankTop250RankMember1 value) {
            this.apiGameRankTop250RankMember1 = value;
        }
        /**
         * Sets the integer property value. Composed type representation for type {@link Integer}
         * @param value Value to set for the integer property.
         */
        public void setInteger(@jakarta.annotation.Nullable final Integer value) {
            this.integer = value;
        }
    }
}
