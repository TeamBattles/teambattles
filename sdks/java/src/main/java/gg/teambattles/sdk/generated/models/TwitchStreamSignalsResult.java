package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * What the stream index did with the channels it was sent.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TwitchStreamSignalsResult implements Parsable {
    /**
     * Channels now being recorded: ones already indexed (renewed) plus ones this call added.
     */
    private Integer accepted;
    /**
     * Channels this call added to the index.
     */
    private Integer added;
    /**
     * Channels that were not taken, each with its code.
     */
    private java.util.List<TwitchStreamSignalsResultRejected> rejected;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TwitchStreamSignalsResult}
     */
    @jakarta.annotation.Nonnull
    public static TwitchStreamSignalsResult createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TwitchStreamSignalsResult();
    }
    /**
     * Gets the accepted property value. Channels now being recorded: ones already indexed (renewed) plus ones this call added.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getAccepted() {
        return this.accepted;
    }
    /**
     * Gets the added property value. Channels this call added to the index.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getAdded() {
        return this.added;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("accepted", (n) -> { this.setAccepted(n.getIntegerValue()); });
        deserializerMap.put("added", (n) -> { this.setAdded(n.getIntegerValue()); });
        deserializerMap.put("rejected", (n) -> { this.setRejected(n.getCollectionOfObjectValues(TwitchStreamSignalsResultRejected::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the rejected property value. Channels that were not taken, each with its code.
     * @return a {@link java.util.List<TwitchStreamSignalsResultRejected>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TwitchStreamSignalsResultRejected> getRejected() {
        return this.rejected;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("accepted", this.getAccepted());
        writer.writeIntegerValue("added", this.getAdded());
        writer.writeCollectionOfObjectValues("rejected", this.getRejected());
    }
    /**
     * Sets the accepted property value. Channels now being recorded: ones already indexed (renewed) plus ones this call added.
     * @param value Value to set for the accepted property.
     */
    public void setAccepted(@jakarta.annotation.Nullable final Integer value) {
        this.accepted = value;
    }
    /**
     * Sets the added property value. Channels this call added to the index.
     * @param value Value to set for the added property.
     */
    public void setAdded(@jakarta.annotation.Nullable final Integer value) {
        this.added = value;
    }
    /**
     * Sets the rejected property value. Channels that were not taken, each with its code.
     * @param value Value to set for the rejected property.
     */
    public void setRejected(@jakarta.annotation.Nullable final java.util.List<TwitchStreamSignalsResultRejected> value) {
        this.rejected = value;
    }
}
