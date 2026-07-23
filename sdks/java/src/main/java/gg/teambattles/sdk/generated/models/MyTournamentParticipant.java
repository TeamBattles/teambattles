package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * One of the caller&apos;s teams entered in this tournament.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MyTournamentParticipant implements Parsable {
    /**
     * Whether the caller may act on this entry - withdraw, check in, or edit its roster. False for a team the caller is an ordinary member of, which still appears here so a client can show it without offering actions that would 403.
     */
    private Boolean canManage;
    /**
     * Check-in time (epoch milliseconds). Absent until the team checks in.
     */
    private Double checkedInAt;
    /**
     * Placement persisted at finalization. Present only once the tournament ends.
     */
    private Integer finalPlacement;
    /**
     * Participant ID. Required by the withdraw and check-in endpoints, and by the organizer roster endpoints.
     */
    private String participantId;
    /**
     * Entry time (epoch milliseconds).
     */
    private Double registeredAt;
    /**
     * Assigned seed, once seeding has run.
     */
    private Integer seed;
    /**
     * State of a team&apos;s entry. PENDING is an unreviewed application; REMOVED and DISQUALIFIED are organizer actions, WITHDRAWN is the team&apos;s own.
     */
    private TournamentParticipantStatus status;
    /**
     * Team avatar URL.
     */
    private String teamAvatarUrl;
    /**
     * Team ID.
     */
    private String teamId;
    /**
     * Team display name.
     */
    private String teamName;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MyTournamentParticipant}
     */
    @jakarta.annotation.Nonnull
    public static MyTournamentParticipant createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MyTournamentParticipant();
    }
    /**
     * Gets the canManage property value. Whether the caller may act on this entry - withdraw, check in, or edit its roster. False for a team the caller is an ordinary member of, which still appears here so a client can show it without offering actions that would 403.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getCanManage() {
        return this.canManage;
    }
    /**
     * Gets the checkedInAt property value. Check-in time (epoch milliseconds). Absent until the team checks in.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getCheckedInAt() {
        return this.checkedInAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(10);
        deserializerMap.put("canManage", (n) -> { this.setCanManage(n.getBooleanValue()); });
        deserializerMap.put("checkedInAt", (n) -> { this.setCheckedInAt(n.getDoubleValue()); });
        deserializerMap.put("finalPlacement", (n) -> { this.setFinalPlacement(n.getIntegerValue()); });
        deserializerMap.put("participantId", (n) -> { this.setParticipantId(n.getStringValue()); });
        deserializerMap.put("registeredAt", (n) -> { this.setRegisteredAt(n.getDoubleValue()); });
        deserializerMap.put("seed", (n) -> { this.setSeed(n.getIntegerValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(TournamentParticipantStatus::forValue)); });
        deserializerMap.put("teamAvatarUrl", (n) -> { this.setTeamAvatarUrl(n.getStringValue()); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        deserializerMap.put("teamName", (n) -> { this.setTeamName(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the finalPlacement property value. Placement persisted at finalization. Present only once the tournament ends.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getFinalPlacement() {
        return this.finalPlacement;
    }
    /**
     * Gets the participantId property value. Participant ID. Required by the withdraw and check-in endpoints, and by the organizer roster endpoints.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getParticipantId() {
        return this.participantId;
    }
    /**
     * Gets the registeredAt property value. Entry time (epoch milliseconds).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getRegisteredAt() {
        return this.registeredAt;
    }
    /**
     * Gets the seed property value. Assigned seed, once seeding has run.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getSeed() {
        return this.seed;
    }
    /**
     * Gets the status property value. State of a team&apos;s entry. PENDING is an unreviewed application; REMOVED and DISQUALIFIED are organizer actions, WITHDRAWN is the team&apos;s own.
     * @return a {@link TournamentParticipantStatus}
     */
    @jakarta.annotation.Nullable
    public TournamentParticipantStatus getStatus() {
        return this.status;
    }
    /**
     * Gets the teamAvatarUrl property value. Team avatar URL.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamAvatarUrl() {
        return this.teamAvatarUrl;
    }
    /**
     * Gets the teamId property value. Team ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamId() {
        return this.teamId;
    }
    /**
     * Gets the teamName property value. Team display name.
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
        writer.writeBooleanValue("canManage", this.getCanManage());
        writer.writeDoubleValue("checkedInAt", this.getCheckedInAt());
        writer.writeIntegerValue("finalPlacement", this.getFinalPlacement());
        writer.writeStringValue("participantId", this.getParticipantId());
        writer.writeDoubleValue("registeredAt", this.getRegisteredAt());
        writer.writeIntegerValue("seed", this.getSeed());
        writer.writeEnumValue("status", this.getStatus());
        writer.writeStringValue("teamAvatarUrl", this.getTeamAvatarUrl());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeStringValue("teamName", this.getTeamName());
    }
    /**
     * Sets the canManage property value. Whether the caller may act on this entry - withdraw, check in, or edit its roster. False for a team the caller is an ordinary member of, which still appears here so a client can show it without offering actions that would 403.
     * @param value Value to set for the canManage property.
     */
    public void setCanManage(@jakarta.annotation.Nullable final Boolean value) {
        this.canManage = value;
    }
    /**
     * Sets the checkedInAt property value. Check-in time (epoch milliseconds). Absent until the team checks in.
     * @param value Value to set for the checkedInAt property.
     */
    public void setCheckedInAt(@jakarta.annotation.Nullable final Double value) {
        this.checkedInAt = value;
    }
    /**
     * Sets the finalPlacement property value. Placement persisted at finalization. Present only once the tournament ends.
     * @param value Value to set for the finalPlacement property.
     */
    public void setFinalPlacement(@jakarta.annotation.Nullable final Integer value) {
        this.finalPlacement = value;
    }
    /**
     * Sets the participantId property value. Participant ID. Required by the withdraw and check-in endpoints, and by the organizer roster endpoints.
     * @param value Value to set for the participantId property.
     */
    public void setParticipantId(@jakarta.annotation.Nullable final String value) {
        this.participantId = value;
    }
    /**
     * Sets the registeredAt property value. Entry time (epoch milliseconds).
     * @param value Value to set for the registeredAt property.
     */
    public void setRegisteredAt(@jakarta.annotation.Nullable final Double value) {
        this.registeredAt = value;
    }
    /**
     * Sets the seed property value. Assigned seed, once seeding has run.
     * @param value Value to set for the seed property.
     */
    public void setSeed(@jakarta.annotation.Nullable final Integer value) {
        this.seed = value;
    }
    /**
     * Sets the status property value. State of a team&apos;s entry. PENDING is an unreviewed application; REMOVED and DISQUALIFIED are organizer actions, WITHDRAWN is the team&apos;s own.
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final TournamentParticipantStatus value) {
        this.status = value;
    }
    /**
     * Sets the teamAvatarUrl property value. Team avatar URL.
     * @param value Value to set for the teamAvatarUrl property.
     */
    public void setTeamAvatarUrl(@jakarta.annotation.Nullable final String value) {
        this.teamAvatarUrl = value;
    }
    /**
     * Sets the teamId property value. Team ID.
     * @param value Value to set for the teamId property.
     */
    public void setTeamId(@jakarta.annotation.Nullable final String value) {
        this.teamId = value;
    }
    /**
     * Sets the teamName property value. Team display name.
     * @param value Value to set for the teamName property.
     */
    public void setTeamName(@jakarta.annotation.Nullable final String value) {
        this.teamName = value;
    }
}
