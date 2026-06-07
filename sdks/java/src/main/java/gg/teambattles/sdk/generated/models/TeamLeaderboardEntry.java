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
 * Team leaderboard row.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TeamLeaderboardEntry implements Parsable {
    /**
     * The gameSlug property
     */
    private TeamLeaderboardEntryGameSlug gameSlug;
    /**
     * Team ID.
     */
    private String id;
    /**
     * The rank property
     */
    private Integer rank;
    /**
     * Aggregate stats used for leaderboard ranking.
     */
    private LeaderboardStats stats;
    /**
     * Small API-safe team summary.
     */
    private ApiTeamSummary team;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TeamLeaderboardEntry}
     */
    @jakarta.annotation.Nonnull
    public static TeamLeaderboardEntry createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TeamLeaderboardEntry();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("gameSlug", (n) -> { this.setGameSlug(n.getObjectValue(TeamLeaderboardEntryGameSlug::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("rank", (n) -> { this.setRank(n.getIntegerValue()); });
        deserializerMap.put("stats", (n) -> { this.setStats(n.getObjectValue(LeaderboardStats::createFromDiscriminatorValue)); });
        deserializerMap.put("team", (n) -> { this.setTeam(n.getObjectValue(ApiTeamSummary::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the gameSlug property value. The gameSlug property
     * @return a {@link TeamLeaderboardEntryGameSlug}
     */
    @jakarta.annotation.Nullable
    public TeamLeaderboardEntryGameSlug getGameSlug() {
        return this.gameSlug;
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
     * Gets the rank property value. The rank property
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getRank() {
        return this.rank;
    }
    /**
     * Gets the stats property value. Aggregate stats used for leaderboard ranking.
     * @return a {@link LeaderboardStats}
     */
    @jakarta.annotation.Nullable
    public LeaderboardStats getStats() {
        return this.stats;
    }
    /**
     * Gets the team property value. Small API-safe team summary.
     * @return a {@link ApiTeamSummary}
     */
    @jakarta.annotation.Nullable
    public ApiTeamSummary getTeam() {
        return this.team;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("gameSlug", this.getGameSlug());
        writer.writeStringValue("id", this.getId());
        writer.writeIntegerValue("rank", this.getRank());
        writer.writeObjectValue("stats", this.getStats());
        writer.writeObjectValue("team", this.getTeam());
    }
    /**
     * Sets the gameSlug property value. The gameSlug property
     * @param value Value to set for the gameSlug property.
     */
    public void setGameSlug(@jakarta.annotation.Nullable final TeamLeaderboardEntryGameSlug value) {
        this.gameSlug = value;
    }
    /**
     * Sets the id property value. Team ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the rank property value. The rank property
     * @param value Value to set for the rank property.
     */
    public void setRank(@jakarta.annotation.Nullable final Integer value) {
        this.rank = value;
    }
    /**
     * Sets the stats property value. Aggregate stats used for leaderboard ranking.
     * @param value Value to set for the stats property.
     */
    public void setStats(@jakarta.annotation.Nullable final LeaderboardStats value) {
        this.stats = value;
    }
    /**
     * Sets the team property value. Small API-safe team summary.
     * @param value Value to set for the team property.
     */
    public void setTeam(@jakarta.annotation.Nullable final ApiTeamSummary value) {
        this.team = value;
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TeamLeaderboardEntryGameSlugMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TeamLeaderboardEntryGameSlug implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TeamLeaderboardEntryGameSlugMember1}
         */
        private TeamLeaderboardEntryGameSlugMember1 teamLeaderboardEntryGameSlugMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TeamLeaderboardEntryGameSlug}
         */
        @jakarta.annotation.Nonnull
        public static TeamLeaderboardEntryGameSlug createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TeamLeaderboardEntryGameSlug result = new TeamLeaderboardEntryGameSlug();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTeamLeaderboardEntryGameSlugMember1(new TeamLeaderboardEntryGameSlugMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTeamLeaderboardEntryGameSlugMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTeamLeaderboardEntryGameSlugMember1());
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
         * Gets the TeamLeaderboardEntry_gameSlugMember1 property value. Composed type representation for type {@link TeamLeaderboardEntryGameSlugMember1}
         * @return a {@link TeamLeaderboardEntryGameSlugMember1}
         */
        @jakarta.annotation.Nullable
        public TeamLeaderboardEntryGameSlugMember1 getTeamLeaderboardEntryGameSlugMember1() {
            return this.teamLeaderboardEntryGameSlugMember1;
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
                writer.writeObjectValue(null, this.getTeamLeaderboardEntryGameSlugMember1());
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
         * Sets the TeamLeaderboardEntry_gameSlugMember1 property value. Composed type representation for type {@link TeamLeaderboardEntryGameSlugMember1}
         * @param value Value to set for the TeamLeaderboardEntry_gameSlugMember1 property.
         */
        public void setTeamLeaderboardEntryGameSlugMember1(@jakarta.annotation.Nullable final TeamLeaderboardEntryGameSlugMember1 value) {
            this.teamLeaderboardEntryGameSlugMember1 = value;
        }
    }
}
