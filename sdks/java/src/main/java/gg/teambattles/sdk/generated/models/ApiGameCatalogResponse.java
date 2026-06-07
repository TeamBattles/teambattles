package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Game catalog list response.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiGameCatalogResponse implements Parsable {
    /**
     * The games property
     */
    private java.util.List<ApiGameCatalogEntry> games;
    /**
     * The objectives property
     */
    private java.util.List<ApiObjective> objectives;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiGameCatalogResponse}
     */
    @jakarta.annotation.Nonnull
    public static ApiGameCatalogResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiGameCatalogResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("games", (n) -> { this.setGames(n.getCollectionOfObjectValues(ApiGameCatalogEntry::createFromDiscriminatorValue)); });
        deserializerMap.put("objectives", (n) -> { this.setObjectives(n.getCollectionOfObjectValues(ApiObjective::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the games property value. The games property
     * @return a {@link java.util.List<ApiGameCatalogEntry>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<ApiGameCatalogEntry> getGames() {
        return this.games;
    }
    /**
     * Gets the objectives property value. The objectives property
     * @return a {@link java.util.List<ApiObjective>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<ApiObjective> getObjectives() {
        return this.objectives;
    }
    /**
     * Gets the timestamp property value. The timestamp property
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
        writer.writeCollectionOfObjectValues("games", this.getGames());
        writer.writeCollectionOfObjectValues("objectives", this.getObjectives());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the games property value. The games property
     * @param value Value to set for the games property.
     */
    public void setGames(@jakarta.annotation.Nullable final java.util.List<ApiGameCatalogEntry> value) {
        this.games = value;
    }
    /**
     * Sets the objectives property value. The objectives property
     * @param value Value to set for the objectives property.
     */
    public void setObjectives(@jakarta.annotation.Nullable final java.util.List<ApiObjective> value) {
        this.objectives = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}
