package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ComposedTypeWrapper;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.ParseNodeHelper;
import com.microsoft.kiota.serialization.SerializationWriter;
import com.microsoft.kiota.serialization.UntypedNode;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Public profile for a single league.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeagueProfile implements Parsable {
    /**
     * Currently active seasons.
     */
    private java.util.List<LeagueProfileActiveSeasons> activeSeasons;
    /**
     * League avatar image URL.
     */
    private LeagueProfileAvatarUrl avatarUrl;
    /**
     * League banner image URL.
     */
    private LeagueProfileBannerUrl bannerUrl;
    /**
     * Creation timestamp (epoch milliseconds).
     */
    private Double createdAt;
    /**
     * League description.
     */
    private String description;
    /**
     * Games associated with the league.
     */
    private java.util.List<LeagueProfileGames> games;
    /**
     * League ID.
     */
    private String id;
    /**
     * Whether the league is featured.
     */
    private Boolean isFeatured;
    /**
     * Whether the league is verified.
     */
    private Boolean isVerified;
    /**
     * League display name.
     */
    private String name;
    /**
     * URL-friendly league identifier.
     */
    private String slug;
    /**
     * Social media links.
     */
    private UntypedNode socials;
    /**
     * Number of staff members.
     */
    private Integer staffCount;
    /**
     * League status (e.g. active, inactive).
     */
    private String status;
    /**
     * Number of teams in the league.
     */
    private Integer teamCount;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeagueProfile}
     */
    @jakarta.annotation.Nonnull
    public static LeagueProfile createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeagueProfile();
    }
    /**
     * Gets the activeSeasons property value. Currently active seasons.
     * @return a {@link java.util.List<LeagueProfileActiveSeasons>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<LeagueProfileActiveSeasons> getActiveSeasons() {
        return this.activeSeasons;
    }
    /**
     * Gets the avatarUrl property value. League avatar image URL.
     * @return a {@link LeagueProfileAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public LeagueProfileAvatarUrl getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * Gets the bannerUrl property value. League banner image URL.
     * @return a {@link LeagueProfileBannerUrl}
     */
    @jakarta.annotation.Nullable
    public LeagueProfileBannerUrl getBannerUrl() {
        return this.bannerUrl;
    }
    /**
     * Gets the createdAt property value. Creation timestamp (epoch milliseconds).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getCreatedAt() {
        return this.createdAt;
    }
    /**
     * Gets the description property value. League description.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getDescription() {
        return this.description;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(15);
        deserializerMap.put("activeSeasons", (n) -> { this.setActiveSeasons(n.getCollectionOfObjectValues(LeagueProfileActiveSeasons::createFromDiscriminatorValue)); });
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getObjectValue(LeagueProfileAvatarUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("bannerUrl", (n) -> { this.setBannerUrl(n.getObjectValue(LeagueProfileBannerUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getDoubleValue()); });
        deserializerMap.put("description", (n) -> { this.setDescription(n.getStringValue()); });
        deserializerMap.put("games", (n) -> { this.setGames(n.getCollectionOfObjectValues(LeagueProfileGames::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isFeatured", (n) -> { this.setIsFeatured(n.getBooleanValue()); });
        deserializerMap.put("isVerified", (n) -> { this.setIsVerified(n.getBooleanValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("slug", (n) -> { this.setSlug(n.getStringValue()); });
        deserializerMap.put("socials", (n) -> { this.setSocials(n.getObjectValue(UntypedNode::createFromDiscriminatorValue)); });
        deserializerMap.put("staffCount", (n) -> { this.setStaffCount(n.getIntegerValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getStringValue()); });
        deserializerMap.put("teamCount", (n) -> { this.setTeamCount(n.getIntegerValue()); });
        return deserializerMap;
    }
    /**
     * Gets the games property value. Games associated with the league.
     * @return a {@link java.util.List<LeagueProfileGames>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<LeagueProfileGames> getGames() {
        return this.games;
    }
    /**
     * Gets the id property value. League ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the isFeatured property value. Whether the league is featured.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsFeatured() {
        return this.isFeatured;
    }
    /**
     * Gets the isVerified property value. Whether the league is verified.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsVerified() {
        return this.isVerified;
    }
    /**
     * Gets the name property value. League display name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the slug property value. URL-friendly league identifier.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSlug() {
        return this.slug;
    }
    /**
     * Gets the socials property value. Social media links.
     * @return a {@link UntypedNode}
     */
    @jakarta.annotation.Nullable
    public UntypedNode getSocials() {
        return this.socials;
    }
    /**
     * Gets the staffCount property value. Number of staff members.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getStaffCount() {
        return this.staffCount;
    }
    /**
     * Gets the status property value. League status (e.g. active, inactive).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getStatus() {
        return this.status;
    }
    /**
     * Gets the teamCount property value. Number of teams in the league.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getTeamCount() {
        return this.teamCount;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfObjectValues("activeSeasons", this.getActiveSeasons());
        writer.writeObjectValue("avatarUrl", this.getAvatarUrl());
        writer.writeObjectValue("bannerUrl", this.getBannerUrl());
        writer.writeDoubleValue("createdAt", this.getCreatedAt());
        writer.writeStringValue("description", this.getDescription());
        writer.writeCollectionOfObjectValues("games", this.getGames());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isFeatured", this.getIsFeatured());
        writer.writeBooleanValue("isVerified", this.getIsVerified());
        writer.writeStringValue("name", this.getName());
        writer.writeStringValue("slug", this.getSlug());
        writer.writeObjectValue("socials", this.getSocials());
        writer.writeIntegerValue("staffCount", this.getStaffCount());
        writer.writeStringValue("status", this.getStatus());
        writer.writeIntegerValue("teamCount", this.getTeamCount());
    }
    /**
     * Sets the activeSeasons property value. Currently active seasons.
     * @param value Value to set for the activeSeasons property.
     */
    public void setActiveSeasons(@jakarta.annotation.Nullable final java.util.List<LeagueProfileActiveSeasons> value) {
        this.activeSeasons = value;
    }
    /**
     * Sets the avatarUrl property value. League avatar image URL.
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final LeagueProfileAvatarUrl value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the bannerUrl property value. League banner image URL.
     * @param value Value to set for the bannerUrl property.
     */
    public void setBannerUrl(@jakarta.annotation.Nullable final LeagueProfileBannerUrl value) {
        this.bannerUrl = value;
    }
    /**
     * Sets the createdAt property value. Creation timestamp (epoch milliseconds).
     * @param value Value to set for the createdAt property.
     */
    public void setCreatedAt(@jakarta.annotation.Nullable final Double value) {
        this.createdAt = value;
    }
    /**
     * Sets the description property value. League description.
     * @param value Value to set for the description property.
     */
    public void setDescription(@jakarta.annotation.Nullable final String value) {
        this.description = value;
    }
    /**
     * Sets the games property value. Games associated with the league.
     * @param value Value to set for the games property.
     */
    public void setGames(@jakarta.annotation.Nullable final java.util.List<LeagueProfileGames> value) {
        this.games = value;
    }
    /**
     * Sets the id property value. League ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the isFeatured property value. Whether the league is featured.
     * @param value Value to set for the isFeatured property.
     */
    public void setIsFeatured(@jakarta.annotation.Nullable final Boolean value) {
        this.isFeatured = value;
    }
    /**
     * Sets the isVerified property value. Whether the league is verified.
     * @param value Value to set for the isVerified property.
     */
    public void setIsVerified(@jakarta.annotation.Nullable final Boolean value) {
        this.isVerified = value;
    }
    /**
     * Sets the name property value. League display name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the slug property value. URL-friendly league identifier.
     * @param value Value to set for the slug property.
     */
    public void setSlug(@jakarta.annotation.Nullable final String value) {
        this.slug = value;
    }
    /**
     * Sets the socials property value. Social media links.
     * @param value Value to set for the socials property.
     */
    public void setSocials(@jakarta.annotation.Nullable final UntypedNode value) {
        this.socials = value;
    }
    /**
     * Sets the staffCount property value. Number of staff members.
     * @param value Value to set for the staffCount property.
     */
    public void setStaffCount(@jakarta.annotation.Nullable final Integer value) {
        this.staffCount = value;
    }
    /**
     * Sets the status property value. League status (e.g. active, inactive).
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final String value) {
        this.status = value;
    }
    /**
     * Sets the teamCount property value. Number of teams in the league.
     * @param value Value to set for the teamCount property.
     */
    public void setTeamCount(@jakarta.annotation.Nullable final Integer value) {
        this.teamCount = value;
    }
    /**
     * Composed type wrapper for classes {@link LeagueProfileAvatarUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class LeagueProfileAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link LeagueProfileAvatarUrlMember1}
         */
        private LeagueProfileAvatarUrlMember1 leagueProfileAvatarUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link LeagueProfileAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static LeagueProfileAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final LeagueProfileAvatarUrl result = new LeagueProfileAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setLeagueProfileAvatarUrlMember1(new LeagueProfileAvatarUrlMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getLeagueProfileAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getLeagueProfileAvatarUrlMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the LeagueProfile_avatarUrlMember1 property value. Composed type representation for type {@link LeagueProfileAvatarUrlMember1}
         * @return a {@link LeagueProfileAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public LeagueProfileAvatarUrlMember1 getLeagueProfileAvatarUrlMember1() {
            return this.leagueProfileAvatarUrlMember1;
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
                writer.writeObjectValue(null, this.getLeagueProfileAvatarUrlMember1());
            }
        }
        /**
         * Sets the LeagueProfile_avatarUrlMember1 property value. Composed type representation for type {@link LeagueProfileAvatarUrlMember1}
         * @param value Value to set for the LeagueProfile_avatarUrlMember1 property.
         */
        public void setLeagueProfileAvatarUrlMember1(@jakarta.annotation.Nullable final LeagueProfileAvatarUrlMember1 value) {
            this.leagueProfileAvatarUrlMember1 = value;
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
     * Composed type wrapper for classes {@link LeagueProfileBannerUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class LeagueProfileBannerUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link LeagueProfileBannerUrlMember1}
         */
        private LeagueProfileBannerUrlMember1 leagueProfileBannerUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link LeagueProfileBannerUrl}
         */
        @jakarta.annotation.Nonnull
        public static LeagueProfileBannerUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final LeagueProfileBannerUrl result = new LeagueProfileBannerUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setLeagueProfileBannerUrlMember1(new LeagueProfileBannerUrlMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getLeagueProfileBannerUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getLeagueProfileBannerUrlMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the LeagueProfile_bannerUrlMember1 property value. Composed type representation for type {@link LeagueProfileBannerUrlMember1}
         * @return a {@link LeagueProfileBannerUrlMember1}
         */
        @jakarta.annotation.Nullable
        public LeagueProfileBannerUrlMember1 getLeagueProfileBannerUrlMember1() {
            return this.leagueProfileBannerUrlMember1;
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
                writer.writeObjectValue(null, this.getLeagueProfileBannerUrlMember1());
            }
        }
        /**
         * Sets the LeagueProfile_bannerUrlMember1 property value. Composed type representation for type {@link LeagueProfileBannerUrlMember1}
         * @param value Value to set for the LeagueProfile_bannerUrlMember1 property.
         */
        public void setLeagueProfileBannerUrlMember1(@jakarta.annotation.Nullable final LeagueProfileBannerUrlMember1 value) {
            this.leagueProfileBannerUrlMember1 = value;
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
