package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UpsertDisplayRuleRequestBodyScope implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * The modes property
     */
    private java.util.List<String> modes;
    /**
     * The playlists property
     */
    private java.util.List<String> playlists;
    /**
     * Instantiates a new {@link UpsertDisplayRuleRequestBodyScope} and sets the default values.
     */
    public UpsertDisplayRuleRequestBodyScope() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link UpsertDisplayRuleRequestBodyScope}
     */
    @jakarta.annotation.Nonnull
    public static UpsertDisplayRuleRequestBodyScope createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new UpsertDisplayRuleRequestBodyScope();
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
        deserializerMap.put("modes", (n) -> { this.setModes(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("playlists", (n) -> { this.setPlaylists(n.getCollectionOfPrimitiveValues(String.class)); });
        return deserializerMap;
    }
    /**
     * Gets the modes property value. The modes property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getModes() {
        return this.modes;
    }
    /**
     * Gets the playlists property value. The playlists property
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getPlaylists() {
        return this.playlists;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeCollectionOfPrimitiveValues("modes", this.getModes());
        writer.writeCollectionOfPrimitiveValues("playlists", this.getPlaylists());
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
     * Sets the modes property value. The modes property
     * @param value Value to set for the modes property.
     */
    public void setModes(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.modes = value;
    }
    /**
     * Sets the playlists property value. The playlists property
     * @param value Value to set for the playlists property.
     */
    public void setPlaylists(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.playlists = value;
    }
}
