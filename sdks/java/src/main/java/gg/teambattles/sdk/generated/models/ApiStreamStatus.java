package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * API-safe live-stream status for a user.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiStreamStatus implements Parsable {
    /**
     * Whether the user is live on any platform.
     */
    private Boolean isLive;
    /**
     * Platforms the user is currently live on.
     */
    private java.util.List<StreamPlatform> platforms;
    /**
     * Primary stream details, or null when offline.
     */
    private ApiPrimaryStream primaryStream;
    /**
     * User ID these stream details belong to.
     */
    private String userId;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiStreamStatus}
     */
    @jakarta.annotation.Nonnull
    public static ApiStreamStatus createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiStreamStatus();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("isLive", (n) -> { this.setIsLive(n.getBooleanValue()); });
        deserializerMap.put("platforms", (n) -> { this.setPlatforms(n.getCollectionOfEnumValues(StreamPlatform::forValue)); });
        deserializerMap.put("primaryStream", (n) -> { this.setPrimaryStream(n.getObjectValue(ApiPrimaryStream::createFromDiscriminatorValue)); });
        deserializerMap.put("userId", (n) -> { this.setUserId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the isLive property value. Whether the user is live on any platform.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsLive() {
        return this.isLive;
    }
    /**
     * Gets the platforms property value. Platforms the user is currently live on.
     * @return a {@link java.util.List<StreamPlatform>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<StreamPlatform> getPlatforms() {
        return this.platforms;
    }
    /**
     * Gets the primaryStream property value. Primary stream details, or null when offline.
     * @return a {@link ApiPrimaryStream}
     */
    @jakarta.annotation.Nullable
    public ApiPrimaryStream getPrimaryStream() {
        return this.primaryStream;
    }
    /**
     * Gets the userId property value. User ID these stream details belong to.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUserId() {
        return this.userId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeBooleanValue("isLive", this.getIsLive());
        writer.writeCollectionOfEnumValues("platforms", this.getPlatforms());
        writer.writeObjectValue("primaryStream", this.getPrimaryStream());
        writer.writeStringValue("userId", this.getUserId());
    }
    /**
     * Sets the isLive property value. Whether the user is live on any platform.
     * @param value Value to set for the isLive property.
     */
    public void setIsLive(@jakarta.annotation.Nullable final Boolean value) {
        this.isLive = value;
    }
    /**
     * Sets the platforms property value. Platforms the user is currently live on.
     * @param value Value to set for the platforms property.
     */
    public void setPlatforms(@jakarta.annotation.Nullable final java.util.List<StreamPlatform> value) {
        this.platforms = value;
    }
    /**
     * Sets the primaryStream property value. Primary stream details, or null when offline.
     * @param value Value to set for the primaryStream property.
     */
    public void setPrimaryStream(@jakarta.annotation.Nullable final ApiPrimaryStream value) {
        this.primaryStream = value;
    }
    /**
     * Sets the userId property value. User ID these stream details belong to.
     * @param value Value to set for the userId property.
     */
    public void setUserId(@jakarta.annotation.Nullable final String value) {
        this.userId = value;
    }
}
