package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Free agent&apos;s response to a pickup offer.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentOfferRespondBody implements AdditionalDataHolder, Parsable {
    /**
     * true to accept the offer and join the offering team&apos;s roster, false to decline it. A competitive ban blocks accepting but never declining.
     */
    private Boolean accept;
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Instantiates a new {@link TournamentOfferRespondBody} and sets the default values.
     */
    public TournamentOfferRespondBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentOfferRespondBody}
     */
    @jakarta.annotation.Nonnull
    public static TournamentOfferRespondBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentOfferRespondBody();
    }
    /**
     * Gets the accept property value. true to accept the offer and join the offering team&apos;s roster, false to decline it. A competitive ban blocks accepting but never declining.
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getAccept() {
        return this.accept;
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
        deserializerMap.put("accept", (n) -> { this.setAccept(n.getBooleanValue()); });
        return deserializerMap;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeBooleanValue("accept", this.getAccept());
        writer.writeAdditionalData(this.getAdditionalData());
    }
    /**
     * Sets the accept property value. true to accept the offer and join the offering team&apos;s roster, false to decline it. A competitive ban blocks accepting but never declining.
     * @param value Value to set for the accept property.
     */
    public void setAccept(@jakarta.annotation.Nullable final Boolean value) {
        this.accept = value;
    }
    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param value Value to set for the AdditionalData property.
     */
    public void setAdditionalData(@jakarta.annotation.Nullable final Map<String, Object> value) {
        this.additionalData = value;
    }
}
