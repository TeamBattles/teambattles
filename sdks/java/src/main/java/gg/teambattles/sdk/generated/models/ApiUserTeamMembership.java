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
    private ApiUserTeamMembershipAvatarUrl avatarUrl;
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
    private ApiUserTeamMembershipSlug slug;
    /**
     * The tag property
     */
    private ApiUserTeamMembershipTag tag;
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
     * @return a {@link ApiUserTeamMembershipAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public ApiUserTeamMembershipAvatarUrl getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(9);
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getObjectValue(ApiUserTeamMembershipAvatarUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("joinedAt", (n) -> { this.setJoinedAt(n.getObjectValue(ApiUserTeamMembershipJoinedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("organization", (n) -> { this.setOrganization(n.getObjectValue(ApiOrganizationSummary::createFromDiscriminatorValue)); });
        deserializerMap.put("role", (n) -> { this.setRole(n.getStringValue()); });
        deserializerMap.put("slug", (n) -> { this.setSlug(n.getObjectValue(ApiUserTeamMembershipSlug::createFromDiscriminatorValue)); });
        deserializerMap.put("tag", (n) -> { this.setTag(n.getObjectValue(ApiUserTeamMembershipTag::createFromDiscriminatorValue)); });
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
     * @return a {@link ApiUserTeamMembershipSlug}
     */
    @jakarta.annotation.Nullable
    public ApiUserTeamMembershipSlug getSlug() {
        return this.slug;
    }
    /**
     * Gets the tag property value. The tag property
     * @return a {@link ApiUserTeamMembershipTag}
     */
    @jakarta.annotation.Nullable
    public ApiUserTeamMembershipTag getTag() {
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
        writer.writeObjectValue("avatarUrl", this.getAvatarUrl());
        writer.writeStringValue("id", this.getId());
        writer.writeObjectValue("joinedAt", this.getJoinedAt());
        writer.writeStringValue("name", this.getName());
        writer.writeObjectValue("organization", this.getOrganization());
        writer.writeStringValue("role", this.getRole());
        writer.writeObjectValue("slug", this.getSlug());
        writer.writeObjectValue("tag", this.getTag());
        writer.writeEnumValue("visibility", this.getVisibility());
    }
    /**
     * Sets the avatarUrl property value. The avatarUrl property
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final ApiUserTeamMembershipAvatarUrl value) {
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
    public void setSlug(@jakarta.annotation.Nullable final ApiUserTeamMembershipSlug value) {
        this.slug = value;
    }
    /**
     * Sets the tag property value. The tag property
     * @param value Value to set for the tag property.
     */
    public void setTag(@jakarta.annotation.Nullable final ApiUserTeamMembershipTag value) {
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
     * Composed type wrapper for classes {@link ApiUserTeamMembershipAvatarUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserTeamMembershipAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserTeamMembershipAvatarUrlMember1}
         */
        private ApiUserTeamMembershipAvatarUrlMember1 apiUserTeamMembershipAvatarUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserTeamMembershipAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserTeamMembershipAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserTeamMembershipAvatarUrl result = new ApiUserTeamMembershipAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserTeamMembershipAvatarUrlMember1(new ApiUserTeamMembershipAvatarUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserTeamMembership_avatarUrlMember1 property value. Composed type representation for type {@link ApiUserTeamMembershipAvatarUrlMember1}
         * @return a {@link ApiUserTeamMembershipAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserTeamMembershipAvatarUrlMember1 getApiUserTeamMembershipAvatarUrlMember1() {
            return this.apiUserTeamMembershipAvatarUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserTeamMembershipAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserTeamMembershipAvatarUrlMember1());
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
                writer.writeObjectValue(null, this.getApiUserTeamMembershipAvatarUrlMember1());
            }
        }
        /**
         * Sets the ApiUserTeamMembership_avatarUrlMember1 property value. Composed type representation for type {@link ApiUserTeamMembershipAvatarUrlMember1}
         * @param value Value to set for the ApiUserTeamMembership_avatarUrlMember1 property.
         */
        public void setApiUserTeamMembershipAvatarUrlMember1(@jakarta.annotation.Nullable final ApiUserTeamMembershipAvatarUrlMember1 value) {
            this.apiUserTeamMembershipAvatarUrlMember1 = value;
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
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
    /**
     * Composed type wrapper for classes {@link ApiUserTeamMembershipSlugMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserTeamMembershipSlug implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserTeamMembershipSlugMember1}
         */
        private ApiUserTeamMembershipSlugMember1 apiUserTeamMembershipSlugMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserTeamMembershipSlug}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserTeamMembershipSlug createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserTeamMembershipSlug result = new ApiUserTeamMembershipSlug();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserTeamMembershipSlugMember1(new ApiUserTeamMembershipSlugMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserTeamMembership_slugMember1 property value. Composed type representation for type {@link ApiUserTeamMembershipSlugMember1}
         * @return a {@link ApiUserTeamMembershipSlugMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserTeamMembershipSlugMember1 getApiUserTeamMembershipSlugMember1() {
            return this.apiUserTeamMembershipSlugMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserTeamMembershipSlugMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserTeamMembershipSlugMember1());
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
                writer.writeObjectValue(null, this.getApiUserTeamMembershipSlugMember1());
            }
        }
        /**
         * Sets the ApiUserTeamMembership_slugMember1 property value. Composed type representation for type {@link ApiUserTeamMembershipSlugMember1}
         * @param value Value to set for the ApiUserTeamMembership_slugMember1 property.
         */
        public void setApiUserTeamMembershipSlugMember1(@jakarta.annotation.Nullable final ApiUserTeamMembershipSlugMember1 value) {
            this.apiUserTeamMembershipSlugMember1 = value;
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link ApiUserTeamMembershipTagMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserTeamMembershipTag implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserTeamMembershipTagMember1}
         */
        private ApiUserTeamMembershipTagMember1 apiUserTeamMembershipTagMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserTeamMembershipTag}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserTeamMembershipTag createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserTeamMembershipTag result = new ApiUserTeamMembershipTag();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserTeamMembershipTagMember1(new ApiUserTeamMembershipTagMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserTeamMembership_tagMember1 property value. Composed type representation for type {@link ApiUserTeamMembershipTagMember1}
         * @return a {@link ApiUserTeamMembershipTagMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserTeamMembershipTagMember1 getApiUserTeamMembershipTagMember1() {
            return this.apiUserTeamMembershipTagMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserTeamMembershipTagMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserTeamMembershipTagMember1());
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
                writer.writeObjectValue(null, this.getApiUserTeamMembershipTagMember1());
            }
        }
        /**
         * Sets the ApiUserTeamMembership_tagMember1 property value. Composed type representation for type {@link ApiUserTeamMembershipTagMember1}
         * @param value Value to set for the ApiUserTeamMembership_tagMember1 property.
         */
        public void setApiUserTeamMembershipTagMember1(@jakarta.annotation.Nullable final ApiUserTeamMembershipTagMember1 value) {
            this.apiUserTeamMembershipTagMember1 = value;
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
