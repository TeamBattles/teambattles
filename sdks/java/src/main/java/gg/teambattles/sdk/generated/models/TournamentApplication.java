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
 * A team application awaiting organizer review.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentApplication implements Parsable {
    /**
     * User who submitted the application, when recorded.
     */
    private String appliedByUserId;
    /**
     * Participant ID of the pending application.
     */
    private String id;
    /**
     * Application time (epoch milliseconds).
     */
    private Double registeredAt;
    /**
     * Applying team&apos;s avatar URL.
     */
    private TournamentApplicationTeamAvatarUrl teamAvatarUrl;
    /**
     * Applying team&apos;s ID.
     */
    private String teamId;
    /**
     * Applying team&apos;s display name.
     */
    private String teamName;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentApplication}
     */
    @jakarta.annotation.Nonnull
    public static TournamentApplication createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentApplication();
    }
    /**
     * Gets the appliedByUserId property value. User who submitted the application, when recorded.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getAppliedByUserId() {
        return this.appliedByUserId;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(6);
        deserializerMap.put("appliedByUserId", (n) -> { this.setAppliedByUserId(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("registeredAt", (n) -> { this.setRegisteredAt(n.getDoubleValue()); });
        deserializerMap.put("teamAvatarUrl", (n) -> { this.setTeamAvatarUrl(n.getObjectValue(TournamentApplicationTeamAvatarUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        deserializerMap.put("teamName", (n) -> { this.setTeamName(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Participant ID of the pending application.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the registeredAt property value. Application time (epoch milliseconds).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getRegisteredAt() {
        return this.registeredAt;
    }
    /**
     * Gets the teamAvatarUrl property value. Applying team&apos;s avatar URL.
     * @return a {@link TournamentApplicationTeamAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public TournamentApplicationTeamAvatarUrl getTeamAvatarUrl() {
        return this.teamAvatarUrl;
    }
    /**
     * Gets the teamId property value. Applying team&apos;s ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamId() {
        return this.teamId;
    }
    /**
     * Gets the teamName property value. Applying team&apos;s display name.
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
        writer.writeStringValue("appliedByUserId", this.getAppliedByUserId());
        writer.writeStringValue("id", this.getId());
        writer.writeDoubleValue("registeredAt", this.getRegisteredAt());
        writer.writeObjectValue("teamAvatarUrl", this.getTeamAvatarUrl());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeStringValue("teamName", this.getTeamName());
    }
    /**
     * Sets the appliedByUserId property value. User who submitted the application, when recorded.
     * @param value Value to set for the appliedByUserId property.
     */
    public void setAppliedByUserId(@jakarta.annotation.Nullable final String value) {
        this.appliedByUserId = value;
    }
    /**
     * Sets the id property value. Participant ID of the pending application.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the registeredAt property value. Application time (epoch milliseconds).
     * @param value Value to set for the registeredAt property.
     */
    public void setRegisteredAt(@jakarta.annotation.Nullable final Double value) {
        this.registeredAt = value;
    }
    /**
     * Sets the teamAvatarUrl property value. Applying team&apos;s avatar URL.
     * @param value Value to set for the teamAvatarUrl property.
     */
    public void setTeamAvatarUrl(@jakarta.annotation.Nullable final TournamentApplicationTeamAvatarUrl value) {
        this.teamAvatarUrl = value;
    }
    /**
     * Sets the teamId property value. Applying team&apos;s ID.
     * @param value Value to set for the teamId property.
     */
    public void setTeamId(@jakarta.annotation.Nullable final String value) {
        this.teamId = value;
    }
    /**
     * Sets the teamName property value. Applying team&apos;s display name.
     * @param value Value to set for the teamName property.
     */
    public void setTeamName(@jakarta.annotation.Nullable final String value) {
        this.teamName = value;
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TournamentApplicationTeamAvatarUrlMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TournamentApplicationTeamAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TournamentApplicationTeamAvatarUrlMember1}
         */
        private TournamentApplicationTeamAvatarUrlMember1 tournamentApplicationTeamAvatarUrlMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TournamentApplicationTeamAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static TournamentApplicationTeamAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TournamentApplicationTeamAvatarUrl result = new TournamentApplicationTeamAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTournamentApplicationTeamAvatarUrlMember1(new TournamentApplicationTeamAvatarUrlMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTournamentApplicationTeamAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTournamentApplicationTeamAvatarUrlMember1());
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
         * Gets the TournamentApplication_teamAvatarUrlMember1 property value. Composed type representation for type {@link TournamentApplicationTeamAvatarUrlMember1}
         * @return a {@link TournamentApplicationTeamAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public TournamentApplicationTeamAvatarUrlMember1 getTournamentApplicationTeamAvatarUrlMember1() {
            return this.tournamentApplicationTeamAvatarUrlMember1;
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
                writer.writeObjectValue(null, this.getTournamentApplicationTeamAvatarUrlMember1());
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
         * Sets the TournamentApplication_teamAvatarUrlMember1 property value. Composed type representation for type {@link TournamentApplicationTeamAvatarUrlMember1}
         * @param value Value to set for the TournamentApplication_teamAvatarUrlMember1 property.
         */
        public void setTournamentApplicationTeamAvatarUrlMember1(@jakarta.annotation.Nullable final TournamentApplicationTeamAvatarUrlMember1 value) {
            this.tournamentApplicationTeamAvatarUrlMember1 = value;
        }
    }
}
