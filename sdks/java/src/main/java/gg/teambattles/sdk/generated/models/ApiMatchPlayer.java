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
 * Player row for a participant-gated match.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiMatchPlayer implements Parsable {
    /**
     * The attendanceStatus property
     */
    private ApiMatchPlayerAttendanceStatus attendanceStatus;
    /**
     * The avatarUrl property
     */
    private ApiMatchPlayerAvatarUrl avatarUrl;
    /**
     * The checkedInAt property
     */
    private ApiMatchPlayerCheckedInAt checkedInAt;
    /**
     * The id property
     */
    private String id;
    /**
     * The isCheckedIn property
     */
    private Boolean isCheckedIn;
    /**
     * The name property
     */
    private ApiMatchPlayerName name;
    /**
     * The rosterType property
     */
    private ApiMatchPlayerRosterType rosterType;
    /**
     * The teamId property
     */
    private String teamId;
    /**
     * The userId property
     */
    private String userId;
    /**
     * The username property
     */
    private ApiMatchPlayerUsername username;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiMatchPlayer}
     */
    @jakarta.annotation.Nonnull
    public static ApiMatchPlayer createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiMatchPlayer();
    }
    /**
     * Gets the attendanceStatus property value. The attendanceStatus property
     * @return a {@link ApiMatchPlayerAttendanceStatus}
     */
    @jakarta.annotation.Nullable
    public ApiMatchPlayerAttendanceStatus getAttendanceStatus() {
        return this.attendanceStatus;
    }
    /**
     * Gets the avatarUrl property value. The avatarUrl property
     * @return a {@link ApiMatchPlayerAvatarUrl}
     */
    @jakarta.annotation.Nullable
    public ApiMatchPlayerAvatarUrl getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * Gets the checkedInAt property value. The checkedInAt property
     * @return a {@link ApiMatchPlayerCheckedInAt}
     */
    @jakarta.annotation.Nullable
    public ApiMatchPlayerCheckedInAt getCheckedInAt() {
        return this.checkedInAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(10);
        deserializerMap.put("attendanceStatus", (n) -> { this.setAttendanceStatus(n.getEnumValue(ApiMatchPlayerAttendanceStatus::forValue)); });
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getObjectValue(ApiMatchPlayerAvatarUrl::createFromDiscriminatorValue)); });
        deserializerMap.put("checkedInAt", (n) -> { this.setCheckedInAt(n.getObjectValue(ApiMatchPlayerCheckedInAt::createFromDiscriminatorValue)); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isCheckedIn", (n) -> { this.setIsCheckedIn(n.getBooleanValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getObjectValue(ApiMatchPlayerName::createFromDiscriminatorValue)); });
        deserializerMap.put("rosterType", (n) -> { this.setRosterType(n.getEnumValue(ApiMatchPlayerRosterType::forValue)); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        deserializerMap.put("userId", (n) -> { this.setUserId(n.getStringValue()); });
        deserializerMap.put("username", (n) -> { this.setUsername(n.getObjectValue(ApiMatchPlayerUsername::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. The id property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the isCheckedIn property value. The isCheckedIn property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsCheckedIn() {
        return this.isCheckedIn;
    }
    /**
     * Gets the name property value. The name property
     * @return a {@link ApiMatchPlayerName}
     */
    @jakarta.annotation.Nullable
    public ApiMatchPlayerName getName() {
        return this.name;
    }
    /**
     * Gets the rosterType property value. The rosterType property
     * @return a {@link ApiMatchPlayerRosterType}
     */
    @jakarta.annotation.Nullable
    public ApiMatchPlayerRosterType getRosterType() {
        return this.rosterType;
    }
    /**
     * Gets the teamId property value. The teamId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamId() {
        return this.teamId;
    }
    /**
     * Gets the userId property value. The userId property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUserId() {
        return this.userId;
    }
    /**
     * Gets the username property value. The username property
     * @return a {@link ApiMatchPlayerUsername}
     */
    @jakarta.annotation.Nullable
    public ApiMatchPlayerUsername getUsername() {
        return this.username;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeEnumValue("attendanceStatus", this.getAttendanceStatus());
        writer.writeObjectValue("avatarUrl", this.getAvatarUrl());
        writer.writeObjectValue("checkedInAt", this.getCheckedInAt());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isCheckedIn", this.getIsCheckedIn());
        writer.writeObjectValue("name", this.getName());
        writer.writeEnumValue("rosterType", this.getRosterType());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeStringValue("userId", this.getUserId());
        writer.writeObjectValue("username", this.getUsername());
    }
    /**
     * Sets the attendanceStatus property value. The attendanceStatus property
     * @param value Value to set for the attendanceStatus property.
     */
    public void setAttendanceStatus(@jakarta.annotation.Nullable final ApiMatchPlayerAttendanceStatus value) {
        this.attendanceStatus = value;
    }
    /**
     * Sets the avatarUrl property value. The avatarUrl property
     * @param value Value to set for the avatarUrl property.
     */
    public void setAvatarUrl(@jakarta.annotation.Nullable final ApiMatchPlayerAvatarUrl value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the checkedInAt property value. The checkedInAt property
     * @param value Value to set for the checkedInAt property.
     */
    public void setCheckedInAt(@jakarta.annotation.Nullable final ApiMatchPlayerCheckedInAt value) {
        this.checkedInAt = value;
    }
    /**
     * Sets the id property value. The id property
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the isCheckedIn property value. The isCheckedIn property
     * @param value Value to set for the isCheckedIn property.
     */
    public void setIsCheckedIn(@jakarta.annotation.Nullable final Boolean value) {
        this.isCheckedIn = value;
    }
    /**
     * Sets the name property value. The name property
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final ApiMatchPlayerName value) {
        this.name = value;
    }
    /**
     * Sets the rosterType property value. The rosterType property
     * @param value Value to set for the rosterType property.
     */
    public void setRosterType(@jakarta.annotation.Nullable final ApiMatchPlayerRosterType value) {
        this.rosterType = value;
    }
    /**
     * Sets the teamId property value. The teamId property
     * @param value Value to set for the teamId property.
     */
    public void setTeamId(@jakarta.annotation.Nullable final String value) {
        this.teamId = value;
    }
    /**
     * Sets the userId property value. The userId property
     * @param value Value to set for the userId property.
     */
    public void setUserId(@jakarta.annotation.Nullable final String value) {
        this.userId = value;
    }
    /**
     * Sets the username property value. The username property
     * @param value Value to set for the username property.
     */
    public void setUsername(@jakarta.annotation.Nullable final ApiMatchPlayerUsername value) {
        this.username = value;
    }
    /**
     * Composed type wrapper for classes {@link ApiMatchPlayerAvatarUrlMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchPlayerAvatarUrl implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchPlayerAvatarUrlMember1}
         */
        private ApiMatchPlayerAvatarUrlMember1 apiMatchPlayerAvatarUrlMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchPlayerAvatarUrl}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchPlayerAvatarUrl createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchPlayerAvatarUrl result = new ApiMatchPlayerAvatarUrl();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMatchPlayerAvatarUrlMember1(new ApiMatchPlayerAvatarUrlMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchPlayer_avatarUrlMember1 property value. Composed type representation for type {@link ApiMatchPlayerAvatarUrlMember1}
         * @return a {@link ApiMatchPlayerAvatarUrlMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchPlayerAvatarUrlMember1 getApiMatchPlayerAvatarUrlMember1() {
            return this.apiMatchPlayerAvatarUrlMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchPlayerAvatarUrlMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchPlayerAvatarUrlMember1());
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
                writer.writeObjectValue(null, this.getApiMatchPlayerAvatarUrlMember1());
            }
        }
        /**
         * Sets the ApiMatchPlayer_avatarUrlMember1 property value. Composed type representation for type {@link ApiMatchPlayerAvatarUrlMember1}
         * @param value Value to set for the ApiMatchPlayer_avatarUrlMember1 property.
         */
        public void setApiMatchPlayerAvatarUrlMember1(@jakarta.annotation.Nullable final ApiMatchPlayerAvatarUrlMember1 value) {
            this.apiMatchPlayerAvatarUrlMember1 = value;
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
     * Composed type wrapper for classes {@link ApiMatchPlayerCheckedInAtMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchPlayerCheckedInAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchPlayerCheckedInAtMember1}
         */
        private ApiMatchPlayerCheckedInAtMember1 apiMatchPlayerCheckedInAtMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchPlayerCheckedInAt}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchPlayerCheckedInAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchPlayerCheckedInAt result = new ApiMatchPlayerCheckedInAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMatchPlayerCheckedInAtMember1(new ApiMatchPlayerCheckedInAtMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchPlayer_checkedInAtMember1 property value. Composed type representation for type {@link ApiMatchPlayerCheckedInAtMember1}
         * @return a {@link ApiMatchPlayerCheckedInAtMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchPlayerCheckedInAtMember1 getApiMatchPlayerCheckedInAtMember1() {
            return this.apiMatchPlayerCheckedInAtMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchPlayerCheckedInAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchPlayerCheckedInAtMember1());
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
                writer.writeObjectValue(null, this.getApiMatchPlayerCheckedInAtMember1());
            }
        }
        /**
         * Sets the ApiMatchPlayer_checkedInAtMember1 property value. Composed type representation for type {@link ApiMatchPlayerCheckedInAtMember1}
         * @param value Value to set for the ApiMatchPlayer_checkedInAtMember1 property.
         */
        public void setApiMatchPlayerCheckedInAtMember1(@jakarta.annotation.Nullable final ApiMatchPlayerCheckedInAtMember1 value) {
            this.apiMatchPlayerCheckedInAtMember1 = value;
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
     * Composed type wrapper for classes {@link ApiMatchPlayerNameMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchPlayerName implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchPlayerNameMember1}
         */
        private ApiMatchPlayerNameMember1 apiMatchPlayerNameMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchPlayerName}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchPlayerName createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchPlayerName result = new ApiMatchPlayerName();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMatchPlayerNameMember1(new ApiMatchPlayerNameMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchPlayer_nameMember1 property value. Composed type representation for type {@link ApiMatchPlayerNameMember1}
         * @return a {@link ApiMatchPlayerNameMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchPlayerNameMember1 getApiMatchPlayerNameMember1() {
            return this.apiMatchPlayerNameMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchPlayerNameMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchPlayerNameMember1());
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
                writer.writeObjectValue(null, this.getApiMatchPlayerNameMember1());
            }
        }
        /**
         * Sets the ApiMatchPlayer_nameMember1 property value. Composed type representation for type {@link ApiMatchPlayerNameMember1}
         * @param value Value to set for the ApiMatchPlayer_nameMember1 property.
         */
        public void setApiMatchPlayerNameMember1(@jakarta.annotation.Nullable final ApiMatchPlayerNameMember1 value) {
            this.apiMatchPlayerNameMember1 = value;
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
     * Composed type wrapper for classes {@link ApiMatchPlayerUsernameMember1}, {@link String}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class ApiMatchPlayerUsername implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link ApiMatchPlayerUsernameMember1}
         */
        private ApiMatchPlayerUsernameMember1 apiMatchPlayerUsernameMember1;
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link ApiMatchPlayerUsername}
         */
        @jakarta.annotation.Nonnull
        public static ApiMatchPlayerUsername createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final ApiMatchPlayerUsername result = new ApiMatchPlayerUsername();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setApiMatchPlayerUsernameMember1(new ApiMatchPlayerUsernameMember1());
            }
            return result;
        }
        /**
         * Gets the ApiMatchPlayer_usernameMember1 property value. Composed type representation for type {@link ApiMatchPlayerUsernameMember1}
         * @return a {@link ApiMatchPlayerUsernameMember1}
         */
        @jakarta.annotation.Nullable
        public ApiMatchPlayerUsernameMember1 getApiMatchPlayerUsernameMember1() {
            return this.apiMatchPlayerUsernameMember1;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getApiMatchPlayerUsernameMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getApiMatchPlayerUsernameMember1());
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
                writer.writeObjectValue(null, this.getApiMatchPlayerUsernameMember1());
            }
        }
        /**
         * Sets the ApiMatchPlayer_usernameMember1 property value. Composed type representation for type {@link ApiMatchPlayerUsernameMember1}
         * @param value Value to set for the ApiMatchPlayer_usernameMember1 property.
         */
        public void setApiMatchPlayerUsernameMember1(@jakarta.annotation.Nullable final ApiMatchPlayerUsernameMember1 value) {
            this.apiMatchPlayerUsernameMember1 = value;
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
