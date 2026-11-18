package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class StreamSignalsBodyChannels implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Twitch user id.
     */
    private String id;
    /**
     * favorite: a user starred the channel. follow: a user follows it on Twitch. watch: a user watched it live.
     */
    private StreamSignalsBodyChannelsKind kind;
    /**
     * Instantiates a new {@link StreamSignalsBodyChannels} and sets the default values.
     */
    public StreamSignalsBodyChannels() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link StreamSignalsBodyChannels}
     */
    @jakarta.annotation.Nonnull
    public static StreamSignalsBodyChannels createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new StreamSignalsBodyChannels();
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
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("kind", (n) -> { this.setKind(n.getEnumValue(StreamSignalsBodyChannelsKind::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Twitch user id.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the kind property value. favorite: a user starred the channel. follow: a user follows it on Twitch. watch: a user watched it live.
     * @return a {@link StreamSignalsBodyChannelsKind}
     */
    @jakarta.annotation.Nullable
    public StreamSignalsBodyChannelsKind getKind() {
        return this.kind;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("id", this.getId());
        writer.writeEnumValue("kind", this.getKind());
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
     * Sets the id property value. Twitch user id.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the kind property value. favorite: a user starred the channel. follow: a user follows it on Twitch. watch: a user watched it live.
     * @param value Value to set for the kind property.
     */
    public void setKind(@jakarta.annotation.Nullable final StreamSignalsBodyChannelsKind value) {
        this.kind = value;
    }
}
