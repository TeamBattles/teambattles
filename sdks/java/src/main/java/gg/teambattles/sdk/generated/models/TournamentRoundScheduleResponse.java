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
 * Result of scheduling a tournament round.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentRoundScheduleResponse implements Parsable {
    /**
     * The roundId property
     */
    private String roundId;
    /**
     * The value now stored on the round.
     */
    private TournamentRoundScheduleResponseStartsAt startsAt;
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
     * @return a {@link TournamentRoundScheduleResponse}
     */
    @jakarta.annotation.Nonnull
    public static TournamentRoundScheduleResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentRoundScheduleResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("roundId", (n) -> { this.setRoundId(n.getStringValue()); });
        deserializerMap.put("startsAt", (n) -> { this.setStartsAt(n.getObjectValue(TournamentRoundScheduleResponseStartsAt::createFromDiscriminatorValue)); });
        deserializerMap.put("success", (n) -> { this.setSuccess(n.getBooleanValue()); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the roundId property value. The roundId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getRoundId() {
        return this.roundId;
    }
    /**
     * Gets the startsAt property value. The value now stored on the round.
     * @return a {@link TournamentRoundScheduleResponseStartsAt}
     */
    @jakarta.annotation.Nullable
    public TournamentRoundScheduleResponseStartsAt getStartsAt() {
        return this.startsAt;
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
        writer.writeStringValue("roundId", this.getRoundId());
        writer.writeObjectValue("startsAt", this.getStartsAt());
        writer.writeBooleanValue("success", this.getSuccess());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the roundId property value. The roundId property
     * @param value Value to set for the roundId property.
     */
    public void setRoundId(@jakarta.annotation.Nullable final String value) {
        this.roundId = value;
    }
    /**
     * Sets the startsAt property value. The value now stored on the round.
     * @param value Value to set for the startsAt property.
     */
    public void setStartsAt(@jakarta.annotation.Nullable final TournamentRoundScheduleResponseStartsAt value) {
        this.startsAt = value;
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
     * Composed type wrapper for classes {@link Integer}, {@link TournamentRoundScheduleResponseStartsAtMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TournamentRoundScheduleResponseStartsAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link Integer}
         */
        private Integer integer;
        /**
         * Composed type representation for type {@link TournamentRoundScheduleResponseStartsAtMember1}
         */
        private TournamentRoundScheduleResponseStartsAtMember1 tournamentRoundScheduleResponseStartsAtMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TournamentRoundScheduleResponseStartsAt}
         */
        @jakarta.annotation.Nonnull
        public static TournamentRoundScheduleResponseStartsAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TournamentRoundScheduleResponseStartsAt result = new TournamentRoundScheduleResponseStartsAt();
            if (parseNode.getIntegerValue() != null) {
                result.setInteger(parseNode.getIntegerValue());
            } else {
                result.setTournamentRoundScheduleResponseStartsAtMember1(new TournamentRoundScheduleResponseStartsAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTournamentRoundScheduleResponseStartsAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTournamentRoundScheduleResponseStartsAtMember1());
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
         * Gets the TournamentRoundScheduleResponse_startsAtMember1 property value. Composed type representation for type {@link TournamentRoundScheduleResponseStartsAtMember1}
         * @return a {@link TournamentRoundScheduleResponseStartsAtMember1}
         */
        @jakarta.annotation.Nullable
        public TournamentRoundScheduleResponseStartsAtMember1 getTournamentRoundScheduleResponseStartsAtMember1() {
            return this.tournamentRoundScheduleResponseStartsAtMember1;
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
                writer.writeObjectValue(null, this.getTournamentRoundScheduleResponseStartsAtMember1());
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
         * Sets the TournamentRoundScheduleResponse_startsAtMember1 property value. Composed type representation for type {@link TournamentRoundScheduleResponseStartsAtMember1}
         * @param value Value to set for the TournamentRoundScheduleResponse_startsAtMember1 property.
         */
        public void setTournamentRoundScheduleResponseStartsAtMember1(@jakarta.annotation.Nullable final TournamentRoundScheduleResponseStartsAtMember1 value) {
            this.tournamentRoundScheduleResponseStartsAtMember1 = value;
        }
    }
}
