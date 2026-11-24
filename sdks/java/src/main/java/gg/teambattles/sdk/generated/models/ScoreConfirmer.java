package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Identity of the captain who confirmed a score.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ScoreConfirmer implements Parsable {
    /**
     * Confirmation time (ISO 8601).
     */
    private String confirmedAt;
    /**
     * The teamId property
     */
    private String teamId;
    /**
     * The userId property
     */
    private String userId;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ScoreConfirmer}
     */
    @jakarta.annotation.Nonnull
    public static ScoreConfirmer createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ScoreConfirmer();
    }
    /**
     * Gets the confirmedAt property value. Confirmation time (ISO 8601).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getConfirmedAt() {
        return this.confirmedAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("confirmedAt", (n) -> { this.setConfirmedAt(n.getStringValue()); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        deserializerMap.put("userId", (n) -> { this.setUserId(n.getStringValue()); });
        return deserializerMap;
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
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("confirmedAt", this.getConfirmedAt());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeStringValue("userId", this.getUserId());
    }
    /**
     * Sets the confirmedAt property value. Confirmation time (ISO 8601).
     * @param value Value to set for the confirmedAt property.
     */
    public void setConfirmedAt(@jakarta.annotation.Nullable final String value) {
        this.confirmedAt = value;
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
}
