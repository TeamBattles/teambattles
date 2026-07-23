package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Filters for public tournament discovery.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentDiscoverBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Filter by bracket format.
     */
    private TournamentFormat format;
    /**
     * Filter to a single game by Convex ID.
     */
    private String gameId;
    /**
     * Page size, 1-50.
     */
    private Integer limit;
    /**
     * 1-based page number.
     */
    private Integer page;
    /**
     * Case-insensitive name substring. Ignored below 2 characters.
     */
    private String search;
    /**
     * Filter by lifecycle status.
     */
    private TournamentStatus status;
    /**
     * Instantiates a new {@link TournamentDiscoverBody} and sets the default values.
     */
    public TournamentDiscoverBody() {
        this.setAdditionalData(new HashMap<>());
        this.setLimit(12);
        this.setPage(1);
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentDiscoverBody}
     */
    @jakarta.annotation.Nonnull
    public static TournamentDiscoverBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentDiscoverBody();
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(6);
        deserializerMap.put("format", (n) -> { this.setFormat(n.getEnumValue(TournamentFormat::forValue)); });
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getStringValue()); });
        deserializerMap.put("limit", (n) -> { this.setLimit(n.getIntegerValue()); });
        deserializerMap.put("page", (n) -> { this.setPage(n.getIntegerValue()); });
        deserializerMap.put("search", (n) -> { this.setSearch(n.getStringValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getEnumValue(TournamentStatus::forValue)); });
        return deserializerMap;
    }
    /**
     * Gets the format property value. Filter by bracket format.
     * @return a {@link TournamentFormat}
     */
    @jakarta.annotation.Nullable
    public TournamentFormat getFormat() {
        return this.format;
    }
    /**
     * Gets the gameId property value. Filter to a single game by Convex ID.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameId() {
        return this.gameId;
    }
    /**
     * Gets the limit property value. Page size, 1-50.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getLimit() {
        return this.limit;
    }
    /**
     * Gets the page property value. 1-based page number.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getPage() {
        return this.page;
    }
    /**
     * Gets the search property value. Case-insensitive name substring. Ignored below 2 characters.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSearch() {
        return this.search;
    }
    /**
     * Gets the status property value. Filter by lifecycle status.
     * @return a {@link TournamentStatus}
     */
    @jakarta.annotation.Nullable
    public TournamentStatus getStatus() {
        return this.status;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeEnumValue("format", this.getFormat());
        writer.writeStringValue("gameId", this.getGameId());
        writer.writeIntegerValue("limit", this.getLimit());
        writer.writeIntegerValue("page", this.getPage());
        writer.writeStringValue("search", this.getSearch());
        writer.writeEnumValue("status", this.getStatus());
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
     * Sets the format property value. Filter by bracket format.
     * @param value Value to set for the format property.
     */
    public void setFormat(@jakarta.annotation.Nullable final TournamentFormat value) {
        this.format = value;
    }
    /**
     * Sets the gameId property value. Filter to a single game by Convex ID.
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final String value) {
        this.gameId = value;
    }
    /**
     * Sets the limit property value. Page size, 1-50.
     * @param value Value to set for the limit property.
     */
    public void setLimit(@jakarta.annotation.Nullable final Integer value) {
        this.limit = value;
    }
    /**
     * Sets the page property value. 1-based page number.
     * @param value Value to set for the page property.
     */
    public void setPage(@jakarta.annotation.Nullable final Integer value) {
        this.page = value;
    }
    /**
     * Sets the search property value. Case-insensitive name substring. Ignored below 2 characters.
     * @param value Value to set for the search property.
     */
    public void setSearch(@jakarta.annotation.Nullable final String value) {
        this.search = value;
    }
    /**
     * Sets the status property value. Filter by lifecycle status.
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final TournamentStatus value) {
        this.status = value;
    }
}
