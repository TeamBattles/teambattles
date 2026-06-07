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
 * Organization leaderboard response.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class OrganizationLeaderboardResponse implements Parsable {
    /**
     * The gameSlug property
     */
    private OrganizationLeaderboardResponseGameSlug gameSlug;
    /**
     * The organizations property
     */
    private java.util.List<OrganizationLeaderboardEntry> organizations;
    /**
     * Supported leaderboard sort field.
     */
    private LeaderboardSortBy sortBy;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link OrganizationLeaderboardResponse}
     */
    @jakarta.annotation.Nonnull
    public static OrganizationLeaderboardResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new OrganizationLeaderboardResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("gameSlug", (n) -> { this.setGameSlug(n.getObjectValue(OrganizationLeaderboardResponseGameSlug::createFromDiscriminatorValue)); });
        deserializerMap.put("organizations", (n) -> { this.setOrganizations(n.getCollectionOfObjectValues(OrganizationLeaderboardEntry::createFromDiscriminatorValue)); });
        deserializerMap.put("sortBy", (n) -> { this.setSortBy(n.getEnumValue(LeaderboardSortBy::forValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gameSlug property value. The gameSlug property
     * @return a {@link OrganizationLeaderboardResponseGameSlug}
     */
    @jakarta.annotation.Nullable
    public OrganizationLeaderboardResponseGameSlug getGameSlug() {
        return this.gameSlug;
    }
    /**
     * Gets the organizations property value. The organizations property
     * @return a {@link java.util.List<OrganizationLeaderboardEntry>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<OrganizationLeaderboardEntry> getOrganizations() {
        return this.organizations;
    }
    /**
     * Gets the sortBy property value. Supported leaderboard sort field.
     * @return a {@link LeaderboardSortBy}
     */
    @jakarta.annotation.Nullable
    public LeaderboardSortBy getSortBy() {
        return this.sortBy;
    }
    /**
     * Gets the timestamp property value. The timestamp property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTimestamp() {
        return this.timestamp;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("gameSlug", this.getGameSlug());
        writer.writeCollectionOfObjectValues("organizations", this.getOrganizations());
        writer.writeEnumValue("sortBy", this.getSortBy());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the gameSlug property value. The gameSlug property
     * @param value Value to set for the gameSlug property.
     */
    public void setGameSlug(@jakarta.annotation.Nullable final OrganizationLeaderboardResponseGameSlug value) {
        this.gameSlug = value;
    }
    /**
     * Sets the organizations property value. The organizations property
     * @param value Value to set for the organizations property.
     */
    public void setOrganizations(@jakarta.annotation.Nullable final java.util.List<OrganizationLeaderboardEntry> value) {
        this.organizations = value;
    }
    /**
     * Sets the sortBy property value. Supported leaderboard sort field.
     * @param value Value to set for the sortBy property.
     */
    public void setSortBy(@jakarta.annotation.Nullable final LeaderboardSortBy value) {
        this.sortBy = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Composed type wrapper for classes {@link OrganizationLeaderboardResponseGameSlugMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class OrganizationLeaderboardResponseGameSlug implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link OrganizationLeaderboardResponseGameSlugMember1}
         */
        private OrganizationLeaderboardResponseGameSlugMember1 organizationLeaderboardResponseGameSlugMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link OrganizationLeaderboardResponseGameSlug}
         */
        @jakarta.annotation.Nonnull
        public static OrganizationLeaderboardResponseGameSlug createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final OrganizationLeaderboardResponseGameSlug result = new OrganizationLeaderboardResponseGameSlug();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setOrganizationLeaderboardResponseGameSlugMember1(new OrganizationLeaderboardResponseGameSlugMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getOrganizationLeaderboardResponseGameSlugMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getOrganizationLeaderboardResponseGameSlugMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the OrganizationLeaderboardResponse_gameSlugMember1 property value. Composed type representation for type {@link OrganizationLeaderboardResponseGameSlugMember1}
         * @return a {@link OrganizationLeaderboardResponseGameSlugMember1}
         */
        @jakarta.annotation.Nullable
        public OrganizationLeaderboardResponseGameSlugMember1 getOrganizationLeaderboardResponseGameSlugMember1() {
            return this.organizationLeaderboardResponseGameSlugMember1;
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
                writer.writeObjectValue(null, this.getOrganizationLeaderboardResponseGameSlugMember1());
            }
        }
        /**
         * Sets the OrganizationLeaderboardResponse_gameSlugMember1 property value. Composed type representation for type {@link OrganizationLeaderboardResponseGameSlugMember1}
         * @param value Value to set for the OrganizationLeaderboardResponse_gameSlugMember1 property.
         */
        public void setOrganizationLeaderboardResponseGameSlugMember1(@jakarta.annotation.Nullable final OrganizationLeaderboardResponseGameSlugMember1 value) {
            this.organizationLeaderboardResponseGameSlugMember1 = value;
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
