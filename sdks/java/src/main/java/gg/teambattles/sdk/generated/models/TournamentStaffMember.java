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
 * One tournament staff assignment.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentStaffMember implements Parsable {
    /**
     * Avatar image URL.
     */
    private TournamentStaffMemberAvatarUrl avatarUrl;
    /**
     * Time the row was added (epoch milliseconds).
     */
    private Double createdAt;
    /**
     * Staff row ID.
     */
    private String id;
    /**
     * Display name.
     */
    private String name;
    /**
     * Tournament staff role.
     */
    private TournamentStaffRole role;
    /**
     * Staff member&apos;s user ID.
     */
    private String userId;
    /**
     * Username.
     */
    private String username;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentStaffMember}
     */
    @jakarta.annotation.Nonnull
    public static TournamentStaffMember createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentStaffMember();
    }
    /**
     * Gets the avatarUrl property value. Avatar image URL.
     * @return a {@link TournamentStaffMemberAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public TournamentStaffMemberAvatarUrl getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * Gets the createdAt property value. Time the row was added (epoch milliseconds).
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(7);
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getObjectValue(TournamentStaffMemberAvatarUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getDoubleValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("role", (n) -> { this.setRole(n.getEnumValue(TournamentStaffRole::forValue)); });
        deserializerMap.put("userId", (n) -> { this.setUserId(n.getStringValue()); });
        deserializerMap.put("username", (n) -> { this.setUsername(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Staff row ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the name property value. Display name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the role property value. Tournament staff role.
     * @return a {@link TournamentStaffRole}
     */
    @jakarta.annotation.Nullable
    public TournamentStaffRole getRole() {
        return this.role;
    }
    /**
     * Gets the userId property value. Staff member&apos;s user ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUserId() {
        return this.userId;
    }
    /**
     * Gets the username property value. Username.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUsername() {
        return this.username;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("avatarUrl", this.getAvatarUrl());
        writer.writeDoubleValue("createdAt", this.getCreatedAt());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("name", this.getName());
        writer.writeEnumValue("role", this.getRole());
        writer.writeStringValue("userId", this.getUserId());
        writer.writeStringValue("username", this.getUsername());
    }
    /**
     * Sets the avatarUrl property value. Avatar image URL.
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final TournamentStaffMemberAvatarUrl value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the createdAt property value. Time the row was added (epoch milliseconds).
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final Double value) {
        this.createdAt = value;
    }
    /**
     * Sets the id property value. Staff row ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the name property value. Display name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the role property value. Tournament staff role.
     * @param value Value to set for the role property.
     */
    public void setRole(@jakarta.annotation.Nullable final TournamentStaffRole value) {
        this.role = value;
    }
    /**
     * Sets the userId property value. Staff member&apos;s user ID.
     * @param value Value to set for the userId property.
     */
    public void setUserId(@jakarta.annotation.Nullable final String value) {
        this.userId = value;
    }
    /**
     * Sets the username property value. Username.
     * @param value Value to set for the username property.
     */
    public void setUsername(@jakarta.annotation.Nullable final String value) {
        this.username = value;
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TournamentStaffMemberAvatarUrlMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TournamentStaffMemberAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TournamentStaffMemberAvatarUrlMember1}
         */
        private TournamentStaffMemberAvatarUrlMember1 tournamentStaffMemberAvatarUrlMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TournamentStaffMemberAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static TournamentStaffMemberAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TournamentStaffMemberAvatarUrl result = new TournamentStaffMemberAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTournamentStaffMemberAvatarUrlMember1(new TournamentStaffMemberAvatarUrlMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTournamentStaffMemberAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTournamentStaffMemberAvatarUrlMember1());
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
         * Gets the TournamentStaffMember_avatarUrlMember1 property value. Composed type representation for type {@link TournamentStaffMemberAvatarUrlMember1}
         * @return a {@link TournamentStaffMemberAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public TournamentStaffMemberAvatarUrlMember1 getTournamentStaffMemberAvatarUrlMember1() {
            return this.tournamentStaffMemberAvatarUrlMember1;
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
                writer.writeObjectValue(null, this.getTournamentStaffMemberAvatarUrlMember1());
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
         * Sets the TournamentStaffMember_avatarUrlMember1 property value. Composed type representation for type {@link TournamentStaffMemberAvatarUrlMember1}
         * @param value Value to set for the TournamentStaffMember_avatarUrlMember1 property.
         */
        public void setTournamentStaffMemberAvatarUrlMember1(@jakarta.annotation.Nullable final TournamentStaffMemberAvatarUrlMember1 value) {
            this.tournamentStaffMemberAvatarUrlMember1 = value;
        }
    }
}
