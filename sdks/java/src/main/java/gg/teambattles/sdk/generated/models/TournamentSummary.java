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
 * Summary view of a tournament for discovery.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentSummary implements Parsable {
    /**
     * Banner image URL.
     */
    private TournamentSummaryBannerUrl bannerUrl;
    /**
     * Short tournament description.
     */
    private String description;
    /**
     * Bracket format of a tournament.
     */
    private TournamentFormat format;
    /**
     * Game summary, or null if the game row is missing.
     */
    private UntypedNode game;
    /**
     * Tournament ID.
     */
    private String id;
    /**
     * Whether the featured placement is live at request time.
     */
    private Boolean isFeatured;
    /**
     * Logo image URL.
     */
    private TournamentSummaryLogoUrl logoUrl;
    /**
     * Participant cap.
     */
    private Integer maxParticipants;
    /**
     * Tournament display name.
     */
    private String name;
    /**
     * Current number of participants.
     */
    private Integer participantCount;
    /**
     * ISO currency code of the pool.
     */
    private String prizeCurrency;
    /**
     * Total prize pool.
     */
    private Double prizePool;
    /**
     * URL-friendly tournament identifier.
     */
    private String slug;
    /**
     * Scheduled start (epoch milliseconds).
     */
    private Double startsAt;
    /**
     * Lifecycle status of a tournament.
     */
    private TournamentStatus status;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentSummary}
     */
    @jakarta.annotation.Nonnull
    public static TournamentSummary createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentSummary();
    }
    /**
     * Gets the bannerUrl property value. Banner image URL.
     * @return a {@link TournamentSummaryBannerUrl}
     */
    @jakarta.annotation.Nullable
    public TournamentSummaryBannerUrl getBannerUrl() {
        return this.bannerUrl;
    }
    /**
     * Gets the description property value. Short tournament description.
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
        deserializerMap.put("bannerUrl", (n) -> { this.setBannerUrl(n.getObjectValue(TournamentSummaryBannerUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("description", (n) -> { this.setDescription(n.getStringValue()); });
        deserializerMap.put("format", (n) -> { this.setFormat(n.getEnumValue(TournamentFormat::forValue)); });
        deserializerMap.put("game", (n) -> { this.setGame(n.getObjectValue(UntypedNode::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isFeatured", (n) -> { this.setIsFeatured(n.getBooleanValue()); });
        deserializerMap.put("logoUrl", (n) -> { this.setLogoUrl(n.getObjectValue(TournamentSummaryLogoUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("maxParticipants", (n) -> { this.setMaxParticipants(n.getIntegerValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("participantCount", (n) -> { this.setParticipantCount(n.getIntegerValue()); });
        deserializerMap.put("prizeCurrency", (n) -> { this.setPrizeCurrency(n.getStringValue()); });
        deserializerMap.put("prizePool", (n) -> { this.setPrizePool(n.getDoubleValue()); });
        deserializerMap.put("slug", (n) -> { this.setSlug(n.getStringValue()); });
        deserializerMap.put("startsAt", (n) -> { this.setStartsAt(n.getDoubleValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(TournamentStatus::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the format property value. Bracket format of a tournament.
     * @return a {@link TournamentFormat}
     */
    @jakarta.annotation.Nullable
    public TournamentFormat getFormat() {
        return this.format;
    }
    /**
     * Gets the game property value. Game summary, or null if the game row is missing.
     * @return a {@link UntypedNode}
     */
    @jakarta.annotation.Nullable
    public UntypedNode getGame() {
        return this.game;
    }
    /**
     * Gets the id property value. Tournament ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the isFeatured property value. Whether the featured placement is live at request time.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsFeatured() {
        return this.isFeatured;
    }
    /**
     * Gets the logoUrl property value. Logo image URL.
     * @return a {@link TournamentSummaryLogoUrl}
     */
    @jakarta.annotation.Nullable
    public TournamentSummaryLogoUrl getLogoUrl() {
        return this.logoUrl;
    }
    /**
     * Gets the maxParticipants property value. Participant cap.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getMaxParticipants() {
        return this.maxParticipants;
    }
    /**
     * Gets the name property value. Tournament display name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the participantCount property value. Current number of participants.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getParticipantCount() {
        return this.participantCount;
    }
    /**
     * Gets the prizeCurrency property value. ISO currency code of the pool.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getPrizeCurrency() {
        return this.prizeCurrency;
    }
    /**
     * Gets the prizePool property value. Total prize pool.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getPrizePool() {
        return this.prizePool;
    }
    /**
     * Gets the slug property value. URL-friendly tournament identifier.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSlug() {
        return this.slug;
    }
    /**
     * Gets the startsAt property value. Scheduled start (epoch milliseconds).
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getStartsAt() {
        return this.startsAt;
    }
    /**
     * Gets the status property value. Lifecycle status of a tournament.
     * @return a {@link TournamentStatus}
     */
    @jakarta.annotation.Nullable
    public TournamentStatus getStatus() {
        return this.status;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("bannerUrl", this.getBannerUrl());
        writer.writeStringValue("description", this.getDescription());
        writer.writeEnumValue("format", this.getFormat());
        writer.writeObjectValue("game", this.getGame());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isFeatured", this.getIsFeatured());
        writer.writeObjectValue("logoUrl", this.getLogoUrl());
        writer.writeIntegerValue("maxParticipants", this.getMaxParticipants());
        writer.writeStringValue("name", this.getName());
        writer.writeIntegerValue("participantCount", this.getParticipantCount());
        writer.writeStringValue("prizeCurrency", this.getPrizeCurrency());
        writer.writeDoubleValue("prizePool", this.getPrizePool());
        writer.writeStringValue("slug", this.getSlug());
        writer.writeDoubleValue("startsAt", this.getStartsAt());
        writer.writeEnumValue("status", this.getStatus());
    }
    /**
     * Sets the bannerUrl property value. Banner image URL.
     * @param value Value to set for the bannerUrl property.
     */
    public void setBannerUrl(@jakarta.annotation.Nullable final TournamentSummaryBannerUrl value) {
        this.bannerUrl = value;
    }
    /**
     * Sets the description property value. Short tournament description.
     * @param value Value to set for the description property.
     */
    public void setDescription(@jakarta.annotation.Nullable final String value) {
        this.description = value;
    }
    /**
     * Sets the format property value. Bracket format of a tournament.
     * @param value Value to set for the format property.
     */
    public void setFormat(@jakarta.annotation.Nullable final TournamentFormat value) {
        this.format = value;
    }
    /**
     * Sets the game property value. Game summary, or null if the game row is missing.
     * @param value Value to set for the game property.
     */
    public void setGame(@jakarta.annotation.Nullable final UntypedNode value) {
        this.game = value;
    }
    /**
     * Sets the id property value. Tournament ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the isFeatured property value. Whether the featured placement is live at request time.
     * @param value Value to set for the isFeatured property.
     */
    public void setIsFeatured(@jakarta.annotation.Nullable final Boolean value) {
        this.isFeatured = value;
    }
    /**
     * Sets the logoUrl property value. Logo image URL.
     * @param value Value to set for the logoUrl property.
     */
    public void setLogoUrl(@jakarta.annotation.Nullable final TournamentSummaryLogoUrl value) {
        this.logoUrl = value;
    }
    /**
     * Sets the maxParticipants property value. Participant cap.
     * @param value Value to set for the maxParticipants property.
     */
    public void setMaxParticipants(@jakarta.annotation.Nullable final Integer value) {
        this.maxParticipants = value;
    }
    /**
     * Sets the name property value. Tournament display name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the participantCount property value. Current number of participants.
     * @param value Value to set for the participantCount property.
     */
    public void setParticipantCount(@jakarta.annotation.Nullable final Integer value) {
        this.participantCount = value;
    }
    /**
     * Sets the prizeCurrency property value. ISO currency code of the pool.
     * @param value Value to set for the prizeCurrency property.
     */
    public void setPrizeCurrency(@jakarta.annotation.Nullable final String value) {
        this.prizeCurrency = value;
    }
    /**
     * Sets the prizePool property value. Total prize pool.
     * @param value Value to set for the prizePool property.
     */
    public void setPrizePool(@jakarta.annotation.Nullable final Double value) {
        this.prizePool = value;
    }
    /**
     * Sets the slug property value. URL-friendly tournament identifier.
     * @param value Value to set for the slug property.
     */
    public void setSlug(@jakarta.annotation.Nullable final String value) {
        this.slug = value;
    }
    /**
     * Sets the startsAt property value. Scheduled start (epoch milliseconds).
     * @param value Value to set for the startsAt property.
     */
    public void setStartsAt(@jakarta.annotation.Nullable final Double value) {
        this.startsAt = value;
    }
    /**
     * Sets the status property value. Lifecycle status of a tournament.
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final TournamentStatus value) {
        this.status = value;
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TournamentSummaryBannerUrlMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TournamentSummaryBannerUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TournamentSummaryBannerUrlMember1}
         */
        private TournamentSummaryBannerUrlMember1 tournamentSummaryBannerUrlMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TournamentSummaryBannerUrl}
         */
        @jakarta.annotation.Nonnull
        public static TournamentSummaryBannerUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TournamentSummaryBannerUrl result = new TournamentSummaryBannerUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTournamentSummaryBannerUrlMember1(new TournamentSummaryBannerUrlMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTournamentSummaryBannerUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTournamentSummaryBannerUrlMember1());
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
         * Gets the TournamentSummary_bannerUrlMember1 property value. Composed type representation for type {@link TournamentSummaryBannerUrlMember1}
         * @return a {@link TournamentSummaryBannerUrlMember1}
         */
        @jakarta.annotation.Nullable
        public TournamentSummaryBannerUrlMember1 getTournamentSummaryBannerUrlMember1() {
            return this.tournamentSummaryBannerUrlMember1;
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
                writer.writeObjectValue(null, this.getTournamentSummaryBannerUrlMember1());
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
         * Sets the TournamentSummary_bannerUrlMember1 property value. Composed type representation for type {@link TournamentSummaryBannerUrlMember1}
         * @param value Value to set for the TournamentSummary_bannerUrlMember1 property.
         */
        public void setTournamentSummaryBannerUrlMember1(@jakarta.annotation.Nullable final TournamentSummaryBannerUrlMember1 value) {
            this.tournamentSummaryBannerUrlMember1 = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TournamentSummaryLogoUrlMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TournamentSummaryLogoUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TournamentSummaryLogoUrlMember1}
         */
        private TournamentSummaryLogoUrlMember1 tournamentSummaryLogoUrlMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TournamentSummaryLogoUrl}
         */
        @jakarta.annotation.Nonnull
        public static TournamentSummaryLogoUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TournamentSummaryLogoUrl result = new TournamentSummaryLogoUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTournamentSummaryLogoUrlMember1(new TournamentSummaryLogoUrlMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTournamentSummaryLogoUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTournamentSummaryLogoUrlMember1());
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
         * Gets the TournamentSummary_logoUrlMember1 property value. Composed type representation for type {@link TournamentSummaryLogoUrlMember1}
         * @return a {@link TournamentSummaryLogoUrlMember1}
         */
        @jakarta.annotation.Nullable
        public TournamentSummaryLogoUrlMember1 getTournamentSummaryLogoUrlMember1() {
            return this.tournamentSummaryLogoUrlMember1;
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
                writer.writeObjectValue(null, this.getTournamentSummaryLogoUrlMember1());
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
         * Sets the TournamentSummary_logoUrlMember1 property value. Composed type representation for type {@link TournamentSummaryLogoUrlMember1}
         * @param value Value to set for the TournamentSummary_logoUrlMember1 property.
         */
        public void setTournamentSummaryLogoUrlMember1(@jakarta.annotation.Nullable final TournamentSummaryLogoUrlMember1 value) {
            this.tournamentSummaryLogoUrlMember1 = value;
        }
    }
}
