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
 * Team leaderboard response.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TeamLeaderboardResponse implements Parsable {
    /**
     * The gameSlug property
     */
    private TeamLeaderboardResponseGameSlug gameSlug;
    /**
     * Supported leaderboard sort field.
     */
    private LeaderboardSortBy sortBy;
    /**
     * The teams property
     */
    private java.util.List<TeamLeaderboardEntry> teams;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TeamLeaderboardResponse}
     */
    @jakarta.annotation.Nonnull
    public static TeamLeaderboardResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TeamLeaderboardResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("gameSlug", (n) -> { this.setGameSlug(n.getObjectValue(TeamLeaderboardResponseGameSlug::createFromDiscriminatorValue)); });
        deserializerMap.put("sortBy", (n) -> { this.setSortBy(n.getEnumValue(LeaderboardSortBy::forValue)); });
        deserializerMap.put("teams", (n) -> { this.setTeams(n.getCollectionOfObjectValues(TeamLeaderboardEntry::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gameSlug property value. The gameSlug property
     * @return a {@link TeamLeaderboardResponseGameSlug}
     */
    @jakarta.annotation.Nullable
    public TeamLeaderboardResponseGameSlug getGameSlug() {
        return this.gameSlug;
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
     * Gets the teams property value. The teams property
     * @return a {@link java.util.List<TeamLeaderboardEntry>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TeamLeaderboardEntry> getTeams() {
        return this.teams;
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
        writer.writeEnumValue("sortBy", this.getSortBy());
        writer.writeCollectionOfObjectValues("teams", this.getTeams());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the gameSlug property value. The gameSlug property
     * @param value Value to set for the gameSlug property.
     */
    public void setGameSlug(@jakarta.annotation.Nullable final TeamLeaderboardResponseGameSlug value) {
        this.gameSlug = value;
    }
    /**
     * Sets the sortBy property value. Supported leaderboard sort field.
     * @param value Value to set for the sortBy property.
     */
    public void setSortBy(@jakarta.annotation.Nullable final LeaderboardSortBy value) {
        this.sortBy = value;
    }
    /**
     * Sets the teams property value. The teams property
     * @param value Value to set for the teams property.
     */
    public void setTeams(@jakarta.annotation.Nullable final java.util.List<TeamLeaderboardEntry> value) {
        this.teams = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TeamLeaderboardResponseGameSlugMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TeamLeaderboardResponseGameSlug implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TeamLeaderboardResponseGameSlugMember1}
         */
        private TeamLeaderboardResponseGameSlugMember1 teamLeaderboardResponseGameSlugMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TeamLeaderboardResponseGameSlug}
         */
        @jakarta.annotation.Nonnull
        public static TeamLeaderboardResponseGameSlug createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TeamLeaderboardResponseGameSlug result = new TeamLeaderboardResponseGameSlug();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTeamLeaderboardResponseGameSlugMember1(new TeamLeaderboardResponseGameSlugMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTeamLeaderboardResponseGameSlugMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTeamLeaderboardResponseGameSlugMember1());
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
         * Gets the TeamLeaderboardResponse_gameSlugMember1 property value. Composed type representation for type {@link TeamLeaderboardResponseGameSlugMember1}
         * @return a {@link TeamLeaderboardResponseGameSlugMember1}
         */
        @jakarta.annotation.Nullable
        public TeamLeaderboardResponseGameSlugMember1 getTeamLeaderboardResponseGameSlugMember1() {
            return this.teamLeaderboardResponseGameSlugMember1;
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
                writer.writeObjectValue(null, this.getTeamLeaderboardResponseGameSlugMember1());
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
         * Sets the TeamLeaderboardResponse_gameSlugMember1 property value. Composed type representation for type {@link TeamLeaderboardResponseGameSlugMember1}
         * @param value Value to set for the TeamLeaderboardResponse_gameSlugMember1 property.
         */
        public void setTeamLeaderboardResponseGameSlugMember1(@jakarta.annotation.Nullable final TeamLeaderboardResponseGameSlugMember1 value) {
            this.teamLeaderboardResponseGameSlugMember1 = value;
        }
    }
}
