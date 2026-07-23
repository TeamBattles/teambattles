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
 * Round schedule payload.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentRoundScheduleRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Unix ms the round is scheduled to start, or null to clear the round&apos;s scheduled time. REQUIRED - there is no &apos;leave unchanged&apos; value, because omitting it in the underlying mutation clears the field, and a silent clear is not something an integrator should be able to trigger by forgetting a key.
     */
    private TournamentRoundScheduleRequestBodyStartsAt startsAt;
    /**
     * Instantiates a new {@link TournamentRoundScheduleRequestBody} and sets the default values.
     */
    public TournamentRoundScheduleRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentRoundScheduleRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static TournamentRoundScheduleRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentRoundScheduleRequestBody();
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
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(1);
        deserializerMap.put("startsAt", (n) -> { this.setStartsAt(n.getObjectValue(TournamentRoundScheduleRequestBodyStartsAt::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the startsAt property value. Unix ms the round is scheduled to start, or null to clear the round&apos;s scheduled time. REQUIRED - there is no &apos;leave unchanged&apos; value, because omitting it in the underlying mutation clears the field, and a silent clear is not something an integrator should be able to trigger by forgetting a key.
     * @return a {@link TournamentRoundScheduleRequestBodyStartsAt}
     */
    @jakarta.annotation.Nullable
    public TournamentRoundScheduleRequestBodyStartsAt getStartsAt() {
        return this.startsAt;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("startsAt", this.getStartsAt());
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
     * Sets the startsAt property value. Unix ms the round is scheduled to start, or null to clear the round&apos;s scheduled time. REQUIRED - there is no &apos;leave unchanged&apos; value, because omitting it in the underlying mutation clears the field, and a silent clear is not something an integrator should be able to trigger by forgetting a key.
     * @param value Value to set for the startsAt property.
     */
    public void setStartsAt(@jakarta.annotation.Nullable final TournamentRoundScheduleRequestBodyStartsAt value) {
        this.startsAt = value;
    }
    /**
     * Composed type wrapper for classes {@link Integer}, {@link TournamentRoundScheduleRequestBodyStartsAtMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TournamentRoundScheduleRequestBodyStartsAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link Integer}
         */
        private Integer integer;
        /**
         * Composed type representation for type {@link TournamentRoundScheduleRequestBodyStartsAtMember1}
         */
        private TournamentRoundScheduleRequestBodyStartsAtMember1 tournamentRoundScheduleRequestBodyStartsAtMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TournamentRoundScheduleRequestBodyStartsAt}
         */
        @jakarta.annotation.Nonnull
        public static TournamentRoundScheduleRequestBodyStartsAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TournamentRoundScheduleRequestBodyStartsAt result = new TournamentRoundScheduleRequestBodyStartsAt();
            if (parseNode.getIntegerValue() != null) {
                result.setInteger(parseNode.getIntegerValue());
            } else {
                result.setTournamentRoundScheduleRequestBodyStartsAtMember1(new TournamentRoundScheduleRequestBodyStartsAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTournamentRoundScheduleRequestBodyStartsAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTournamentRoundScheduleRequestBodyStartsAtMember1());
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
         * Gets the TournamentRoundScheduleRequestBody_startsAtMember1 property value. Composed type representation for type {@link TournamentRoundScheduleRequestBodyStartsAtMember1}
         * @return a {@link TournamentRoundScheduleRequestBodyStartsAtMember1}
         */
        @jakarta.annotation.Nullable
        public TournamentRoundScheduleRequestBodyStartsAtMember1 getTournamentRoundScheduleRequestBodyStartsAtMember1() {
            return this.tournamentRoundScheduleRequestBodyStartsAtMember1;
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
                writer.writeObjectValue(null, this.getTournamentRoundScheduleRequestBodyStartsAtMember1());
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
         * Sets the TournamentRoundScheduleRequestBody_startsAtMember1 property value. Composed type representation for type {@link TournamentRoundScheduleRequestBodyStartsAtMember1}
         * @param value Value to set for the TournamentRoundScheduleRequestBody_startsAtMember1 property.
         */
        public void setTournamentRoundScheduleRequestBodyStartsAtMember1(@jakarta.annotation.Nullable final TournamentRoundScheduleRequestBodyStartsAtMember1 value) {
            this.tournamentRoundScheduleRequestBodyStartsAtMember1 = value;
        }
    }
}
