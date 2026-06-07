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
 * API-safe organization affiliation row on a user profile.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiUserOrganizationMembership implements Parsable {
    /**
     * The avatarUrl property
     */
    private ApiUserOrganizationMembershipAvatarUrl avatarUrl;
    /**
     * Organization ID.
     */
    private String id;
    /**
     * The joinedAt property
     */
    private ApiUserOrganizationMembershipJoinedAt joinedAt;
    /**
     * Organization name.
     */
    private String name;
    /**
     * The role property
     */
    private String role;
    /**
     * The slug property
     */
    private ApiUserOrganizationMembershipSlug slug;
    /**
     * The tag property
     */
    private ApiUserOrganizationMembershipTag tag;
    /**
     * Public profile visibility setting.
     */
    private ProfileVisibility visibility;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiUserOrganizationMembership}
     */
    @jakarta.annotation.Nonnull
    public static ApiUserOrganizationMembership createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiUserOrganizationMembership();
    }
    /**
     * Gets the avatarUrl property value. The avatarUrl property
     * @return a {@link ApiUserOrganizationMembershipAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public ApiUserOrganizationMembershipAvatarUrl getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(8);
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getObjectValue(ApiUserOrganizationMembershipAvatarUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("joinedAt", (n) -> { this.setJoinedAt(n.getObjectValue(ApiUserOrganizationMembershipJoinedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("role", (n) -> { this.setRole(n.getStringValue()); });
        deserializerMap.put("slug", (n) -> { this.setSlug(n.getObjectValue(ApiUserOrganizationMembershipSlug::createFromDiscriminatorValue)); });
        deserializerMap.put("tag", (n) -> { this.setTag(n.getObjectValue(ApiUserOrganizationMembershipTag::createFromDiscriminatorValue)); });
        deserializerMap.put("visibility", (n) -> { this.setVisibility(n.getEnumValue(ProfileVisibility::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Organization ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the joinedAt property value. The joinedAt property
     * @return a {@link ApiUserOrganizationMembershipJoinedAt}
     */
    @jakarta.annotation.Nullable
    public ApiUserOrganizationMembershipJoinedAt getJoinedAt() {
        return this.joinedAt;
    }
    /**
     * Gets the name property value. Organization name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
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
     * @return a {@link ApiUserOrganizationMembershipSlug}
     */
    @jakarta.annotation.Nullable
    public ApiUserOrganizationMembershipSlug getSlug() {
        return this.slug;
    }
    /**
     * Gets the tag property value. The tag property
     * @return a {@link ApiUserOrganizationMembershipTag}
     */
    @jakarta.annotation.Nullable
    public ApiUserOrganizationMembershipTag getTag() {
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
        writer.writeStringValue("role", this.getRole());
        writer.writeObjectValue("slug", this.getSlug());
        writer.writeObjectValue("tag", this.getTag());
        writer.writeEnumValue("visibility", this.getVisibility());
    }
    /**
     * Sets the avatarUrl property value. The avatarUrl property
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final ApiUserOrganizationMembershipAvatarUrl value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the id property value. Organization ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the joinedAt property value. The joinedAt property
     * @param value Value to set for the joinedAt property.
     */
    public void setJoinedAt(@jakarta.annotation.Nullable final ApiUserOrganizationMembershipJoinedAt value) {
        this.joinedAt = value;
    }
    /**
     * Sets the name property value. Organization name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
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
    public void setSlug(@jakarta.annotation.Nullable final ApiUserOrganizationMembershipSlug value) {
        this.slug = value;
    }
    /**
     * Sets the tag property value. The tag property
     * @param value Value to set for the tag property.
     */
    public void setTag(@jakarta.annotation.Nullable final ApiUserOrganizationMembershipTag value) {
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
     * Composed type wrapper for classes {@link ApiUserOrganizationMembershipAvatarUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserOrganizationMembershipAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserOrganizationMembershipAvatarUrlMember1}
         */
        private ApiUserOrganizationMembershipAvatarUrlMember1 apiUserOrganizationMembershipAvatarUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserOrganizationMembershipAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserOrganizationMembershipAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserOrganizationMembershipAvatarUrl result = new ApiUserOrganizationMembershipAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserOrganizationMembershipAvatarUrlMember1(new ApiUserOrganizationMembershipAvatarUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserOrganizationMembership_avatarUrlMember1 property value. Composed type representation for type {@link ApiUserOrganizationMembershipAvatarUrlMember1}
         * @return a {@link ApiUserOrganizationMembershipAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserOrganizationMembershipAvatarUrlMember1 getApiUserOrganizationMembershipAvatarUrlMember1() {
            return this.apiUserOrganizationMembershipAvatarUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserOrganizationMembershipAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserOrganizationMembershipAvatarUrlMember1());
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
                writer.writeObjectValue(null, this.getApiUserOrganizationMembershipAvatarUrlMember1());
            }
        }
        /**
         * Sets the ApiUserOrganizationMembership_avatarUrlMember1 property value. Composed type representation for type {@link ApiUserOrganizationMembershipAvatarUrlMember1}
         * @param value Value to set for the ApiUserOrganizationMembership_avatarUrlMember1 property.
         */
        public void setApiUserOrganizationMembershipAvatarUrlMember1(@jakarta.annotation.Nullable final ApiUserOrganizationMembershipAvatarUrlMember1 value) {
            this.apiUserOrganizationMembershipAvatarUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiUserOrganizationMembershipJoinedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserOrganizationMembershipJoinedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserOrganizationMembershipJoinedAtMember1}
         */
        private ApiUserOrganizationMembershipJoinedAtMember1 apiUserOrganizationMembershipJoinedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserOrganizationMembershipJoinedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserOrganizationMembershipJoinedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserOrganizationMembershipJoinedAt result = new ApiUserOrganizationMembershipJoinedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserOrganizationMembershipJoinedAtMember1(new ApiUserOrganizationMembershipJoinedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserOrganizationMembership_joinedAtMember1 property value. Composed type representation for type {@link ApiUserOrganizationMembershipJoinedAtMember1}
         * @return a {@link ApiUserOrganizationMembershipJoinedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserOrganizationMembershipJoinedAtMember1 getApiUserOrganizationMembershipJoinedAtMember1() {
            return this.apiUserOrganizationMembershipJoinedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserOrganizationMembershipJoinedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserOrganizationMembershipJoinedAtMember1());
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
                writer.writeObjectValue(null, this.getApiUserOrganizationMembershipJoinedAtMember1());
            }
        }
        /**
         * Sets the ApiUserOrganizationMembership_joinedAtMember1 property value. Composed type representation for type {@link ApiUserOrganizationMembershipJoinedAtMember1}
         * @param value Value to set for the ApiUserOrganizationMembership_joinedAtMember1 property.
         */
        public void setApiUserOrganizationMembershipJoinedAtMember1(@jakarta.annotation.Nullable final ApiUserOrganizationMembershipJoinedAtMember1 value) {
            this.apiUserOrganizationMembershipJoinedAtMember1 = value;
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
     * Composed type wrapper for classes {@link ApiUserOrganizationMembershipSlugMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserOrganizationMembershipSlug implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserOrganizationMembershipSlugMember1}
         */
        private ApiUserOrganizationMembershipSlugMember1 apiUserOrganizationMembershipSlugMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserOrganizationMembershipSlug}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserOrganizationMembershipSlug createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserOrganizationMembershipSlug result = new ApiUserOrganizationMembershipSlug();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserOrganizationMembershipSlugMember1(new ApiUserOrganizationMembershipSlugMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserOrganizationMembership_slugMember1 property value. Composed type representation for type {@link ApiUserOrganizationMembershipSlugMember1}
         * @return a {@link ApiUserOrganizationMembershipSlugMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserOrganizationMembershipSlugMember1 getApiUserOrganizationMembershipSlugMember1() {
            return this.apiUserOrganizationMembershipSlugMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserOrganizationMembershipSlugMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserOrganizationMembershipSlugMember1());
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
                writer.writeObjectValue(null, this.getApiUserOrganizationMembershipSlugMember1());
            }
        }
        /**
         * Sets the ApiUserOrganizationMembership_slugMember1 property value. Composed type representation for type {@link ApiUserOrganizationMembershipSlugMember1}
         * @param value Value to set for the ApiUserOrganizationMembership_slugMember1 property.
         */
        public void setApiUserOrganizationMembershipSlugMember1(@jakarta.annotation.Nullable final ApiUserOrganizationMembershipSlugMember1 value) {
            this.apiUserOrganizationMembershipSlugMember1 = value;
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
     * Composed type wrapper for classes {@link ApiUserOrganizationMembershipTagMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserOrganizationMembershipTag implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserOrganizationMembershipTagMember1}
         */
        private ApiUserOrganizationMembershipTagMember1 apiUserOrganizationMembershipTagMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserOrganizationMembershipTag}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserOrganizationMembershipTag createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserOrganizationMembershipTag result = new ApiUserOrganizationMembershipTag();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserOrganizationMembershipTagMember1(new ApiUserOrganizationMembershipTagMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserOrganizationMembership_tagMember1 property value. Composed type representation for type {@link ApiUserOrganizationMembershipTagMember1}
         * @return a {@link ApiUserOrganizationMembershipTagMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserOrganizationMembershipTagMember1 getApiUserOrganizationMembershipTagMember1() {
            return this.apiUserOrganizationMembershipTagMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserOrganizationMembershipTagMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserOrganizationMembershipTagMember1());
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
                writer.writeObjectValue(null, this.getApiUserOrganizationMembershipTagMember1());
            }
        }
        /**
         * Sets the ApiUserOrganizationMembership_tagMember1 property value. Composed type representation for type {@link ApiUserOrganizationMembershipTagMember1}
         * @param value Value to set for the ApiUserOrganizationMembership_tagMember1 property.
         */
        public void setApiUserOrganizationMembershipTagMember1(@jakarta.annotation.Nullable final ApiUserOrganizationMembershipTagMember1 value) {
            this.apiUserOrganizationMembershipTagMember1 = value;
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
