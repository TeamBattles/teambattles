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
 * The league placement-points configuration now in effect.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentLeaguePointsResponse implements Parsable {
    /**
     * The leaguePointsEnabled property
     */
    private Boolean leaguePointsEnabled;
    /**
     * Number of rows in the stored curve, or null when no explicit curve is stored and the platform default applies.
     */
    private TournamentLeaguePointsResponsePlacementCount placementCount;
    /**
     * The success property
     */
    private Boolean success;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentLeaguePointsResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentLeaguePointsResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentLeaguePointsResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("leaguePointsEnabled", (n) -> { this.setLeaguePointsEnabled(n.getBooleanValue()); });
        deserializerMap.put("placementCount", (n) -> { this.setPlacementCount(n.getObjectValue(TournamentLeaguePointsResponsePlacementCount::createFromDiscriminatorValue)); });
        deserializerMap.put("success", (n) -> { this.setSuccess(n.getBooleanValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the leaguePointsEnabled property value. The leaguePointsEnabled property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getLeaguePointsEnabled() {
        return this.leaguePointsEnabled;
    }
    /**
     * Gets the placementCount property value. Number of rows in the stored curve, or null when no explicit curve is stored and the platform default applies.
     * @return a {@link TournamentLeaguePointsResponsePlacementCount}
     */
    @jakarta.annotation.Nullable
    public TournamentLeaguePointsResponsePlacementCount getPlacementCount() {
        return this.placementCount;
    }
    /**
     * Gets the success property value. The success property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getSuccess() {
        return this.success;
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
        writer.writeBooleanValue("leaguePointsEnabled", this.getLeaguePointsEnabled());
        writer.writeObjectValue("placementCount", this.getPlacementCount());
        writer.writeBooleanValue("success", this.getSuccess());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the leaguePointsEnabled property value. The leaguePointsEnabled property
     * @param value Value to set for the leaguePointsEnabled property.
     */
    public void setLeaguePointsEnabled(@jakarta.annotation.Nullable final Boolean value) {
        this.leaguePointsEnabled = value;
    }
    /**
     * Sets the placementCount property value. Number of rows in the stored curve, or null when no explicit curve is stored and the platform default applies.
     * @param value Value to set for the placementCount property.
     */
    public void setPlacementCount(@jakarta.annotation.Nullable final TournamentLeaguePointsResponsePlacementCount value) {
        this.placementCount = value;
    }
    /**
     * Sets the success property value. The success property
     * @param value Value to set for the success property.
     */
    public void setSuccess(@jakarta.annotation.Nullable final Boolean value) {
        this.success = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Composed type wrapper for classes {@link Integer}, {@link TournamentLeaguePointsResponsePlacementCountMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TournamentLeaguePointsResponsePlacementCount implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link Integer}
         */
        private Integer integer;
        /**
         * Composed type representation for type {@link TournamentLeaguePointsResponsePlacementCountMember1}
         */
        private TournamentLeaguePointsResponsePlacementCountMember1 tournamentLeaguePointsResponsePlacementCountMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TournamentLeaguePointsResponsePlacementCount}
         */
        @jakarta.annotation.Nonnull
        public static TournamentLeaguePointsResponsePlacementCount createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TournamentLeaguePointsResponsePlacementCount result = new TournamentLeaguePointsResponsePlacementCount();
            if (parseNode.getIntegerValue() != null) {
                result.setInteger(parseNode.getIntegerValue());
            } else {
                result.setTournamentLeaguePointsResponsePlacementCountMember1(new TournamentLeaguePointsResponsePlacementCountMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTournamentLeaguePointsResponsePlacementCountMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTournamentLeaguePointsResponsePlacementCountMember1());
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
         * Gets the TournamentLeaguePointsResponse_placementCountMember1 property value. Composed type representation for type {@link TournamentLeaguePointsResponsePlacementCountMember1}
         * @return a {@link TournamentLeaguePointsResponsePlacementCountMember1}
         */
        @jakarta.annotation.Nullable
        public TournamentLeaguePointsResponsePlacementCountMember1 getTournamentLeaguePointsResponsePlacementCountMember1() {
            return this.tournamentLeaguePointsResponsePlacementCountMember1;
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
                writer.writeObjectValue(null, this.getTournamentLeaguePointsResponsePlacementCountMember1());
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
         * Sets the TournamentLeaguePointsResponse_placementCountMember1 property value. Composed type representation for type {@link TournamentLeaguePointsResponsePlacementCountMember1}
         * @param value Value to set for the TournamentLeaguePointsResponse_placementCountMember1 property.
         */
        public void setTournamentLeaguePointsResponsePlacementCountMember1(@jakarta.annotation.Nullable final TournamentLeaguePointsResponsePlacementCountMember1 value) {
            this.tournamentLeaguePointsResponsePlacementCountMember1 = value;
        }
    }
}
