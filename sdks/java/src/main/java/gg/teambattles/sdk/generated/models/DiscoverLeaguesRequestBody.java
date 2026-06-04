package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Filters and offset pagination for discovering leagues.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class DiscoverLeaguesRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Filter to leagues that include this game id.
     */
    private String gameId;
    /**
     * Page size (1-50). Defaults to 12.
     */
    private Integer limit;
    /**
     * 1-based page number. Defaults to 1.
     */
    private Integer page;
    /**
     * Free-text search across league names.
     */
    private String search;
    /**
     * Instantiates a new {@link DiscoverLeaguesRequestBody} and sets the default values.
     */
    public DiscoverLeaguesRequestBody() {
        this.setAdditionalData(new HashMap<>());
        this.setLimit(12);
        this.setPage(1);
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link DiscoverLeaguesRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static DiscoverLeaguesRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new DiscoverLeaguesRequestBody();
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getStringValue()); });
        deserializerMap.put("limit", (n) -> { this.setLimit(n.getIntegerValue()); });
        deserializerMap.put("page", (n) -> { this.setPage(n.getIntegerValue()); });
        deserializerMap.put("search", (n) -> { this.setSearch(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gameId property value. Filter to leagues that include this game id.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameId() {
        return this.gameId;
    }
    /**
     * Gets the limit property value. Page size (1-50). Defaults to 12.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getLimit() {
        return this.limit;
    }
    /**
     * Gets the page property value. 1-based page number. Defaults to 1.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getPage() {
        return this.page;
    }
    /**
     * Gets the search property value. Free-text search across league names.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSearch() {
        return this.search;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("gameId", this.getGameId());
        writer.writeIntegerValue("limit", this.getLimit());
        writer.writeIntegerValue("page", this.getPage());
        writer.writeStringValue("search", this.getSearch());
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
     * Sets the gameId property value. Filter to leagues that include this game id.
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final String value) {
        this.gameId = value;
    }
    /**
     * Sets the limit property value. Page size (1-50). Defaults to 12.
     * @param value Value to set for the limit property.
     */
    public void setLimit(@jakarta.annotation.Nullable final Integer value) {
        this.limit = value;
    }
    /**
     * Sets the page property value. 1-based page number. Defaults to 1.
     * @param value Value to set for the page property.
     */
    public void setPage(@jakarta.annotation.Nullable final Integer value) {
        this.page = value;
    }
    /**
     * Sets the search property value. Free-text search across league names.
     * @param value Value to set for the search property.
     */
    public void setSearch(@jakarta.annotation.Nullable final String value) {
        this.search = value;
    }
}
