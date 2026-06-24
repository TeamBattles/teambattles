package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Accepts a pending challenge as the API key owner.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class AcceptChallengeRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Active roster user IDs for the challenge response.
     */
    private java.util.List<String> activeRoster;
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Optional bench roster users.
     */
    private java.util.List<AcceptChallengeRequestBodyBenchRoster> benchRoster;
    /**
     * Instantiates a new {@link AcceptChallengeRequestBody} and sets the default values.
     */
    public AcceptChallengeRequestBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link AcceptChallengeRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static AcceptChallengeRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new AcceptChallengeRequestBody();
    }
    /**
     * Gets the activeRoster property value. Active roster user IDs for the challenge response.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getActiveRoster() {
        return this.activeRoster;
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
     * Gets the benchRoster property value. Optional bench roster users.
     * @return a {@link java.util.List<AcceptChallengeRequestBodyBenchRoster>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<AcceptChallengeRequestBodyBenchRoster> getBenchRoster() {
        return this.benchRoster;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("activeRoster", (n) -> { this.setActiveRoster(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("benchRoster", (n) -> { this.setBenchRoster(n.getCollectionOfObjectValues(AcceptChallengeRequestBodyBenchRoster::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfPrimitiveValues("activeRoster", this.getActiveRoster());
        writer.writeCollectionOfObjectValues("benchRoster", this.getBenchRoster());
        writer.writeAdditionalData(this.getAdditionalData());
    }
    /**
     * Sets the activeRoster property value. Active roster user IDs for the challenge response.
     * @param value Value to set for the activeRoster property.
     */
    public void setActiveRoster(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.activeRoster = value;
    }
    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param value Value to set for the AdditionalData property.
     */
    public void setAdditionalData(@jakarta.annotation.Nullable final Map<String, Object> value) {
        this.additionalData = value;
    }
    /**
     * Sets the benchRoster property value. Optional bench roster users.
     * @param value Value to set for the benchRoster property.
     */
    public void setBenchRoster(@jakarta.annotation.Nullable final java.util.List<AcceptChallengeRequestBodyBenchRoster> value) {
        this.benchRoster = value;
    }
}
