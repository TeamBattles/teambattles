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
 * API-safe public user profile.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiUserProfile implements Parsable {
    /**
     * Avatar image URL, when set.
     */
    private ApiUserProfileAvatarUrl avatarUrl;
    /**
     * Banner image URL, when set.
     */
    private ApiUserProfileBannerUrl bannerUrl;
    /**
     * Public profile bio.
     */
    private ApiUserProfileBio bio;
    /**
     * The createdAt property
     */
    private ApiUserProfileCreatedAt createdAt;
    /**
     * User ID.
     */
    private String id;
    /**
     * The isVerified property
     */
    private Boolean isVerified;
    /**
     * Display name, when set.
     */
    private ApiUserProfileName name;
    /**
     * User handle, when set.
     */
    private ApiUserProfileUsername username;
    /**
     * Public profile visibility setting.
     */
    private ProfileVisibility visibility;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiUserProfile}
     */
    @jakarta.annotation.Nonnull
    public static ApiUserProfile createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiUserProfile();
    }
    /**
     * Gets the avatarUrl property value. Avatar image URL, when set.
     * @return a {@link ApiUserProfileAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public ApiUserProfileAvatarUrl getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * Gets the bannerUrl property value. Banner image URL, when set.
     * @return a {@link ApiUserProfileBannerUrl}
     */
    @jakarta.annotation.Nullable
    public ApiUserProfileBannerUrl getBannerUrl() {
        return this.bannerUrl;
    }
    /**
     * Gets the bio property value. Public profile bio.
     * @return a {@link ApiUserProfileBio}
     */
    @jakarta.annotation.Nullable
    public ApiUserProfileBio getBio() {
        return this.bio;
    }
    /**
     * Gets the createdAt property value. The createdAt property
     * @return a {@link ApiUserProfileCreatedAt}
     */
    @jakarta.annotation.Nullable
    public ApiUserProfileCreatedAt getCreatedAt() {
        return this.createdAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(9);
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getObjectValue(ApiUserProfileAvatarUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("bannerUrl", (n) -> { this.setBannerUrl(n.getObjectValue(ApiUserProfileBannerUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("bio", (n) -> { this.setBio(n.getObjectValue(ApiUserProfileBio::createFromDiscriminatorValue)); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getObjectValue(ApiUserProfileCreatedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isVerified", (n) -> { this.setIsVerified(n.getBooleanValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getObjectValue(ApiUserProfileName::createFromDiscriminatorValue)); });
        deserializerMap.put("username", (n) -> { this.setUsername(n.getObjectValue(ApiUserProfileUsername::createFromDiscriminatorValue)); });
        deserializerMap.put("visibility", (n) -> { this.setVisibility(n.getEnumValue(ProfileVisibility::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. User ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the isVerified property value. The isVerified property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsVerified() {
        return this.isVerified;
    }
    /**
     * Gets the name property value. Display name, when set.
     * @return a {@link ApiUserProfileName}
     */
    @jakarta.annotation.Nullable
    public ApiUserProfileName getName() {
        return this.name;
    }
    /**
     * Gets the username property value. User handle, when set.
     * @return a {@link ApiUserProfileUsername}
     */
    @jakarta.annotation.Nullable
    public ApiUserProfileUsername getUsername() {
        return this.username;
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
        writer.writeObjectValue("bannerUrl", this.getBannerUrl());
        writer.writeObjectValue("bio", this.getBio());
        writer.writeObjectValue("createdAt", this.getCreatedAt());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isVerified", this.getIsVerified());
        writer.writeObjectValue("name", this.getName());
        writer.writeObjectValue("username", this.getUsername());
        writer.writeEnumValue("visibility", this.getVisibility());
    }
    /**
     * Sets the avatarUrl property value. Avatar image URL, when set.
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final ApiUserProfileAvatarUrl value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the bannerUrl property value. Banner image URL, when set.
     * @param value Value to set for the bannerUrl property.
     */
    public void setBannerUrl(@jakarta.annotation.Nullable final ApiUserProfileBannerUrl value) {
        this.bannerUrl = value;
    }
    /**
     * Sets the bio property value. Public profile bio.
     * @param value Value to set for the bio property.
     */
    public void setBio(@jakarta.annotation.Nullable final ApiUserProfileBio value) {
        this.bio = value;
    }
    /**
     * Sets the createdAt property value. The createdAt property
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final ApiUserProfileCreatedAt value) {
        this.createdAt = value;
    }
    /**
     * Sets the id property value. User ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the isVerified property value. The isVerified property
     * @param value Value to set for the isVerified property.
     */
    public void setIsVerified(@jakarta.annotation.Nullable final Boolean value) {
        this.isVerified = value;
    }
    /**
     * Sets the name property value. Display name, when set.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final ApiUserProfileName value) {
        this.name = value;
    }
    /**
     * Sets the username property value. User handle, when set.
     * @param value Value to set for the username property.
     */
    public void setUsername(@jakarta.annotation.Nullable final ApiUserProfileUsername value) {
        this.username = value;
    }
    /**
     * Sets the visibility property value. Public profile visibility setting.
     * @param value Value to set for the visibility property.
     */
    public void setVisibility(@jakarta.annotation.Nullable final ProfileVisibility value) {
        this.visibility = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiUserProfileAvatarUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserProfileAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserProfileAvatarUrlMember1}
         */
        private ApiUserProfileAvatarUrlMember1 apiUserProfileAvatarUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserProfileAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserProfileAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserProfileAvatarUrl result = new ApiUserProfileAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserProfileAvatarUrlMember1(new ApiUserProfileAvatarUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserProfile_avatarUrlMember1 property value. Composed type representation for type {@link ApiUserProfileAvatarUrlMember1}
         * @return a {@link ApiUserProfileAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserProfileAvatarUrlMember1 getApiUserProfileAvatarUrlMember1() {
            return this.apiUserProfileAvatarUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserProfileAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserProfileAvatarUrlMember1());
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
                writer.writeObjectValue(null, this.getApiUserProfileAvatarUrlMember1());
            }
        }
        /**
         * Sets the ApiUserProfile_avatarUrlMember1 property value. Composed type representation for type {@link ApiUserProfileAvatarUrlMember1}
         * @param value Value to set for the ApiUserProfile_avatarUrlMember1 property.
         */
        public void setApiUserProfileAvatarUrlMember1(@jakarta.annotation.Nullable final ApiUserProfileAvatarUrlMember1 value) {
            this.apiUserProfileAvatarUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiUserProfileBannerUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserProfileBannerUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserProfileBannerUrlMember1}
         */
        private ApiUserProfileBannerUrlMember1 apiUserProfileBannerUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserProfileBannerUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserProfileBannerUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserProfileBannerUrl result = new ApiUserProfileBannerUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserProfileBannerUrlMember1(new ApiUserProfileBannerUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserProfile_bannerUrlMember1 property value. Composed type representation for type {@link ApiUserProfileBannerUrlMember1}
         * @return a {@link ApiUserProfileBannerUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserProfileBannerUrlMember1 getApiUserProfileBannerUrlMember1() {
            return this.apiUserProfileBannerUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserProfileBannerUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserProfileBannerUrlMember1());
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
                writer.writeObjectValue(null, this.getApiUserProfileBannerUrlMember1());
            }
        }
        /**
         * Sets the ApiUserProfile_bannerUrlMember1 property value. Composed type representation for type {@link ApiUserProfileBannerUrlMember1}
         * @param value Value to set for the ApiUserProfile_bannerUrlMember1 property.
         */
        public void setApiUserProfileBannerUrlMember1(@jakarta.annotation.Nullable final ApiUserProfileBannerUrlMember1 value) {
            this.apiUserProfileBannerUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiUserProfileBioMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserProfileBio implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserProfileBioMember1}
         */
        private ApiUserProfileBioMember1 apiUserProfileBioMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserProfileBio}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserProfileBio createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserProfileBio result = new ApiUserProfileBio();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserProfileBioMember1(new ApiUserProfileBioMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserProfile_bioMember1 property value. Composed type representation for type {@link ApiUserProfileBioMember1}
         * @return a {@link ApiUserProfileBioMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserProfileBioMember1 getApiUserProfileBioMember1() {
            return this.apiUserProfileBioMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserProfileBioMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserProfileBioMember1());
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
                writer.writeObjectValue(null, this.getApiUserProfileBioMember1());
            }
        }
        /**
         * Sets the ApiUserProfile_bioMember1 property value. Composed type representation for type {@link ApiUserProfileBioMember1}
         * @param value Value to set for the ApiUserProfile_bioMember1 property.
         */
        public void setApiUserProfileBioMember1(@jakarta.annotation.Nullable final ApiUserProfileBioMember1 value) {
            this.apiUserProfileBioMember1 = value;
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
     * Composed type wrapper for classes {@link ApiUserProfileCreatedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserProfileCreatedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserProfileCreatedAtMember1}
         */
        private ApiUserProfileCreatedAtMember1 apiUserProfileCreatedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserProfileCreatedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserProfileCreatedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserProfileCreatedAt result = new ApiUserProfileCreatedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserProfileCreatedAtMember1(new ApiUserProfileCreatedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserProfile_createdAtMember1 property value. Composed type representation for type {@link ApiUserProfileCreatedAtMember1}
         * @return a {@link ApiUserProfileCreatedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserProfileCreatedAtMember1 getApiUserProfileCreatedAtMember1() {
            return this.apiUserProfileCreatedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserProfileCreatedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserProfileCreatedAtMember1());
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
                writer.writeObjectValue(null, this.getApiUserProfileCreatedAtMember1());
            }
        }
        /**
         * Sets the ApiUserProfile_createdAtMember1 property value. Composed type representation for type {@link ApiUserProfileCreatedAtMember1}
         * @param value Value to set for the ApiUserProfile_createdAtMember1 property.
         */
        public void setApiUserProfileCreatedAtMember1(@jakarta.annotation.Nullable final ApiUserProfileCreatedAtMember1 value) {
            this.apiUserProfileCreatedAtMember1 = value;
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
     * Composed type wrapper for classes {@link ApiUserProfileNameMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserProfileName implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserProfileNameMember1}
         */
        private ApiUserProfileNameMember1 apiUserProfileNameMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserProfileName}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserProfileName createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserProfileName result = new ApiUserProfileName();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserProfileNameMember1(new ApiUserProfileNameMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserProfile_nameMember1 property value. Composed type representation for type {@link ApiUserProfileNameMember1}
         * @return a {@link ApiUserProfileNameMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserProfileNameMember1 getApiUserProfileNameMember1() {
            return this.apiUserProfileNameMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserProfileNameMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserProfileNameMember1());
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
                writer.writeObjectValue(null, this.getApiUserProfileNameMember1());
            }
        }
        /**
         * Sets the ApiUserProfile_nameMember1 property value. Composed type representation for type {@link ApiUserProfileNameMember1}
         * @param value Value to set for the ApiUserProfile_nameMember1 property.
         */
        public void setApiUserProfileNameMember1(@jakarta.annotation.Nullable final ApiUserProfileNameMember1 value) {
            this.apiUserProfileNameMember1 = value;
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
     * Composed type wrapper for classes {@link ApiUserProfileUsernameMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiUserProfileUsername implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiUserProfileUsernameMember1}
         */
        private ApiUserProfileUsernameMember1 apiUserProfileUsernameMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiUserProfileUsername}
         */
        @jakarta.annotation.Nonnull
        public static ApiUserProfileUsername createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiUserProfileUsername result = new ApiUserProfileUsername();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiUserProfileUsernameMember1(new ApiUserProfileUsernameMember1());
            }
            return result;
        }
        /**
         * Gets the ApiUserProfile_usernameMember1 property value. Composed type representation for type {@link ApiUserProfileUsernameMember1}
         * @return a {@link ApiUserProfileUsernameMember1}
         */
        @jakarta.annotation.Nullable
        public ApiUserProfileUsernameMember1 getApiUserProfileUsernameMember1() {
            return this.apiUserProfileUsernameMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiUserProfileUsernameMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiUserProfileUsernameMember1());
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
                writer.writeObjectValue(null, this.getApiUserProfileUsernameMember1());
            }
        }
        /**
         * Sets the ApiUserProfile_usernameMember1 property value. Composed type representation for type {@link ApiUserProfileUsernameMember1}
         * @param value Value to set for the ApiUserProfile_usernameMember1 property.
         */
        public void setApiUserProfileUsernameMember1(@jakarta.annotation.Nullable final ApiUserProfileUsernameMember1 value) {
            this.apiUserProfileUsernameMember1 = value;
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
