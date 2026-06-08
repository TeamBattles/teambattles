package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Creates a league team ban.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class CreateBanRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Expiration timestamp for temporary bans, in epoch milliseconds.
     */
    private Double expiresAt;
    /**
     * Whether the ban never expires.
     */
    private Boolean isPermanent;
    /**
     * Reason for the ban.
     */
    private String reason;
    /**
     * Team ID to ban from the league.
     */
    private String teamId;
    /**
     * Instantiates a new {@link CreateBanRequestBody} and sets the default values.
     */
    public CreateBanRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link CreateBanRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static CreateBanRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new CreateBanRequestBody();
    }
    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return a {@link Map<String, Object>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, Object> getAdditionalData() {
        return this.additionalData;
    }
    /**
     * Gets the expiresAt property value. Expiration timestamp for temporary bans, in epoch milliseconds.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getExpiresAt() {
        return this.expiresAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("expiresAt", (n) -> { this.setExpiresAt(n.getDoubleValue()); });
        deserializerMap.put("isPermanent", (n) -> { this.setIsPermanent(n.getBooleanValue()); });
        deserializerMap.put("reason", (n) -> { this.setReason(n.getStringValue()); });
        deserializerMap.put("teamId", (n) -> { this.setTeamId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the isPermanent property value. Whether the ban never expires.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsPermanent() {
        return this.isPermanent;
    }
    /**
     * Gets the reason property value. Reason for the ban.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getReason() {
        return this.reason;
    }
    /**
     * Gets the teamId property value. Team ID to ban from the league.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTeamId() {
        return this.teamId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeDoubleValue("expiresAt", this.getExpiresAt());
        writer.writeBooleanValue("isPermanent", this.getIsPermanent());
        writer.writeStringValue("reason", this.getReason());
        writer.writeStringValue("teamId", this.getTeamId());
        writer.writeAdditionalData(this.getAdditionalData());
    }
    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param value Value to set for the AdditionalData property.
     */
    public void setAdditionalData(@jakarta.annotation.Nullable final Map<String, Object> value) {
        this.additionalData = value;
    }
    /**
     * Sets the expiresAt property value. Expiration timestamp for temporary bans, in epoch milliseconds.
     * @param value Value to set for the expiresAt property.
     */
    public void setExpiresAt(@jakarta.annotation.Nullable final Double value) {
        this.expiresAt = value;
    }
    /**
     * Sets the isPermanent property value. Whether the ban never expires.
     * @param value Value to set for the isPermanent property.
     */
    public void setIsPermanent(@jakarta.annotation.Nullable final Boolean value) {
        this.isPermanent = value;
    }
    /**
     * Sets the reason property value. Reason for the ban.
     * @param value Value to set for the reason property.
     */
    public void setReason(@jakarta.annotation.Nullable final String value) {
        this.reason = value;
    }
    /**
     * Sets the teamId property value. Team ID to ban from the league.
     * @param value Value to set for the teamId property.
     */
    public void setTeamId(@jakarta.annotation.Nullable final String value) {
        this.teamId = value;
    }
}
