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
 * Summary view of a league for discovery results.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeagueSummary implements Parsable {
    /**
     * League avatar image URL.
     */
    private LeagueSummaryAvatarUrl avatarUrl;
    /**
     * League banner image URL.
     */
    private LeagueSummaryBannerUrl bannerUrl;
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
    private java.util.List<LeagueSummaryGames> games;
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
     * Aggregate season state across the league&apos;s games.
     */
    private LeagueSummarySeasonStatus seasonStatus;
    /**
     * URL-friendly league identifier.
     */
    private String slug;
    /**
     * League status.
     */
    private String status;
    /**
     * Number of teams in the league.
     */
    private Integer teamCount;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link LeagueSummary}
     */
    @jakarta.annotation.Nonnull
    public static LeagueSummary createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new LeagueSummary();
    }
    /**
     * Gets the avatarUrl property value. League avatar image URL.
     * @return a {@link LeagueSummaryAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public LeagueSummaryAvatarUrl getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * Gets the bannerUrl property value. League banner image URL.
     * @return a {@link LeagueSummaryBannerUrl}
     */
    @jakarta.annotation.Nullable
    public LeagueSummaryBannerUrl getBannerUrl() {
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(13);
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getObjectValue(LeagueSummaryAvatarUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("bannerUrl", (n) -> { this.setBannerUrl(n.getObjectValue(LeagueSummaryBannerUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("createdAt", (n) -> { this.setCreatedAt(n.getDoubleValue()); });
        deserializerMap.put("description", (n) -> { this.setDescription(n.getStringValue()); });
        deserializerMap.put("games", (n) -> { this.setGames(n.getCollectionOfObjectValues(LeagueSummaryGames::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isFeatured", (n) -> { this.setIsFeatured(n.getBooleanValue()); });
        deserializerMap.put("isVerified", (n) -> { this.setIsVerified(n.getBooleanValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("seasonStatus", (n) -> { this.setSeasonStatus(n.getEnumValue(LeagueSummarySeasonStatus::forValue)); });
        deserializerMap.put("slug", (n) -> { this.setSlug(n.getStringValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getStringValue()); });
        deserializerMap.put("teamCount", (n) -> { this.setTeamCount(n.getIntegerValue()); });
        return deserializerMap;
    }
    /**
     * Gets the games property value. Games associated with the league.
     * @return a {@link java.util.List<LeagueSummaryGames>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<LeagueSummaryGames> getGames() {
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
     * Gets the seasonStatus property value. Aggregate season state across the league&apos;s games.
     * @return a {@link LeagueSummarySeasonStatus}
     */
    @jakarta.annotation.Nullable
    public LeagueSummarySeasonStatus getSeasonStatus() {
        return this.seasonStatus;
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
     * Gets the status property value. League status.
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
        writer.writeObjectValue("avatarUrl", this.getAvatarUrl());
        writer.writeObjectValue("bannerUrl", this.getBannerUrl());
        writer.writeDoubleValue("createdAt", this.getCreatedAt());
        writer.writeStringValue("description", this.getDescription());
        writer.writeCollectionOfObjectValues("games", this.getGames());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isFeatured", this.getIsFeatured());
        writer.writeBooleanValue("isVerified", this.getIsVerified());
        writer.writeStringValue("name", this.getName());
        writer.writeEnumValue("seasonStatus", this.getSeasonStatus());
        writer.writeStringValue("slug", this.getSlug());
        writer.writeStringValue("status", this.getStatus());
        writer.writeIntegerValue("teamCount", this.getTeamCount());
    }
    /**
     * Sets the avatarUrl property value. League avatar image URL.
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final LeagueSummaryAvatarUrl value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the bannerUrl property value. League banner image URL.
     * @param value Value to set for the bannerUrl property.
     */
    public void setBannerUrl(@jakarta.annotation.Nullable final LeagueSummaryBannerUrl value) {
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
    public void setGames(@jakarta.annotation.Nullable final java.util.List<LeagueSummaryGames> value) {
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
     * Sets the seasonStatus property value. Aggregate season state across the league&apos;s games.
     * @param value Value to set for the seasonStatus property.
     */
    public void setSeasonStatus(@jakarta.annotation.Nullable final LeagueSummarySeasonStatus value) {
        this.seasonStatus = value;
    }
    /**
     * Sets the slug property value. URL-friendly league identifier.
     * @param value Value to set for the slug property.
     */
    public void setSlug(@jakarta.annotation.Nullable final String value) {
        this.slug = value;
    }
    /**
     * Sets the status property value. League status.
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
     * Composed type wrapper for classes {@link LeagueSummaryAvatarUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class LeagueSummaryAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link LeagueSummaryAvatarUrlMember1}
         */
        private LeagueSummaryAvatarUrlMember1 leagueSummaryAvatarUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link LeagueSummaryAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static LeagueSummaryAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final LeagueSummaryAvatarUrl result = new LeagueSummaryAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setLeagueSummaryAvatarUrlMember1(new LeagueSummaryAvatarUrlMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getLeagueSummaryAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getLeagueSummaryAvatarUrlMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the LeagueSummary_avatarUrlMember1 property value. Composed type representation for type {@link LeagueSummaryAvatarUrlMember1}
         * @return a {@link LeagueSummaryAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public LeagueSummaryAvatarUrlMember1 getLeagueSummaryAvatarUrlMember1() {
            return this.leagueSummaryAvatarUrlMember1;
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
                writer.writeObjectValue(null, this.getLeagueSummaryAvatarUrlMember1());
            }
        }
        /**
         * Sets the LeagueSummary_avatarUrlMember1 property value. Composed type representation for type {@link LeagueSummaryAvatarUrlMember1}
         * @param value Value to set for the LeagueSummary_avatarUrlMember1 property.
         */
        public void setLeagueSummaryAvatarUrlMember1(@jakarta.annotation.Nullable final LeagueSummaryAvatarUrlMember1 value) {
            this.leagueSummaryAvatarUrlMember1 = value;
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
     * Composed type wrapper for classes {@link LeagueSummaryBannerUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class LeagueSummaryBannerUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link LeagueSummaryBannerUrlMember1}
         */
        private LeagueSummaryBannerUrlMember1 leagueSummaryBannerUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link LeagueSummaryBannerUrl}
         */
        @jakarta.annotation.Nonnull
        public static LeagueSummaryBannerUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final LeagueSummaryBannerUrl result = new LeagueSummaryBannerUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setLeagueSummaryBannerUrlMember1(new LeagueSummaryBannerUrlMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getLeagueSummaryBannerUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getLeagueSummaryBannerUrlMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the LeagueSummary_bannerUrlMember1 property value. Composed type representation for type {@link LeagueSummaryBannerUrlMember1}
         * @return a {@link LeagueSummaryBannerUrlMember1}
         */
        @jakarta.annotation.Nullable
        public LeagueSummaryBannerUrlMember1 getLeagueSummaryBannerUrlMember1() {
            return this.leagueSummaryBannerUrlMember1;
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
                writer.writeObjectValue(null, this.getLeagueSummaryBannerUrlMember1());
            }
        }
        /**
         * Sets the LeagueSummary_bannerUrlMember1 property value. Composed type representation for type {@link LeagueSummaryBannerUrlMember1}
         * @param value Value to set for the LeagueSummary_bannerUrlMember1 property.
         */
        public void setLeagueSummaryBannerUrlMember1(@jakarta.annotation.Nullable final LeagueSummaryBannerUrlMember1 value) {
            this.leagueSummaryBannerUrlMember1 = value;
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
