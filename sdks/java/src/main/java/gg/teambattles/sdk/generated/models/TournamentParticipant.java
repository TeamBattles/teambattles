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
 * A team entered in a tournament.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentParticipant implements Parsable {
    /**
     * Check-in timestamp (epoch milliseconds).
     */
    private Double checkedInAt;
    /**
     * Placement persisted at finalization. Present only once the tournament ends.
     */
    private Integer finalPlacement;
    /**
     * Participant ID.
     */
    private String id;
    /**
     * Tournament roster.
     */
    private java.util.List<TournamentRosterMember> roster;
    /**
     * Assigned seed, if seeding has run.
     */
    private Integer seed;
    /**
     * PENDING, APPROVED, DENIED, WITHDRAWN, or DISQUALIFIED.
     */
    private String status;
    /**
     * Team avatar URL.
     */
    private TournamentParticipantTeamAvatarUrl teamAvatarUrl;
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
     * @return a {@link TournamentParticipant}
     */
    @jakarta.annotation.Nonnull
    public static TournamentParticipant createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentParticipant();
    }
    /**
     * Gets the checkedInAt property value. Check-in timestamp (epoch milliseconds).
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(9);
        deserializerMap.put("checkedInAt", (n) -> { this.setCheckedInAt(n.getDoubleValue()); });
        deserializerMap.put("finalPlacement", (n) -> { this.setFinalPlacement(n.getIntegerValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("roster", (n) -> { this.setRoster(n.getCollectionOfObjectValues(TournamentRosterMember::createFromDiscriminatorValue)); });
        deserializerMap.put("seed", (n) -> { this.setSeed(n.getIntegerValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getStringValue()); });
        deserializerMap.put("teamAvatarUrl", (n) -> { this.setTeamAvatarUrl(n.getObjectValue(TournamentParticipantTeamAvatarUrl::createFromDiscriminatorValue)); });
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
     * Gets the id property value. Participant ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the roster property value. Tournament roster.
     * @return a {@link java.util.List<TournamentRosterMember>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TournamentRosterMember> getRoster() {
        return this.roster;
    }
    /**
     * Gets the seed property value. Assigned seed, if seeding has run.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getSeed() {
        return this.seed;
    }
    /**
     * Gets the status property value. PENDING, APPROVED, DENIED, WITHDRAWN, or DISQUALIFIED.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getStatus() {
        return this.status;
    }
    /**
     * Gets the teamAvatarUrl property value. Team avatar URL.
     * @return a {@link TournamentParticipantTeamAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public TournamentParticipantTeamAvatarUrl getTeamAvatarUrl() {
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
        writer.writeDoubleValue("checkedInAt", this.getCheckedInAt());
        writer.writeIntegerValue("finalPlacement", this.getFinalPlacement());
        writer.writeStringValue("id", this.getId());
        writer.writeCollectionOfObjectValues("roster", this.getRoster());
        writer.writeIntegerValue("seed", this.getSeed());
        writer.writeStringValue("status", this.getStatus());
        writer.writeObjectValue("teamAvatarUrl", this.getTeamAvatarUrl());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeStringValue("teamName", this.getTeamName());
    }
    /**
     * Sets the checkedInAt property value. Check-in timestamp (epoch milliseconds).
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
     * Sets the id property value. Participant ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the roster property value. Tournament roster.
     * @param value Value to set for the roster property.
     */
    public void setRoster(@jakarta.annotation.Nullable final java.util.List<TournamentRosterMember> value) {
        this.roster = value;
    }
    /**
     * Sets the seed property value. Assigned seed, if seeding has run.
     * @param value Value to set for the seed property.
     */
    public void setSeed(@jakarta.annotation.Nullable final Integer value) {
        this.seed = value;
    }
    /**
     * Sets the status property value. PENDING, APPROVED, DENIED, WITHDRAWN, or DISQUALIFIED.
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final String value) {
        this.status = value;
    }
    /**
     * Sets the teamAvatarUrl property value. Team avatar URL.
     * @param value Value to set for the teamAvatarUrl property.
     */
    public void setTeamAvatarUrl(@jakarta.annotation.Nullable final TournamentParticipantTeamAvatarUrl value) {
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
    /**
     * Composed type wrapper for classes {@link String}, {@link TournamentParticipantTeamAvatarUrlMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TournamentParticipantTeamAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TournamentParticipantTeamAvatarUrlMember1}
         */
        private TournamentParticipantTeamAvatarUrlMember1 tournamentParticipantTeamAvatarUrlMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TournamentParticipantTeamAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static TournamentParticipantTeamAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TournamentParticipantTeamAvatarUrl result = new TournamentParticipantTeamAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTournamentParticipantTeamAvatarUrlMember1(new TournamentParticipantTeamAvatarUrlMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTournamentParticipantTeamAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTournamentParticipantTeamAvatarUrlMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
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
         * Gets the TournamentParticipant_teamAvatarUrlMember1 property value. Composed type representation for type {@link TournamentParticipantTeamAvatarUrlMember1}
         * @return a {@link TournamentParticipantTeamAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public TournamentParticipantTeamAvatarUrlMember1 getTournamentParticipantTeamAvatarUrlMember1() {
            return this.tournamentParticipantTeamAvatarUrlMember1;
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
                writer.writeObjectValue(null, this.getTournamentParticipantTeamAvatarUrlMember1());
            }
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
        /**
         * Sets the TournamentParticipant_teamAvatarUrlMember1 property value. Composed type representation for type {@link TournamentParticipantTeamAvatarUrlMember1}
         * @param value Value to set for the TournamentParticipant_teamAvatarUrlMember1 property.
         */
        public void setTournamentParticipantTeamAvatarUrlMember1(@jakarta.annotation.Nullable final TournamentParticipantTeamAvatarUrlMember1 value) {
            this.tournamentParticipantTeamAvatarUrlMember1 = value;
        }
    }
}
