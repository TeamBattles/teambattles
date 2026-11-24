package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
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
    private String avatarUrl;
    /**
     * The checkedInAt property
     */
    private String checkedInAt;
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
    private String name;
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
    private String username;
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
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getAvatarUrl() {
        return this.avatarUrl;
    }
    /**
     * Gets the checkedInAt property value. The checkedInAt property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCheckedInAt() {
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
        deserializerMap.put("avatarUrl", (n) -> { this.setAvatarUrl(n.getStringValue()); });
        deserializerMap.put("checkedInAt", (n) -> { this.setCheckedInAt(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("isCheckedIn", (n) -> { this.setIsCheckedIn(n.getBooleanValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("rosterType", (n) -> { this.setRosterType(n.getEnumValue(ApiMatchPlayerRosterType::forValue)); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        deserializerMap.put("userId", (n) -> { this.setUserId(n.getStringValue()); });
        deserializerMap.put("username", (n) -> { this.setUsername(n.getStringValue()); });
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
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
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
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUsername() {
        return this.username;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeEnumValue("attendanceStatus", this.getAttendanceStatus());
        writer.writeStringValue("avatarUrl", this.getAvatarUrl());
        writer.writeStringValue("checkedInAt", this.getCheckedInAt());
        writer.writeStringValue("id", this.getId());
        writer.writeBooleanValue("isCheckedIn", this.getIsCheckedIn());
        writer.writeStringValue("name", this.getName());
        writer.writeEnumValue("rosterType", this.getRosterType());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeStringValue("userId", this.getUserId());
        writer.writeStringValue("username", this.getUsername());
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
    public void setAvatarUrl(@jakarta.annotation.Nullable final String value) {
        this.avatarUrl = value;
    }
    /**
     * Sets the checkedInAt property value. The checkedInAt property
     * @param value Value to set for the checkedInAt property.
     */
    public void setCheckedInAt(@jakarta.annotation.Nullable final String value) {
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
    public void setName(@jakarta.annotation.Nullable final String value) {
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
    public void setUsername(@jakarta.annotation.Nullable final String value) {
        this.username = value;
    }
}
