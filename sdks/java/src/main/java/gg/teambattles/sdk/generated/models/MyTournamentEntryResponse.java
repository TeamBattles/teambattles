package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * The caller&apos;s tournament entry state.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MyTournamentEntryResponse implements Parsable {
    /**
     * The API key owner&apos;s own state in one tournament.
     */
    private MyTournamentEntry entry;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MyTournamentEntryResponse}
     */
    @jakarta.annotation.Nonnull
    public static MyTournamentEntryResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MyTournamentEntryResponse();
    }
    /**
     * Gets the entry property value. The API key owner&apos;s own state in one tournament.
     * @return a {@link MyTournamentEntry}
     */
    @jakarta.annotation.Nullable
    public MyTournamentEntry getEntry() {
        return this.entry;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("entry", (n) -> { this.setEntry(n.getObjectValue(MyTournamentEntry::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTimestamp() {
        return this.timestamp;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeObjectValue("entry", this.getEntry());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the entry property value. The API key owner&apos;s own state in one tournament.
     * @param value Value to set for the entry property.
     */
    public void setEntry(@jakarta.annotation.Nullable final MyTournamentEntry value) {
        this.entry = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}
