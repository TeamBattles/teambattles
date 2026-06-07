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
 * Organization leaderboard row.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class OrganizationLeaderboardEntry implements Parsable {
    /**
     * The gameSlug property
     */
    private OrganizationLeaderboardEntryGameSlug gameSlug;
    /**
     * Organization ID.
     */
    private String id;
    /**
     * Small API-safe organization summary.
     */
    private ApiOrganizationSummary organization;
    /**
     * The rank property
     */
    private Integer rank;
    /**
     * The stats property
     */
    private OrganizationLeaderboardEntryStats stats;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link OrganizationLeaderboardEntry}
     */
    @jakarta.annotation.Nonnull
    public static OrganizationLeaderboardEntry createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new OrganizationLeaderboardEntry();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("gameSlug", (n) -> { this.setGameSlug(n.getObjectValue(OrganizationLeaderboardEntryGameSlug::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("organization", (n) -> { this.setOrganization(n.getObjectValue(ApiOrganizationSummary::createFromDiscriminatorValue)); });
        deserializerMap.put("rank", (n) -> { this.setRank(n.getIntegerValue()); });
        deserializerMap.put("stats", (n) -> { this.setStats(n.getObjectValue(OrganizationLeaderboardEntryStats::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the gameSlug property value. The gameSlug property
     * @return a {@link OrganizationLeaderboardEntryGameSlug}
     */
    @jakarta.annotation.Nullable
    public OrganizationLeaderboardEntryGameSlug getGameSlug() {
        return this.gameSlug;
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
     * Gets the organization property value. Small API-safe organization summary.
     * @return a {@link ApiOrganizationSummary}
     */
    @jakarta.annotation.Nullable
    public ApiOrganizationSummary getOrganization() {
        return this.organization;
    }
    /**
     * Gets the rank property value. The rank property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getRank() {
        return this.rank;
    }
    /**
     * Gets the stats property value. The stats property
     * @return a {@link OrganizationLeaderboardEntryStats}
     */
    @jakarta.annotation.Nullable
    public OrganizationLeaderboardEntryStats getStats() {
        return this.stats;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("gameSlug", this.getGameSlug());
        writer.writeStringValue("id", this.getId());
        writer.writeObjectValue("organization", this.getOrganization());
        writer.writeIntegerValue("rank", this.getRank());
        writer.writeObjectValue("stats", this.getStats());
    }
    /**
     * Sets the gameSlug property value. The gameSlug property
     * @param value Value to set for the gameSlug property.
     */
    public void setGameSlug(@jakarta.annotation.Nullable final OrganizationLeaderboardEntryGameSlug value) {
        this.gameSlug = value;
    }
    /**
     * Sets the id property value. Organization ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the organization property value. Small API-safe organization summary.
     * @param value Value to set for the organization property.
     */
    public void setOrganization(@jakarta.annotation.Nullable final ApiOrganizationSummary value) {
        this.organization = value;
    }
    /**
     * Sets the rank property value. The rank property
     * @param value Value to set for the rank property.
     */
    public void setRank(@jakarta.annotation.Nullable final Integer value) {
        this.rank = value;
    }
    /**
     * Sets the stats property value. The stats property
     * @param value Value to set for the stats property.
     */
    public void setStats(@jakarta.annotation.Nullable final OrganizationLeaderboardEntryStats value) {
        this.stats = value;
    }
    /**
     * Composed type wrapper for classes {@link OrganizationLeaderboardEntryGameSlugMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class OrganizationLeaderboardEntryGameSlug implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link OrganizationLeaderboardEntryGameSlugMember1}
         */
        private OrganizationLeaderboardEntryGameSlugMember1 organizationLeaderboardEntryGameSlugMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link OrganizationLeaderboardEntryGameSlug}
         */
        @jakarta.annotation.Nonnull
        public static OrganizationLeaderboardEntryGameSlug createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final OrganizationLeaderboardEntryGameSlug result = new OrganizationLeaderboardEntryGameSlug();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setOrganizationLeaderboardEntryGameSlugMember1(new OrganizationLeaderboardEntryGameSlugMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getOrganizationLeaderboardEntryGameSlugMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getOrganizationLeaderboardEntryGameSlugMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the OrganizationLeaderboardEntry_gameSlugMember1 property value. Composed type representation for type {@link OrganizationLeaderboardEntryGameSlugMember1}
         * @return a {@link OrganizationLeaderboardEntryGameSlugMember1}
         */
        @jakarta.annotation.Nullable
        public OrganizationLeaderboardEntryGameSlugMember1 getOrganizationLeaderboardEntryGameSlugMember1() {
            return this.organizationLeaderboardEntryGameSlugMember1;
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
                writer.writeObjectValue(null, this.getOrganizationLeaderboardEntryGameSlugMember1());
            }
        }
        /**
         * Sets the OrganizationLeaderboardEntry_gameSlugMember1 property value. Composed type representation for type {@link OrganizationLeaderboardEntryGameSlugMember1}
         * @param value Value to set for the OrganizationLeaderboardEntry_gameSlugMember1 property.
         */
        public void setOrganizationLeaderboardEntryGameSlugMember1(@jakarta.annotation.Nullable final OrganizationLeaderboardEntryGameSlugMember1 value) {
            this.organizationLeaderboardEntryGameSlugMember1 = value;
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
