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
 * Team summary embedded in SP-2 match reads.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiMatchTeam implements Parsable {
    /**
     * Team avatar URL.
     */
    private ApiMatchTeamAvatarUrl avatarUrl;
    /**
     * Team ID.
     */
    private String id;
    /**
     * Team name.
     */
    private String name;
    /**
     * The score property
     */
    private ApiMatchTeamScore score;
    /**
     * Team tag (short identifier).
     */
    private String tag;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiMatchTeam}
     */
    @jakarta.annotation.Nonnull
    public static ApiMatchTeam createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiMatchTeam();
    }
    /**
     * Gets the avatarUrl property value. Team avatar URL.
     * @return a {@link ApiMatchTeamAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public ApiMatchTeamAvatarUrl getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getObjectValue(ApiMatchTeamAvatarUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("score", (n) -> { this.setScore(n.getObjectValue(ApiMatchTeamScore::createFromDiscriminatorValue)); });
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
     * Gets the score property value. The score property
     * @return a {@link ApiMatchTeamScore}
     */
    @jakarta.annotation.Nullable
    public ApiMatchTeamScore getScore() {
        return this.score;
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
        writer.writeObjectValue("score", this.getScore());
        writer.writeStringValue("tag", this.getTag());
    }
    /**
     * Sets the avatarUrl property value. Team avatar URL.
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final ApiMatchTeamAvatarUrl value) {
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
     * Sets the score property value. The score property
     * @param value Value to set for the score property.
     */
    public void setScore(@jakarta.annotation.Nullable final ApiMatchTeamScore value) {
        this.score = value;
    }
    /**
     * Sets the tag property value. Team tag (short identifier).
     * @param value Value to set for the tag property.
     */
    public void setTag(@jakarta.annotation.Nullable final String value) {
        this.tag = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiMatchTeamAvatarUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchTeamAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchTeamAvatarUrlMember1}
         */
        private ApiMatchTeamAvatarUrlMember1 apiMatchTeamAvatarUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchTeamAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchTeamAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchTeamAvatarUrl result = new ApiMatchTeamAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMatchTeamAvatarUrlMember1(new ApiMatchTeamAvatarUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchTeam_avatarUrlMember1 property value. Composed type representation for type {@link ApiMatchTeamAvatarUrlMember1}
         * @return a {@link ApiMatchTeamAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchTeamAvatarUrlMember1 getApiMatchTeamAvatarUrlMember1() {
            return this.apiMatchTeamAvatarUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchTeamAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchTeamAvatarUrlMember1());
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
                writer.writeObjectValue(null, this.getApiMatchTeamAvatarUrlMember1());
            }
        }
        /**
         * Sets the ApiMatchTeam_avatarUrlMember1 property value. Composed type representation for type {@link ApiMatchTeamAvatarUrlMember1}
         * @param value Value to set for the ApiMatchTeam_avatarUrlMember1 property.
         */
        public void setApiMatchTeamAvatarUrlMember1(@jakarta.annotation.Nullable final ApiMatchTeamAvatarUrlMember1 value) {
            this.apiMatchTeamAvatarUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiMatchTeamScoreMember1}, {@link Integer}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchTeamScore implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchTeamScoreMember1}
         */
        private ApiMatchTeamScoreMember1 apiMatchTeamScoreMember1;
        /**
         * Composed type representation for type {@link Integer}
         */
        private Integer integer;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchTeamScore}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchTeamScore createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchTeamScore result = new ApiMatchTeamScore();
            if (parseNode.getIntegerValue() != null) {
                result.setInteger(parseNode.getIntegerValue());
            } else {
                result.setApiMatchTeamScoreMember1(new ApiMatchTeamScoreMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchTeam_scoreMember1 property value. Composed type representation for type {@link ApiMatchTeamScoreMember1}
         * @return a {@link ApiMatchTeamScoreMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchTeamScoreMember1 getApiMatchTeamScoreMember1() {
            return this.apiMatchTeamScoreMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchTeamScoreMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchTeamScoreMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the integer property value. Composed type representation for type {@link Integer}
         * @return a {@link Integer}
         */
        @jakarta.annotation.Nullable
        public Integer getInteger() {
            return this.integer;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getInteger() != null) {
                writer.writeIntegerValue(null, this.getInteger());
            } else {
                writer.writeObjectValue(null, this.getApiMatchTeamScoreMember1());
            }
        }
        /**
         * Sets the ApiMatchTeam_scoreMember1 property value. Composed type representation for type {@link ApiMatchTeamScoreMember1}
         * @param value Value to set for the ApiMatchTeam_scoreMember1 property.
         */
        public void setApiMatchTeamScoreMember1(@jakarta.annotation.Nullable final ApiMatchTeamScoreMember1 value) {
            this.apiMatchTeamScoreMember1 = value;
        }
        /**
         * Sets the integer property value. Composed type representation for type {@link Integer}
         * @param value Value to set for the integer property.
         */
        public void setInteger(@jakarta.annotation.Nullable final Integer value) {
            this.integer = value;
        }
    }
}
