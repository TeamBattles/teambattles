package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * A free-agent offer addressed to the caller, in every state.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MyTournamentOffer implements Parsable {
    /**
     * Offer time (epoch milliseconds).
     */
    private Double createdAt;
    /**
     * Optional note from the offering team.
     */
    private String message;
    /**
     * Offer ID. Required by the offer-respond and offer-revoke endpoints.
     */
    private String offerId;
    /**
     * The offering team&apos;s current entry status, or null if the participant row no longer resolves. Surfaced rather than filtered: the web drops offers whose participant is no longer APPROVED, so they simply vanish. Here a client can tell a dead offer from a live one - accepting a dead one only expires it.
     */
    private TournamentParticipantStatus offeringParticipantStatus;
    /**
     * Offering team&apos;s participant ID.
     */
    private String participantId;
    /**
     * State of a free-agent offer. EXPIRED is applied lazily, when the offer is next read or responded to, not by a scheduled sweep.
     */
    private TournamentFreeAgentOfferStatus status;
    /**
     * Offering team&apos;s avatar URL.
     */
    private String teamAvatarUrl;
    /**
     * Offering team&apos;s ID.
     */
    private String teamId;
    /**
     * Offering team&apos;s display name.
     */
    private String teamName;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MyTournamentOffer}
     */
    @jakarta.annotation.Nonnull
    public static MyTournamentOffer createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MyTournamentOffer();
    }
    /**
     * Gets the createdAt property value. Offer time (epoch milliseconds).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getCreatedAt() {
        return this.createdAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(9);
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getDoubleValue()); });
        deserializerMap.put("message", (n) -> { this.setMessage(n.getStringValue()); });
        deserializerMap.put("offerId", (n) -> { this.setOfferId(n.getStringValue()); });
        deserializerMap.put("offeringParticipantStatus", (n) -> { this.setOfferingParticipantStatus(n.getEnumValue(TournamentParticipantStatus::forValue)); });
        deserializerMap.put("participantId", (n) -> { this.setParticipantId(n.getStringValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(TournamentFreeAgentOfferStatus::forValue)); });
        deserializerMap.put("teamAvatarUrl", (n) -> { this.setTeamAvatarUrl(n.getStringValue()); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        deserializerMap.put("teamName", (n) -> { this.setTeamName(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the message property value. Optional note from the offering team.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getMessage() {
        return this.message;
    }
    /**
     * Gets the offerId property value. Offer ID. Required by the offer-respond and offer-revoke endpoints.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getOfferId() {
        return this.offerId;
    }
    /**
     * Gets the offeringParticipantStatus property value. The offering team&apos;s current entry status, or null if the participant row no longer resolves. Surfaced rather than filtered: the web drops offers whose participant is no longer APPROVED, so they simply vanish. Here a client can tell a dead offer from a live one - accepting a dead one only expires it.
     * @return a {@link TournamentParticipantStatus}
     */
    @jakarta.annotation.Nullable
    public TournamentParticipantStatus getOfferingParticipantStatus() {
        return this.offeringParticipantStatus;
    }
    /**
     * Gets the participantId property value. Offering team&apos;s participant ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getParticipantId() {
        return this.participantId;
    }
    /**
     * Gets the status property value. State of a free-agent offer. EXPIRED is applied lazily, when the offer is next read or responded to, not by a scheduled sweep.
     * @return a {@link TournamentFreeAgentOfferStatus}
     */
    @jakarta.annotation.Nullable
    public TournamentFreeAgentOfferStatus getStatus() {
        return this.status;
    }
    /**
     * Gets the teamAvatarUrl property value. Offering team&apos;s avatar URL.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamAvatarUrl() {
        return this.teamAvatarUrl;
    }
    /**
     * Gets the teamId property value. Offering team&apos;s ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamId() {
        return this.teamId;
    }
    /**
     * Gets the teamName property value. Offering team&apos;s display name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamName() {
        return this.teamName;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeDoubleValue("createdAt", this.getCreatedAt());
        writer.writeStringValue("message", this.getMessage());
        writer.writeStringValue("offerId", this.getOfferId());
        writer.writeEnumValue("offeringParticipantStatus", this.getOfferingParticipantStatus());
        writer.writeStringValue("participantId", this.getParticipantId());
        writer.writeEnumValue("status", this.getStatus());
        writer.writeStringValue("teamAvatarUrl", this.getTeamAvatarUrl());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeStringValue("teamName", this.getTeamName());
    }
    /**
     * Sets the createdAt property value. Offer time (epoch milliseconds).
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final Double value) {
        this.createdAt = value;
    }
    /**
     * Sets the message property value. Optional note from the offering team.
     * @param value Value to set for the message property.
     */
    public void setMessage(@jakarta.annotation.Nullable final String value) {
        this.message = value;
    }
    /**
     * Sets the offerId property value. Offer ID. Required by the offer-respond and offer-revoke endpoints.
     * @param value Value to set for the offerId property.
     */
    public void setOfferId(@jakarta.annotation.Nullable final String value) {
        this.offerId = value;
    }
    /**
     * Sets the offeringParticipantStatus property value. The offering team&apos;s current entry status, or null if the participant row no longer resolves. Surfaced rather than filtered: the web drops offers whose participant is no longer APPROVED, so they simply vanish. Here a client can tell a dead offer from a live one - accepting a dead one only expires it.
     * @param value Value to set for the offeringParticipantStatus property.
     */
    public void setOfferingParticipantStatus(@jakarta.annotation.Nullable final TournamentParticipantStatus value) {
        this.offeringParticipantStatus = value;
    }
    /**
     * Sets the participantId property value. Offering team&apos;s participant ID.
     * @param value Value to set for the participantId property.
     */
    public void setParticipantId(@jakarta.annotation.Nullable final String value) {
        this.participantId = value;
    }
    /**
     * Sets the status property value. State of a free-agent offer. EXPIRED is applied lazily, when the offer is next read or responded to, not by a scheduled sweep.
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final TournamentFreeAgentOfferStatus value) {
        this.status = value;
    }
    /**
     * Sets the teamAvatarUrl property value. Offering team&apos;s avatar URL.
     * @param value Value to set for the teamAvatarUrl property.
     */
    public void setTeamAvatarUrl(@jakarta.annotation.Nullable final String value) {
        this.teamAvatarUrl = value;
    }
    /**
     * Sets the teamId property value. Offering team&apos;s ID.
     * @param value Value to set for the teamId property.
     */
    public void setTeamId(@jakarta.annotation.Nullable final String value) {
        this.teamId = value;
    }
    /**
     * Sets the teamName property value. Offering team&apos;s display name.
     * @param value Value to set for the teamName property.
     */
    public void setTeamName(@jakarta.annotation.Nullable final String value) {
        this.teamName = value;
    }
}
