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
 * API-safe team profile.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiTeamProfile implements Parsable {
    /**
     * The avatarUrl property
     */
    private ApiTeamProfileAvatarUrl avatarUrl;
    /**
     * The bannerUrl property
     */
    private ApiTeamProfileBannerUrl bannerUrl;
    /**
     * The createdAt property
     */
    private ApiTeamProfileCreatedAt createdAt;
    /**
     * The description property
     */
    private ApiTeamProfileDescription description;
    /**
     * The draws property
     */
    private Integer draws;
    /**
     * The experience property
     */
    private Double experience;
    /**
     * The gameId property
     */
    private ApiTeamProfileGameId gameId;
    /**
     * Team ID.
     */
    private String id;
    /**
     * The isMember property
     */
    private Boolean isMember;
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
     * Team name.
     */
    private String name;
    /**
     * The organizationId property
     */
    private ApiTeamProfileOrganizationId organizationId;
    /**
     * The slug property
     */
    private ApiTeamProfileSlug slug;
    /**
     * The tag property
     */
    private ApiTeamProfileTag tag;
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
     * @return a {@link ApiTeamProfile}
     */
    @jakarta.annotation.Nonnull
    public static ApiTeamProfile createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiTeamProfile();
    }
    /**
     * Gets the avatarUrl property value. The avatarUrl property
     * @return a {@link ApiTeamProfileAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public ApiTeamProfileAvatarUrl getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * Gets the bannerUrl property value. The bannerUrl property
     * @return a {@link ApiTeamProfileBannerUrl}
     */
    @jakarta.annotation.Nullable
    public ApiTeamProfileBannerUrl getBannerUrl() {
        return this.bannerUrl;
    }
    /**
     * Gets the createdAt property value. The createdAt property
     * @return a {@link ApiTeamProfileCreatedAt}
     */
    @jakarta.annotation.Nullable
    public ApiTeamProfileCreatedAt getCreatedAt() {
        return this.createdAt;
    }
    /**
     * Gets the description property value. The description property
     * @return a {@link ApiTeamProfileDescription}
     */
    @jakarta.annotation.Nullable
    public ApiTeamProfileDescription getDescription() {
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
     * Gets the experience property value. The experience property
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getExperience() {
        return this.experience;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(18);
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getObjectValue(ApiTeamProfileAvatarUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("bannerUrl", (n) -> { this.setBannerUrl(n.getObjectValue(ApiTeamProfileBannerUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getObjectValue(ApiTeamProfileCreatedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("description", (n) -> { this.setDescription(n.getObjectValue(ApiTeamProfileDescription::createFromDiscriminatorValue)); });
        deserializerMap.put("draws", (n) -> { this.setDraws(n.getIntegerValue()); });
        deserializerMap.put("experience", (n) -> { this.setExperience(n.getDoubleValue()); });
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getObjectValue(ApiTeamProfileGameId::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isMember", (n) -> { this.setIsMember(n.getBooleanValue()); });
        deserializerMap.put("losses", (n) -> { this.setLosses(n.getIntegerValue()); });
        deserializerMap.put("matchesPlayed", (n) -> { this.setMatchesPlayed(n.getIntegerValue()); });
        deserializerMap.put("memberCount", (n) -> { this.setMemberCount(n.getIntegerValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("organizationId", (n) -> { this.setOrganizationId(n.getObjectValue(ApiTeamProfileOrganizationId::createFromDiscriminatorValue)); });
        deserializerMap.put("slug", (n) -> { this.setSlug(n.getObjectValue(ApiTeamProfileSlug::createFromDiscriminatorValue)); });
        deserializerMap.put("tag", (n) -> { this.setTag(n.getObjectValue(ApiTeamProfileTag::createFromDiscriminatorValue)); });
        deserializerMap.put("visibility", (n) -> { this.setVisibility(n.getEnumValue(ProfileVisibility::forValue)); });
        deserializerMap.put("wins", (n) -> { this.setWins(n.getIntegerValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gameId property value. The gameId property
     * @return a {@link ApiTeamProfileGameId}
     */
    @jakarta.annotation.Nullable
    public ApiTeamProfileGameId getGameId() {
        return this.gameId;
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
     * Gets the isMember property value. The isMember property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsMember() {
        return this.isMember;
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
     * Gets the name property value. Team name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the organizationId property value. The organizationId property
     * @return a {@link ApiTeamProfileOrganizationId}
     */
    @jakarta.annotation.Nullable
    public ApiTeamProfileOrganizationId getOrganizationId() {
        return this.organizationId;
    }
    /**
     * Gets the slug property value. The slug property
     * @return a {@link ApiTeamProfileSlug}
     */
    @jakarta.annotation.Nullable
    public ApiTeamProfileSlug getSlug() {
        return this.slug;
    }
    /**
     * Gets the tag property value. The tag property
     * @return a {@link ApiTeamProfileTag}
     */
    @jakarta.annotation.Nullable
    public ApiTeamProfileTag getTag() {
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
        writer.writeDoubleValue("experience", this.getExperience());
        writer.writeObjectValue("gameId", this.getGameId());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isMember", this.getIsMember());
        writer.writeIntegerValue("losses", this.getLosses());
        writer.writeIntegerValue("matchesPlayed", this.getMatchesPlayed());
        writer.writeIntegerValue("memberCount", this.getMemberCount());
        writer.writeStringValue("name", this.getName());
        writer.writeObjectValue("organizationId", this.getOrganizationId());
        writer.writeObjectValue("slug", this.getSlug());
        writer.writeObjectValue("tag", this.getTag());
        writer.writeEnumValue("visibility", this.getVisibility());
        writer.writeIntegerValue("wins", this.getWins());
    }
    /**
     * Sets the avatarUrl property value. The avatarUrl property
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final ApiTeamProfileAvatarUrl value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the bannerUrl property value. The bannerUrl property
     * @param value Value to set for the bannerUrl property.
     */
    public void setBannerUrl(@jakarta.annotation.Nullable final ApiTeamProfileBannerUrl value) {
        this.bannerUrl = value;
    }
    /**
     * Sets the createdAt property value. The createdAt property
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final ApiTeamProfileCreatedAt value) {
        this.createdAt = value;
    }
    /**
     * Sets the description property value. The description property
     * @param value Value to set for the description property.
     */
    public void setDescription(@jakarta.annotation.Nullable final ApiTeamProfileDescription value) {
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
     * Sets the experience property value. The experience property
     * @param value Value to set for the experience property.
     */
    public void setExperience(@jakarta.annotation.Nullable final Double value) {
        this.experience = value;
    }
    /**
     * Sets the gameId property value. The gameId property
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final ApiTeamProfileGameId value) {
        this.gameId = value;
    }
    /**
     * Sets the id property value. Team ID.
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
     * Sets the name property value. Team name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the organizationId property value. The organizationId property
     * @param value Value to set for the organizationId property.
     */
    public void setOrganizationId(@jakarta.annotation.Nullable final ApiTeamProfileOrganizationId value) {
        this.organizationId = value;
    }
    /**
     * Sets the slug property value. The slug property
     * @param value Value to set for the slug property.
     */
    public void setSlug(@jakarta.annotation.Nullable final ApiTeamProfileSlug value) {
        this.slug = value;
    }
    /**
     * Sets the tag property value. The tag property
     * @param value Value to set for the tag property.
     */
    public void setTag(@jakarta.annotation.Nullable final ApiTeamProfileTag value) {
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
     * Sets the wins property value. The wins property
     * @param value Value to set for the wins property.
     */
    public void setWins(@jakarta.annotation.Nullable final Integer value) {
        this.wins = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiTeamProfileAvatarUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiTeamProfileAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiTeamProfileAvatarUrlMember1}
         */
        private ApiTeamProfileAvatarUrlMember1 apiTeamProfileAvatarUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiTeamProfileAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiTeamProfileAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiTeamProfileAvatarUrl result = new ApiTeamProfileAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiTeamProfileAvatarUrlMember1(new ApiTeamProfileAvatarUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiTeamProfile_avatarUrlMember1 property value. Composed type representation for type {@link ApiTeamProfileAvatarUrlMember1}
         * @return a {@link ApiTeamProfileAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiTeamProfileAvatarUrlMember1 getApiTeamProfileAvatarUrlMember1() {
            return this.apiTeamProfileAvatarUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiTeamProfileAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiTeamProfileAvatarUrlMember1());
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
                writer.writeObjectValue(null, this.getApiTeamProfileAvatarUrlMember1());
            }
        }
        /**
         * Sets the ApiTeamProfile_avatarUrlMember1 property value. Composed type representation for type {@link ApiTeamProfileAvatarUrlMember1}
         * @param value Value to set for the ApiTeamProfile_avatarUrlMember1 property.
         */
        public void setApiTeamProfileAvatarUrlMember1(@jakarta.annotation.Nullable final ApiTeamProfileAvatarUrlMember1 value) {
            this.apiTeamProfileAvatarUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiTeamProfileBannerUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiTeamProfileBannerUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiTeamProfileBannerUrlMember1}
         */
        private ApiTeamProfileBannerUrlMember1 apiTeamProfileBannerUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiTeamProfileBannerUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiTeamProfileBannerUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiTeamProfileBannerUrl result = new ApiTeamProfileBannerUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiTeamProfileBannerUrlMember1(new ApiTeamProfileBannerUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiTeamProfile_bannerUrlMember1 property value. Composed type representation for type {@link ApiTeamProfileBannerUrlMember1}
         * @return a {@link ApiTeamProfileBannerUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiTeamProfileBannerUrlMember1 getApiTeamProfileBannerUrlMember1() {
            return this.apiTeamProfileBannerUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiTeamProfileBannerUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiTeamProfileBannerUrlMember1());
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
                writer.writeObjectValue(null, this.getApiTeamProfileBannerUrlMember1());
            }
        }
        /**
         * Sets the ApiTeamProfile_bannerUrlMember1 property value. Composed type representation for type {@link ApiTeamProfileBannerUrlMember1}
         * @param value Value to set for the ApiTeamProfile_bannerUrlMember1 property.
         */
        public void setApiTeamProfileBannerUrlMember1(@jakarta.annotation.Nullable final ApiTeamProfileBannerUrlMember1 value) {
            this.apiTeamProfileBannerUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiTeamProfileCreatedAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiTeamProfileCreatedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiTeamProfileCreatedAtMember1}
         */
        private ApiTeamProfileCreatedAtMember1 apiTeamProfileCreatedAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiTeamProfileCreatedAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiTeamProfileCreatedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiTeamProfileCreatedAt result = new ApiTeamProfileCreatedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiTeamProfileCreatedAtMember1(new ApiTeamProfileCreatedAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiTeamProfile_createdAtMember1 property value. Composed type representation for type {@link ApiTeamProfileCreatedAtMember1}
         * @return a {@link ApiTeamProfileCreatedAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiTeamProfileCreatedAtMember1 getApiTeamProfileCreatedAtMember1() {
            return this.apiTeamProfileCreatedAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiTeamProfileCreatedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiTeamProfileCreatedAtMember1());
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
                writer.writeObjectValue(null, this.getApiTeamProfileCreatedAtMember1());
            }
        }
        /**
         * Sets the ApiTeamProfile_createdAtMember1 property value. Composed type representation for type {@link ApiTeamProfileCreatedAtMember1}
         * @param value Value to set for the ApiTeamProfile_createdAtMember1 property.
         */
        public void setApiTeamProfileCreatedAtMember1(@jakarta.annotation.Nullable final ApiTeamProfileCreatedAtMember1 value) {
            this.apiTeamProfileCreatedAtMember1 = value;
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
     * Composed type wrapper for classes {@link ApiTeamProfileDescriptionMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiTeamProfileDescription implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiTeamProfileDescriptionMember1}
         */
        private ApiTeamProfileDescriptionMember1 apiTeamProfileDescriptionMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiTeamProfileDescription}
         */
        @jakarta.annotation.Nonnull
        public static ApiTeamProfileDescription createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiTeamProfileDescription result = new ApiTeamProfileDescription();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiTeamProfileDescriptionMember1(new ApiTeamProfileDescriptionMember1());
            }
            return result;
        }
        /**
         * Gets the ApiTeamProfile_descriptionMember1 property value. Composed type representation for type {@link ApiTeamProfileDescriptionMember1}
         * @return a {@link ApiTeamProfileDescriptionMember1}
         */
        @jakarta.annotation.Nullable
        public ApiTeamProfileDescriptionMember1 getApiTeamProfileDescriptionMember1() {
            return this.apiTeamProfileDescriptionMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiTeamProfileDescriptionMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiTeamProfileDescriptionMember1());
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
                writer.writeObjectValue(null, this.getApiTeamProfileDescriptionMember1());
            }
        }
        /**
         * Sets the ApiTeamProfile_descriptionMember1 property value. Composed type representation for type {@link ApiTeamProfileDescriptionMember1}
         * @param value Value to set for the ApiTeamProfile_descriptionMember1 property.
         */
        public void setApiTeamProfileDescriptionMember1(@jakarta.annotation.Nullable final ApiTeamProfileDescriptionMember1 value) {
            this.apiTeamProfileDescriptionMember1 = value;
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
     * Composed type wrapper for classes {@link ApiTeamProfileGameIdMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiTeamProfileGameId implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiTeamProfileGameIdMember1}
         */
        private ApiTeamProfileGameIdMember1 apiTeamProfileGameIdMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiTeamProfileGameId}
         */
        @jakarta.annotation.Nonnull
        public static ApiTeamProfileGameId createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiTeamProfileGameId result = new ApiTeamProfileGameId();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiTeamProfileGameIdMember1(new ApiTeamProfileGameIdMember1());
            }
            return result;
        }
        /**
         * Gets the ApiTeamProfile_gameIdMember1 property value. Composed type representation for type {@link ApiTeamProfileGameIdMember1}
         * @return a {@link ApiTeamProfileGameIdMember1}
         */
        @jakarta.annotation.Nullable
        public ApiTeamProfileGameIdMember1 getApiTeamProfileGameIdMember1() {
            return this.apiTeamProfileGameIdMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiTeamProfileGameIdMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiTeamProfileGameIdMember1());
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
                writer.writeObjectValue(null, this.getApiTeamProfileGameIdMember1());
            }
        }
        /**
         * Sets the ApiTeamProfile_gameIdMember1 property value. Composed type representation for type {@link ApiTeamProfileGameIdMember1}
         * @param value Value to set for the ApiTeamProfile_gameIdMember1 property.
         */
        public void setApiTeamProfileGameIdMember1(@jakarta.annotation.Nullable final ApiTeamProfileGameIdMember1 value) {
            this.apiTeamProfileGameIdMember1 = value;
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
     * Composed type wrapper for classes {@link ApiTeamProfileOrganizationIdMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiTeamProfileOrganizationId implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiTeamProfileOrganizationIdMember1}
         */
        private ApiTeamProfileOrganizationIdMember1 apiTeamProfileOrganizationIdMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiTeamProfileOrganizationId}
         */
        @jakarta.annotation.Nonnull
        public static ApiTeamProfileOrganizationId createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiTeamProfileOrganizationId result = new ApiTeamProfileOrganizationId();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiTeamProfileOrganizationIdMember1(new ApiTeamProfileOrganizationIdMember1());
            }
            return result;
        }
        /**
         * Gets the ApiTeamProfile_organizationIdMember1 property value. Composed type representation for type {@link ApiTeamProfileOrganizationIdMember1}
         * @return a {@link ApiTeamProfileOrganizationIdMember1}
         */
        @jakarta.annotation.Nullable
        public ApiTeamProfileOrganizationIdMember1 getApiTeamProfileOrganizationIdMember1() {
            return this.apiTeamProfileOrganizationIdMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiTeamProfileOrganizationIdMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiTeamProfileOrganizationIdMember1());
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
                writer.writeObjectValue(null, this.getApiTeamProfileOrganizationIdMember1());
            }
        }
        /**
         * Sets the ApiTeamProfile_organizationIdMember1 property value. Composed type representation for type {@link ApiTeamProfileOrganizationIdMember1}
         * @param value Value to set for the ApiTeamProfile_organizationIdMember1 property.
         */
        public void setApiTeamProfileOrganizationIdMember1(@jakarta.annotation.Nullable final ApiTeamProfileOrganizationIdMember1 value) {
            this.apiTeamProfileOrganizationIdMember1 = value;
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
     * Composed type wrapper for classes {@link ApiTeamProfileSlugMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiTeamProfileSlug implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiTeamProfileSlugMember1}
         */
        private ApiTeamProfileSlugMember1 apiTeamProfileSlugMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiTeamProfileSlug}
         */
        @jakarta.annotation.Nonnull
        public static ApiTeamProfileSlug createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiTeamProfileSlug result = new ApiTeamProfileSlug();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiTeamProfileSlugMember1(new ApiTeamProfileSlugMember1());
            }
            return result;
        }
        /**
         * Gets the ApiTeamProfile_slugMember1 property value. Composed type representation for type {@link ApiTeamProfileSlugMember1}
         * @return a {@link ApiTeamProfileSlugMember1}
         */
        @jakarta.annotation.Nullable
        public ApiTeamProfileSlugMember1 getApiTeamProfileSlugMember1() {
            return this.apiTeamProfileSlugMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiTeamProfileSlugMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiTeamProfileSlugMember1());
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
                writer.writeObjectValue(null, this.getApiTeamProfileSlugMember1());
            }
        }
        /**
         * Sets the ApiTeamProfile_slugMember1 property value. Composed type representation for type {@link ApiTeamProfileSlugMember1}
         * @param value Value to set for the ApiTeamProfile_slugMember1 property.
         */
        public void setApiTeamProfileSlugMember1(@jakarta.annotation.Nullable final ApiTeamProfileSlugMember1 value) {
            this.apiTeamProfileSlugMember1 = value;
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
     * Composed type wrapper for classes {@link ApiTeamProfileTagMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiTeamProfileTag implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiTeamProfileTagMember1}
         */
        private ApiTeamProfileTagMember1 apiTeamProfileTagMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiTeamProfileTag}
         */
        @jakarta.annotation.Nonnull
        public static ApiTeamProfileTag createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiTeamProfileTag result = new ApiTeamProfileTag();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiTeamProfileTagMember1(new ApiTeamProfileTagMember1());
            }
            return result;
        }
        /**
         * Gets the ApiTeamProfile_tagMember1 property value. Composed type representation for type {@link ApiTeamProfileTagMember1}
         * @return a {@link ApiTeamProfileTagMember1}
         */
        @jakarta.annotation.Nullable
        public ApiTeamProfileTagMember1 getApiTeamProfileTagMember1() {
            return this.apiTeamProfileTagMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiTeamProfileTagMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiTeamProfileTagMember1());
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
                writer.writeObjectValue(null, this.getApiTeamProfileTagMember1());
            }
        }
        /**
         * Sets the ApiTeamProfile_tagMember1 property value. Composed type representation for type {@link ApiTeamProfileTagMember1}
         * @param value Value to set for the ApiTeamProfile_tagMember1 property.
         */
        public void setApiTeamProfileTagMember1(@jakarta.annotation.Nullable final ApiTeamProfileTagMember1 value) {
            this.apiTeamProfileTagMember1 = value;
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
