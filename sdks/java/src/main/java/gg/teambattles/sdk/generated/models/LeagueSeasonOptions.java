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
 * Season selector options.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeagueSeasonOptions implements Parsable {
    /**
     * Recommended default option.
     */
    private LeagueSeasonOptionsDefaultSeasonId defaultSeasonId;
    /**
     * Season selector options for a league game.
     */
    private java.util.List<LeagueSeasonOptionsSeasons> seasons;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeagueSeasonOptions}
     */
    @jakarta.annotation.Nonnull
    public static LeagueSeasonOptions createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeagueSeasonOptions();
    }
    /**
     * Gets the defaultSeasonId property value. Recommended default option.
     * @return a {@link LeagueSeasonOptionsDefaultSeasonId}
     */
    @jakarta.annotation.Nullable
    public LeagueSeasonOptionsDefaultSeasonId getDefaultSeasonId() {
        return this.defaultSeasonId;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("defaultSeasonId", (n) -> { this.setDefaultSeasonId(n.getObjectValue(LeagueSeasonOptionsDefaultSeasonId::createFromDiscriminatorValue)); });
        deserializerMap.put("seasons", (n) -> { this.setSeasons(n.getCollectionOfObjectValues(LeagueSeasonOptionsSeasons::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the seasons property value. Season selector options for a league game.
     * @return a {@link java.util.List<LeagueSeasonOptionsSeasons>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<LeagueSeasonOptionsSeasons> getSeasons() {
        return this.seasons;
    }
    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
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
        writer.writeObjectValue("defaultSeasonId", this.getDefaultSeasonId());
        writer.writeCollectionOfObjectValues("seasons", this.getSeasons());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the defaultSeasonId property value. Recommended default option.
     * @param value Value to set for the defaultSeasonId property.
     */
    public void setDefaultSeasonId(@jakarta.annotation.Nullable final LeagueSeasonOptionsDefaultSeasonId value) {
        this.defaultSeasonId = value;
    }
    /**
     * Sets the seasons property value. Season selector options for a league game.
     * @param value Value to set for the seasons property.
     */
    public void setSeasons(@jakarta.annotation.Nullable final java.util.List<LeagueSeasonOptionsSeasons> value) {
        this.seasons = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Composed type wrapper for classes {@link LeagueSeasonOptionsDefaultSeasonIdMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class LeagueSeasonOptionsDefaultSeasonId implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link LeagueSeasonOptionsDefaultSeasonIdMember1}
         */
        private LeagueSeasonOptionsDefaultSeasonIdMember1 leagueSeasonOptionsDefaultSeasonIdMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link LeagueSeasonOptionsDefaultSeasonId}
         */
        @jakarta.annotation.Nonnull
        public static LeagueSeasonOptionsDefaultSeasonId createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final LeagueSeasonOptionsDefaultSeasonId result = new LeagueSeasonOptionsDefaultSeasonId();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setLeagueSeasonOptionsDefaultSeasonIdMember1(new LeagueSeasonOptionsDefaultSeasonIdMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getLeagueSeasonOptionsDefaultSeasonIdMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getLeagueSeasonOptionsDefaultSeasonIdMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the LeagueSeasonOptions_defaultSeasonIdMember1 property value. Composed type representation for type {@link LeagueSeasonOptionsDefaultSeasonIdMember1}
         * @return a {@link LeagueSeasonOptionsDefaultSeasonIdMember1}
         */
        @jakarta.annotation.Nullable
        public LeagueSeasonOptionsDefaultSeasonIdMember1 getLeagueSeasonOptionsDefaultSeasonIdMember1() {
            return this.leagueSeasonOptionsDefaultSeasonIdMember1;
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
                writer.writeObjectValue(null, this.getLeagueSeasonOptionsDefaultSeasonIdMember1());
            }
        }
        /**
         * Sets the LeagueSeasonOptions_defaultSeasonIdMember1 property value. Composed type representation for type {@link LeagueSeasonOptionsDefaultSeasonIdMember1}
         * @param value Value to set for the LeagueSeasonOptions_defaultSeasonIdMember1 property.
         */
        public void setLeagueSeasonOptionsDefaultSeasonIdMember1(@jakarta.annotation.Nullable final LeagueSeasonOptionsDefaultSeasonIdMember1 value) {
            this.leagueSeasonOptionsDefaultSeasonIdMember1 = value;
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
