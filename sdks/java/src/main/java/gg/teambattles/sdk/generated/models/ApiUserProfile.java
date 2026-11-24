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
    private String avatarUrl;
    /**
     * Banner image URL, when set.
     */
    private String bannerUrl;
    /**
     * Public profile bio.
     */
    private String bio;
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
    private String name;
    /**
     * User handle, when set.
     */
    private String username;
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
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * Gets the bannerUrl property value. Banner image URL, when set.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getBannerUrl() {
        return this.bannerUrl;
    }
    /**
     * Gets the bio property value. Public profile bio.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getBio() {
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
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getStringValue()); });
        deserializerMap.put("bannerUrl", (n) -> { this.setBannerUrl(n.getStringValue()); });
        deserializerMap.put("bio", (n) -> { this.setBio(n.getStringValue()); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getObjectValue(ApiUserProfileCreatedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isVerified", (n) -> { this.setIsVerified(n.getBooleanValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("username", (n) -> { this.setUsername(n.getStringValue()); });
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
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the username property value. User handle, when set.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUsername() {
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
        writer.writeStringValue("avatarUrl", this.getAvatarUrl());
        writer.writeStringValue("bannerUrl", this.getBannerUrl());
        writer.writeStringValue("bio", this.getBio());
        writer.writeObjectValue("createdAt", this.getCreatedAt());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isVerified", this.getIsVerified());
        writer.writeStringValue("name", this.getName());
        writer.writeStringValue("username", this.getUsername());
        writer.writeEnumValue("visibility", this.getVisibility());
    }
    /**
     * Sets the avatarUrl property value. Avatar image URL, when set.
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final String value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the bannerUrl property value. Banner image URL, when set.
     * @param value Value to set for the bannerUrl property.
     */
    public void setBannerUrl(@jakarta.annotation.Nullable final String value) {
        this.bannerUrl = value;
    }
    /**
     * Sets the bio property value. Public profile bio.
     * @param value Value to set for the bio property.
     */
    public void setBio(@jakarta.annotation.Nullable final String value) {
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
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the username property value. User handle, when set.
     * @param value Value to set for the username property.
     */
    public void setUsername(@jakarta.annotation.Nullable final String value) {
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
}
