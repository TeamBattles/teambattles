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
 * API-safe team affiliation row on a user profile.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiUserTeamMembership implements Parsable {
    /**
     * The avatarUrl property
     */
    private String avatarUrl;
    /**
     * Team ID.
     */
    private String id;
    /**
     * The joinedAt property
     */
    private ApiUserTeamMembershipJoinedAt joinedAt;
    /**
     * Team name.
     */
    private String name;
    /**
     * The organization property
     */
    private ApiOrganizationSummary organization;
    /**
     * The role property
     */
    private String role;
    /**
     * The slug property
     */
    private String slug;
    /**
     * The tag property
     */
    private String tag;
    /**
     * Public profile visibility setting.
     */
    private ProfileVisibility visibility;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiUserTeamMembership}
     */
    @jakarta.annotation.Nonnull
    public static ApiUserTeamMembership createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiUserTeamMembership();
    }
    /**
     * Gets the avatarUrl property value. The avatarUrl property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(9);
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("joinedAt", (n) -> { this.setJoinedAt(n.getObjectValue(ApiUserTeamMembershipJoinedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("organization", (n) -> { this.setOrganization(n.getObjectValue(ApiOrganizationSummary::createFromDiscriminatorValue)); });
        deserializerMap.put("role", (n) -> { this.setRole(n.getStringValue()); });
        deserializerMap.put("slug", (n) -> { this.setSlug(n.getStringValue()); });
        deserializerMap.put("tag", (n) -> { this.setTag(n.getStringValue()); });
        deserializerMap.put("visibility", (n) -> { this.setVisibility(n.getEnumValue(ProfileVisibility::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Team ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the joinedAt property value. The joinedAt property
     * @return a {@link ApiUserTeamMembershipJoinedAt}
     */
    @jakarta.annotation.Nullable
    public ApiUserTeamMembershipJoinedAt getJoinedAt() {
        return this.joinedAt;
    }
    /**
     * Gets the name property value. Team name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the organization property value. The organization property
     * @return a {@link ApiOrganizationSummary}
     */
    @jakarta.annotation.Nullable
    public ApiOrganizationSummary getOrganization() {
        return this.organization;
    }
    /**
     * Gets the role property value. The role property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getRole() {
        return this.role;
    }
    /**
     * Gets the slug property value. The slug property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSlug() {
        return this.slug;
    }
    /**
     * Gets the tag property value. The tag property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTag() {
        return this.tag;
    }
    /**
     * Gets the visibility property value. Public profile visibility setting.
     * @return a {@link ProfileVisibility}
     */
    @jakarta.annotation.Nullable
    public ProfileVisibility getVisibility() {
        return this.visibility;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("avatarUrl", this.getAvatarUrl());
        writer.writeStringValue("id", this.getId());
        writer.writeObjectValue("joinedAt", this.getJoinedAt());
        writer.writeStringValue("name", this.getName());
        writer.writeObjectValue("organization", this.getOrganization());
        writer.writeStringValue("role", this.getRole());
        writer.writeStringValue("slug", this.getSlug());
        writer.writeStringValue("tag", this.getTag());
        writer.writeEnumValue("visibility", this.getVisibility());
    }
    /**
     * Sets the avatarUrl property value. The avatarUrl property
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final String value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the id property value. Team ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the joinedAt property value. The joinedAt property
     * @param value Value to set for the joinedAt property.
     */
    public void setJoinedAt(@jakarta.annotation.Nullable final ApiUserTeamMembershipJoinedAt value) {
        this.joinedAt = value;
    }
    /**
     * Sets the name property value. Team name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the organization property value. The organization property
     * @param value Value to set for the organization property.
     */
    public void setOrganization(@jakarta.annotation.Nullable final ApiOrganizationSummary value) {
        this.organization = value;
    }
    /**
     * Sets the role property value. The role property
     * @param value Value to set for the role property.
     */
    public void setRole(@jakarta.annotation.Nullable final String value) {
        this.role = value;
    }
    /**
     * Sets the slug property value. The slug property
     * @param value Value to set for the slug property.
     */
    public void setSlug(@jakarta.annotation.Nullable final String value) {
        this.slug = value;
    }
    /**
     * Sets the tag property value. The tag property
     * @param value Value to set for the tag property.
     */
    public void setTag(@jakarta.annotation.Nullable final String value) {
        this.tag = value;
    }
    /**
     * Sets the visibility property value. Public profile visibility setting.
     * @param value Value to set for the visibility property.
     */
    public void setVisibility(@jakarta.annotation.Nullable final ProfileVisibility value) {
        this.visibility = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiUserTeamMembershipJoinedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserTeamMembershipJoinedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserTeamMembershipJoinedAtMember1}
         */
        private ApiUserTeamMembershipJoinedAtMember1 apiUserTeamMembershipJoinedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserTeamMembershipJoinedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserTeamMembershipJoinedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserTeamMembershipJoinedAt result = new ApiUserTeamMembershipJoinedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserTeamMembershipJoinedAtMember1(new ApiUserTeamMembershipJoinedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserTeamMembership_joinedAtMember1 property value. Composed type representation for type {@link ApiUserTeamMembershipJoinedAtMember1}
         * @return a {@link ApiUserTeamMembershipJoinedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserTeamMembershipJoinedAtMember1 getApiUserTeamMembershipJoinedAtMember1() {
            return this.apiUserTeamMembershipJoinedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserTeamMembershipJoinedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserTeamMembershipJoinedAtMember1());
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
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getString() != null) {
                writer.writeStringValue(null, this.getString());
            } else {
                writer.writeObjectValue(null, this.getApiUserTeamMembershipJoinedAtMember1());
            }
        }
        /**
         * Sets the ApiUserTeamMembership_joinedAtMember1 property value. Composed type representation for type {@link ApiUserTeamMembershipJoinedAtMember1}
         * @param value Value to set for the ApiUserTeamMembership_joinedAtMember1 property.
         */
        public void setApiUserTeamMembershipJoinedAtMember1(@jakarta.annotation.Nullable final ApiUserTeamMembershipJoinedAtMember1 value) {
            this.apiUserTeamMembershipJoinedAtMember1 = value;
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
