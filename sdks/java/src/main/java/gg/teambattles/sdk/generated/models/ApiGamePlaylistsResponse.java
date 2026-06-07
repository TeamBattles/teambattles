package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Game-scoped playlist response.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ApiGamePlaylistsResponse implements Parsable {
    /**
     * Static public game catalog entry.
     */
    private ApiGameCatalogEntry game;
    /**
     * The playlists property
     */
    private java.util.List<ApiGamePlaylist> playlists;
    /**
     * The timestamp property
     */
    private String timestamp;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ApiGamePlaylistsResponse}
     */
    @jakarta.annotation.Nonnull
    public static ApiGamePlaylistsResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ApiGamePlaylistsResponse();
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("game", (n) -> { this.setGame(n.getObjectValue(ApiGameCatalogEntry::createFromDiscriminatorValue)); });
        deserializerMap.put("playlists", (n) -> { this.setPlaylists(n.getCollectionOfObjectValues(ApiGamePlaylist::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the game property value. Static public game catalog entry.
     * @return a {@link ApiGameCatalogEntry}
     */
    @jakarta.annotation.Nullable
    public ApiGameCatalogEntry getGame() {
        return this.game;
    }
    /**
     * Gets the playlists property value. The playlists property
     * @return a {@link java.util.List<ApiGamePlaylist>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<ApiGamePlaylist> getPlaylists() {
        return this.playlists;
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
        writer.writeObjectValue("game", this.getGame());
        writer.writeCollectionOfObjectValues("playlists", this.getPlaylists());
        writer.writeStringValue("timestamp", this.getTimestamp());
    }
    /**
     * Sets the game property value. Static public game catalog entry.
     * @param value Value to set for the game property.
     */
    public void setGame(@jakarta.annotation.Nullable final ApiGameCatalogEntry value) {
        this.game = value;
    }
    /**
     * Sets the playlists property value. The playlists property
     * @param value Value to set for the playlists property.
     */
    public void setPlaylists(@jakarta.annotation.Nullable final java.util.List<ApiGamePlaylist> value) {
        this.playlists = value;
    }
    /**
     * Sets the timestamp property value. The timestamp property
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
}
