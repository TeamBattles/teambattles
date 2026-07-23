package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Bracket node result revert payload.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentRevertNodeResultBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Whether to generate a fresh match for the reverted node. Defaults to true when omitted.
     */
    private Boolean regenerateMatch;
    /**
     * Instantiates a new {@link TournamentRevertNodeResultBody} and sets the default values.
     */
    public TournamentRevertNodeResultBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentRevertNodeResultBody}
     */
    @jakarta.annotation.Nonnull
    public static TournamentRevertNodeResultBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentRevertNodeResultBody();
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(1);
        deserializerMap.put("regenerateMatch", (n) -> { this.setRegenerateMatch(n.getBooleanValue()); });
        return deserializerMap;
    }
    /**
     * Gets the regenerateMatch property value. Whether to generate a fresh match for the reverted node. Defaults to true when omitted.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getRegenerateMatch() {
        return this.regenerateMatch;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeBooleanValue("regenerateMatch", this.getRegenerateMatch());
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
     * Sets the regenerateMatch property value. Whether to generate a fresh match for the reverted node. Defaults to true when omitted.
     * @param value Value to set for the regenerateMatch property.
     */
    public void setRegenerateMatch(@jakarta.annotation.Nullable final Boolean value) {
        this.regenerateMatch = value;
    }
}
