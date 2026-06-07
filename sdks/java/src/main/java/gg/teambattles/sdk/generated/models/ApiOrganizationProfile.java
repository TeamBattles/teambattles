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
 * API-safe organization profile.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiOrganizationProfile implements Parsable {
    /**
     * The avatarUrl property
     */
    private ApiOrganizationProfileAvatarUrl avatarUrl;
    /**
     * The bannerUrl property
     */
    private ApiOrganizationProfileBannerUrl bannerUrl;
    /**
     * The createdAt property
     */
    private ApiOrganizationProfileCreatedAt createdAt;
    /**
     * The description property
     */
    private ApiOrganizationProfileDescription description;
    /**
     * The draws property
     */
    private Integer draws;
    /**
     * Organization ID.
     */
    private String id;
    /**
     * The isMember property
     */
    private Boolean isMember;
    /**
     * The isVerified property
     */
    private Boolean isVerified;
    /**
     * The losses property
     */
    private Integer losses;
    /**
     * The matchesPlayed property
     */
    private Integer matchesPlayed;
    /**
     * The memberCount property
     */
    private Integer memberCount;
    /**
     * Organization name.
     */
    private String name;
    /**
     * The slug property
     */
    private ApiOrganizationProfileSlug slug;
    /**
     * The tag property
     */
    private ApiOrganizationProfileTag tag;
    /**
     * The teamCount property
     */
    private Integer teamCount;
    /**
     * Public profile visibility setting.
     */
    private ProfileVisibility visibility;
    /**
     * The wins property
     */
    private Integer wins;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiOrganizationProfile}
     */
    @jakarta.annotation.Nonnull
    public static ApiOrganizationProfile createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiOrganizationProfile();
    }
    /**
     * Gets the avatarUrl property value. The avatarUrl property
     * @return a {@link ApiOrganizationProfileAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public ApiOrganizationProfileAvatarUrl getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * Gets the bannerUrl property value. The bannerUrl property
     * @return a {@link ApiOrganizationProfileBannerUrl}
     */
    @jakarta.annotation.Nullable
    public ApiOrganizationProfileBannerUrl getBannerUrl() {
        return this.bannerUrl;
    }
    /**
     * Gets the createdAt property value. The createdAt property
     * @return a {@link ApiOrganizationProfileCreatedAt}
     */
    @jakarta.annotation.Nullable
    public ApiOrganizationProfileCreatedAt getCreatedAt() {
        return this.createdAt;
    }
    /**
     * Gets the description property value. The description property
     * @return a {@link ApiOrganizationProfileDescription}
     */
    @jakarta.annotation.Nullable
    public ApiOrganizationProfileDescription getDescription() {
        return this.description;
    }
    /**
     * Gets the draws property value. The draws property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getDraws() {
        return this.draws;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(17);
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getObjectValue(ApiOrganizationProfileAvatarUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("bannerUrl", (n) -> { this.setBannerUrl(n.getObjectValue(ApiOrganizationProfileBannerUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getObjectValue(ApiOrganizationProfileCreatedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("description", (n) -> { this.setDescription(n.getObjectValue(ApiOrganizationProfileDescription::createFromDiscriminatorValue)); });
        deserializerMap.put("draws", (n) -> { this.setDraws(n.getIntegerValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isMember", (n) -> { this.setIsMember(n.getBooleanValue()); });
        deserializerMap.put("isVerified", (n) -> { this.setIsVerified(n.getBooleanValue()); });
        deserializerMap.put("losses", (n) -> { this.setLosses(n.getIntegerValue()); });
        deserializerMap.put("matchesPlayed", (n) -> { this.setMatchesPlayed(n.getIntegerValue()); });
        deserializerMap.put("memberCount", (n) -> { this.setMemberCount(n.getIntegerValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("slug", (n) -> { this.setSlug(n.getObjectValue(ApiOrganizationProfileSlug::createFromDiscriminatorValue)); });
        deserializerMap.put("tag", (n) -> { this.setTag(n.getObjectValue(ApiOrganizationProfileTag::createFromDiscriminatorValue)); });
        deserializerMap.put("teamCount", (n) -> { this.setTeamCount(n.getIntegerValue()); });
        deserializerMap.put("visibility", (n) -> { this.setVisibility(n.getEnumValue(ProfileVisibility::forValue)); });
        deserializerMap.put("wins", (n) -> { this.setWins(n.getIntegerValue()); });
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
     * Gets the isMember property value. The isMember property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsMember() {
        return this.isMember;
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
     * Gets the losses property value. The losses property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getLosses() {
        return this.losses;
    }
    /**
     * Gets the matchesPlayed property value. The matchesPlayed property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getMatchesPlayed() {
        return this.matchesPlayed;
    }
    /**
     * Gets the memberCount property value. The memberCount property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getMemberCount() {
        return this.memberCount;
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
     * Gets the slug property value. The slug property
     * @return a {@link ApiOrganizationProfileSlug}
     */
    @jakarta.annotation.Nullable
    public ApiOrganizationProfileSlug getSlug() {
        return this.slug;
    }
    /**
     * Gets the tag property value. The tag property
     * @return a {@link ApiOrganizationProfileTag}
     */
    @jakarta.annotation.Nullable
    public ApiOrganizationProfileTag getTag() {
        return this.tag;
    }
    /**
     * Gets the teamCount property value. The teamCount property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getTeamCount() {
        return this.teamCount;
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
     * Gets the wins property value. The wins property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getWins() {
        return this.wins;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("avatarUrl", this.getAvatarUrl());
        writer.writeObjectValue("bannerUrl", this.getBannerUrl());
        writer.writeObjectValue("createdAt", this.getCreatedAt());
        writer.writeObjectValue("description", this.getDescription());
        writer.writeIntegerValue("draws", this.getDraws());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isMember", this.getIsMember());
        writer.writeBooleanValue("isVerified", this.getIsVerified());
        writer.writeIntegerValue("losses", this.getLosses());
        writer.writeIntegerValue("matchesPlayed", this.getMatchesPlayed());
        writer.writeIntegerValue("memberCount", this.getMemberCount());
        writer.writeStringValue("name", this.getName());
        writer.writeObjectValue("slug", this.getSlug());
        writer.writeObjectValue("tag", this.getTag());
        writer.writeIntegerValue("teamCount", this.getTeamCount());
        writer.writeEnumValue("visibility", this.getVisibility());
        writer.writeIntegerValue("wins", this.getWins());
    }
    /**
     * Sets the avatarUrl property value. The avatarUrl property
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final ApiOrganizationProfileAvatarUrl value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the bannerUrl property value. The bannerUrl property
     * @param value Value to set for the bannerUrl property.
     */
    public void setBannerUrl(@jakarta.annotation.Nullable final ApiOrganizationProfileBannerUrl value) {
        this.bannerUrl = value;
    }
    /**
     * Sets the createdAt property value. The createdAt property
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final ApiOrganizationProfileCreatedAt value) {
        this.createdAt = value;
    }
    /**
     * Sets the description property value. The description property
     * @param value Value to set for the description property.
     */
    public void setDescription(@jakarta.annotation.Nullable final ApiOrganizationProfileDescription value) {
        this.description = value;
    }
    /**
     * Sets the draws property value. The draws property
     * @param value Value to set for the draws property.
     */
    public void setDraws(@jakarta.annotation.Nullable final Integer value) {
        this.draws = value;
    }
    /**
     * Sets the id property value. Organization ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the isMember property value. The isMember property
     * @param value Value to set for the isMember property.
     */
    public void setIsMember(@jakarta.annotation.Nullable final Boolean value) {
        this.isMember = value;
    }
    /**
     * Sets the isVerified property value. The isVerified property
     * @param value Value to set for the isVerified property.
     */
    public void setIsVerified(@jakarta.annotation.Nullable final Boolean value) {
        this.isVerified = value;
    }
    /**
     * Sets the losses property value. The losses property
     * @param value Value to set for the losses property.
     */
    public void setLosses(@jakarta.annotation.Nullable final Integer value) {
        this.losses = value;
    }
    /**
     * Sets the matchesPlayed property value. The matchesPlayed property
     * @param value Value to set for the matchesPlayed property.
     */
    public void setMatchesPlayed(@jakarta.annotation.Nullable final Integer value) {
        this.matchesPlayed = value;
    }
    /**
     * Sets the memberCount property value. The memberCount property
     * @param value Value to set for the memberCount property.
     */
    public void setMemberCount(@jakarta.annotation.Nullable final Integer value) {
        this.memberCount = value;
    }
    /**
     * Sets the name property value. Organization name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the slug property value. The slug property
     * @param value Value to set for the slug property.
     */
    public void setSlug(@jakarta.annotation.Nullable final ApiOrganizationProfileSlug value) {
        this.slug = value;
    }
    /**
     * Sets the tag property value. The tag property
     * @param value Value to set for the tag property.
     */
    public void setTag(@jakarta.annotation.Nullable final ApiOrganizationProfileTag value) {
        this.tag = value;
    }
    /**
     * Sets the teamCount property value. The teamCount property
     * @param value Value to set for the teamCount property.
     */
    public void setTeamCount(@jakarta.annotation.Nullable final Integer value) {
        this.teamCount = value;
    }
    /**
     * Sets the visibility property value. Public profile visibility setting.
     * @param value Value to set for the visibility property.
     */
    public void setVisibility(@jakarta.annotation.Nullable final ProfileVisibility value) {
        this.visibility = value;
    }
    /**
     * Sets the wins property value. The wins property
     * @param value Value to set for the wins property.
     */
    public void setWins(@jakarta.annotation.Nullable final Integer value) {
        this.wins = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiOrganizationProfileAvatarUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiOrganizationProfileAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiOrganizationProfileAvatarUrlMember1}
         */
        private ApiOrganizationProfileAvatarUrlMember1 apiOrganizationProfileAvatarUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiOrganizationProfileAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiOrganizationProfileAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiOrganizationProfileAvatarUrl result = new ApiOrganizationProfileAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiOrganizationProfileAvatarUrlMember1(new ApiOrganizationProfileAvatarUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiOrganizationProfile_avatarUrlMember1 property value. Composed type representation for type {@link ApiOrganizationProfileAvatarUrlMember1}
         * @return a {@link ApiOrganizationProfileAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiOrganizationProfileAvatarUrlMember1 getApiOrganizationProfileAvatarUrlMember1() {
            return this.apiOrganizationProfileAvatarUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiOrganizationProfileAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiOrganizationProfileAvatarUrlMember1());
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
                writer.writeObjectValue(null, this.getApiOrganizationProfileAvatarUrlMember1());
            }
        }
        /**
         * Sets the ApiOrganizationProfile_avatarUrlMember1 property value. Composed type representation for type {@link ApiOrganizationProfileAvatarUrlMember1}
         * @param value Value to set for the ApiOrganizationProfile_avatarUrlMember1 property.
         */
        public void setApiOrganizationProfileAvatarUrlMember1(@jakarta.annotation.Nullable final ApiOrganizationProfileAvatarUrlMember1 value) {
            this.apiOrganizationProfileAvatarUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiOrganizationProfileBannerUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiOrganizationProfileBannerUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiOrganizationProfileBannerUrlMember1}
         */
        private ApiOrganizationProfileBannerUrlMember1 apiOrganizationProfileBannerUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiOrganizationProfileBannerUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiOrganizationProfileBannerUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiOrganizationProfileBannerUrl result = new ApiOrganizationProfileBannerUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiOrganizationProfileBannerUrlMember1(new ApiOrganizationProfileBannerUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiOrganizationProfile_bannerUrlMember1 property value. Composed type representation for type {@link ApiOrganizationProfileBannerUrlMember1}
         * @return a {@link ApiOrganizationProfileBannerUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiOrganizationProfileBannerUrlMember1 getApiOrganizationProfileBannerUrlMember1() {
            return this.apiOrganizationProfileBannerUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiOrganizationProfileBannerUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiOrganizationProfileBannerUrlMember1());
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
                writer.writeObjectValue(null, this.getApiOrganizationProfileBannerUrlMember1());
            }
        }
        /**
         * Sets the ApiOrganizationProfile_bannerUrlMember1 property value. Composed type representation for type {@link ApiOrganizationProfileBannerUrlMember1}
         * @param value Value to set for the ApiOrganizationProfile_bannerUrlMember1 property.
         */
        public void setApiOrganizationProfileBannerUrlMember1(@jakarta.annotation.Nullable final ApiOrganizationProfileBannerUrlMember1 value) {
            this.apiOrganizationProfileBannerUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiOrganizationProfileCreatedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiOrganizationProfileCreatedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiOrganizationProfileCreatedAtMember1}
         */
        private ApiOrganizationProfileCreatedAtMember1 apiOrganizationProfileCreatedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiOrganizationProfileCreatedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiOrganizationProfileCreatedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiOrganizationProfileCreatedAt result = new ApiOrganizationProfileCreatedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiOrganizationProfileCreatedAtMember1(new ApiOrganizationProfileCreatedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiOrganizationProfile_createdAtMember1 property value. Composed type representation for type {@link ApiOrganizationProfileCreatedAtMember1}
         * @return a {@link ApiOrganizationProfileCreatedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiOrganizationProfileCreatedAtMember1 getApiOrganizationProfileCreatedAtMember1() {
            return this.apiOrganizationProfileCreatedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiOrganizationProfileCreatedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiOrganizationProfileCreatedAtMember1());
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
                writer.writeObjectValue(null, this.getApiOrganizationProfileCreatedAtMember1());
            }
        }
        /**
         * Sets the ApiOrganizationProfile_createdAtMember1 property value. Composed type representation for type {@link ApiOrganizationProfileCreatedAtMember1}
         * @param value Value to set for the ApiOrganizationProfile_createdAtMember1 property.
         */
        public void setApiOrganizationProfileCreatedAtMember1(@jakarta.annotation.Nullable final ApiOrganizationProfileCreatedAtMember1 value) {
            this.apiOrganizationProfileCreatedAtMember1 = value;
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
     * Composed type wrapper for classes {@link ApiOrganizationProfileDescriptionMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiOrganizationProfileDescription implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiOrganizationProfileDescriptionMember1}
         */
        private ApiOrganizationProfileDescriptionMember1 apiOrganizationProfileDescriptionMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiOrganizationProfileDescription}
         */
        @jakarta.annotation.Nonnull
        public static ApiOrganizationProfileDescription createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiOrganizationProfileDescription result = new ApiOrganizationProfileDescription();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiOrganizationProfileDescriptionMember1(new ApiOrganizationProfileDescriptionMember1());
            }
            return result;
        }
        /**
         * Gets the ApiOrganizationProfile_descriptionMember1 property value. Composed type representation for type {@link ApiOrganizationProfileDescriptionMember1}
         * @return a {@link ApiOrganizationProfileDescriptionMember1}
         */
        @jakarta.annotation.Nullable
        public ApiOrganizationProfileDescriptionMember1 getApiOrganizationProfileDescriptionMember1() {
            return this.apiOrganizationProfileDescriptionMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiOrganizationProfileDescriptionMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiOrganizationProfileDescriptionMember1());
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
                writer.writeObjectValue(null, this.getApiOrganizationProfileDescriptionMember1());
            }
        }
        /**
         * Sets the ApiOrganizationProfile_descriptionMember1 property value. Composed type representation for type {@link ApiOrganizationProfileDescriptionMember1}
         * @param value Value to set for the ApiOrganizationProfile_descriptionMember1 property.
         */
        public void setApiOrganizationProfileDescriptionMember1(@jakarta.annotation.Nullable final ApiOrganizationProfileDescriptionMember1 value) {
            this.apiOrganizationProfileDescriptionMember1 = value;
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
     * Composed type wrapper for classes {@link ApiOrganizationProfileSlugMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiOrganizationProfileSlug implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiOrganizationProfileSlugMember1}
         */
        private ApiOrganizationProfileSlugMember1 apiOrganizationProfileSlugMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiOrganizationProfileSlug}
         */
        @jakarta.annotation.Nonnull
        public static ApiOrganizationProfileSlug createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiOrganizationProfileSlug result = new ApiOrganizationProfileSlug();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiOrganizationProfileSlugMember1(new ApiOrganizationProfileSlugMember1());
            }
            return result;
        }
        /**
         * Gets the ApiOrganizationProfile_slugMember1 property value. Composed type representation for type {@link ApiOrganizationProfileSlugMember1}
         * @return a {@link ApiOrganizationProfileSlugMember1}
         */
        @jakarta.annotation.Nullable
        public ApiOrganizationProfileSlugMember1 getApiOrganizationProfileSlugMember1() {
            return this.apiOrganizationProfileSlugMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiOrganizationProfileSlugMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiOrganizationProfileSlugMember1());
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
                writer.writeObjectValue(null, this.getApiOrganizationProfileSlugMember1());
            }
        }
        /**
         * Sets the ApiOrganizationProfile_slugMember1 property value. Composed type representation for type {@link ApiOrganizationProfileSlugMember1}
         * @param value Value to set for the ApiOrganizationProfile_slugMember1 property.
         */
        public void setApiOrganizationProfileSlugMember1(@jakarta.annotation.Nullable final ApiOrganizationProfileSlugMember1 value) {
            this.apiOrganizationProfileSlugMember1 = value;
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
     * Composed type wrapper for classes {@link ApiOrganizationProfileTagMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiOrganizationProfileTag implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiOrganizationProfileTagMember1}
         */
        private ApiOrganizationProfileTagMember1 apiOrganizationProfileTagMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiOrganizationProfileTag}
         */
        @jakarta.annotation.Nonnull
        public static ApiOrganizationProfileTag createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiOrganizationProfileTag result = new ApiOrganizationProfileTag();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiOrganizationProfileTagMember1(new ApiOrganizationProfileTagMember1());
            }
            return result;
        }
        /**
         * Gets the ApiOrganizationProfile_tagMember1 property value. Composed type representation for type {@link ApiOrganizationProfileTagMember1}
         * @return a {@link ApiOrganizationProfileTagMember1}
         */
        @jakarta.annotation.Nullable
        public ApiOrganizationProfileTagMember1 getApiOrganizationProfileTagMember1() {
            return this.apiOrganizationProfileTagMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiOrganizationProfileTagMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiOrganizationProfileTagMember1());
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
                writer.writeObjectValue(null, this.getApiOrganizationProfileTagMember1());
            }
        }
        /**
         * Sets the ApiOrganizationProfile_tagMember1 property value. Composed type representation for type {@link ApiOrganizationProfileTagMember1}
         * @param value Value to set for the ApiOrganizationProfile_tagMember1 property.
         */
        public void setApiOrganizationProfileTagMember1(@jakarta.annotation.Nullable final ApiOrganizationProfileTagMember1 value) {
            this.apiOrganizationProfileTagMember1 = value;
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
