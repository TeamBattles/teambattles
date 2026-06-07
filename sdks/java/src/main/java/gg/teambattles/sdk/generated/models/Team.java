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
 * A team participating in a match.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class Team implements Parsable {
    /**
     * Team avatar URL.
     */
    private TeamAvatarUrl avatarUrl;
    /**
     * Team ID.
     */
    private String id;
    /**
     * Team name.
     */
    private String name;
    /**
     * Team tag (short identifier).
     */
    private String tag;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link Team}
     */
    @jakarta.annotation.Nonnull
    public static Team createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new Team();
    }
    /**
     * Gets the avatarUrl property value. Team avatar URL.
     * @return a {@link TeamAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public TeamAvatarUrl getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getObjectValue(TeamAvatarUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("tag", (n) -> { this.setTag(n.getStringValue()); });
        return deserializerMap;
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
     * Gets the name property value. Team name.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the tag property value. Team tag (short identifier).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTag() {
        return this.tag;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("avatarUrl", this.getAvatarUrl());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("name", this.getName());
        writer.writeStringValue("tag", this.getTag());
    }
    /**
     * Sets the avatarUrl property value. Team avatar URL.
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final TeamAvatarUrl value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the id property value. Team ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the name property value. Team name.
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the tag property value. Team tag (short identifier).
     * @param value Value to set for the tag property.
     */
    public void setTag(@jakarta.annotation.Nullable final String value) {
        this.tag = value;
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TeamAvatarUrlMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TeamAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TeamAvatarUrlMember1}
         */
        private TeamAvatarUrlMember1 teamAvatarUrlMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TeamAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static TeamAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TeamAvatarUrl result = new TeamAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTeamAvatarUrlMember1(new TeamAvatarUrlMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTeamAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTeamAvatarUrlMember1());
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
         * Gets the Team_avatarUrlMember1 property value. Composed type representation for type {@link TeamAvatarUrlMember1}
         * @return a {@link TeamAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public TeamAvatarUrlMember1 getTeamAvatarUrlMember1() {
            return this.teamAvatarUrlMember1;
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
                writer.writeObjectValue(null, this.getTeamAvatarUrlMember1());
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
         * Sets the Team_avatarUrlMember1 property value. Composed type representation for type {@link TeamAvatarUrlMember1}
         * @param value Value to set for the Team_avatarUrlMember1 property.
         */
        public void setTeamAvatarUrlMember1(@jakarta.annotation.Nullable final TeamAvatarUrlMember1 value) {
            this.teamAvatarUrlMember1 = value;
        }
    }
}
