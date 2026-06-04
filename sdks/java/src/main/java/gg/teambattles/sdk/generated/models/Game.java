package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Game definition.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class Game implements Parsable {
    /**
     * Game ID.
     */
    private String id;
    /**
     * Game name key for i18n lookup.
     */
    private String nameKey;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link Game}
     */
    @jakarta.annotation.Nonnull
    public static Game createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new Game();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("nameKey", (n) -> { this.setNameKey(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Game ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the nameKey property value. Game name key for i18n lookup.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getNameKey() {
        return this.nameKey;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("nameKey", this.getNameKey());
    }
    /**
     * Sets the id property value. Game ID.
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the nameKey property value. Game name key for i18n lookup.
     * @param value Value to set for the nameKey property.
     */
    public void setNameKey(@jakarta.annotation.Nullable final String value) {
        this.nameKey = value;
    }
}
