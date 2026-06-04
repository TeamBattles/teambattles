package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Filters and cursor pagination for listing a game&apos;s matches.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ListGameMatchesBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Opaque continuation cursor from a prior page&apos;s pagination.cursor.
     */
    private String cursor;
    /**
     * Game to list matches for. Must be the key&apos;s approved game.
     */
    private String gameId;
    /**
     * Page size (1-100, enforced by the handler). Defaults to the handler&apos;s internal default.
     */
    private Double limit;
    /**
     * Optional MatchStatus filter (e.g. IN_PROGRESS).
     */
    private String status;
    /**
     * Instantiates a new {@link ListGameMatchesBody} and sets the default values.
     */
    public ListGameMatchesBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link ListGameMatchesBody}
     */
    @jakarta.annotation.Nonnull
    public static ListGameMatchesBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new ListGameMatchesBody();
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
     * Gets the cursor property value. Opaque continuation cursor from a prior page&apos;s pagination.cursor.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCursor() {
        return this.cursor;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(4);
        deserializerMap.put("cursor", (n) -> { this.setCursor(n.getStringValue()); });
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getStringValue()); });
        deserializerMap.put("limit", (n) -> { this.setLimit(n.getDoubleValue()); });
        deserializerMap.put("status", (n) -> { this.setStatus(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gameId property value. Game to list matches for. Must be the key&apos;s approved game.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameId() {
        return this.gameId;
    }
    /**
     * Gets the limit property value. Page size (1-100, enforced by the handler). Defaults to the handler&apos;s internal default.
     * @return a {@link Double}
     */
    @jakarta.annotation.Nullable
    public Double getLimit() {
        return this.limit;
    }
    /**
     * Gets the status property value. Optional MatchStatus filter (e.g. IN_PROGRESS).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getStatus() {
        return this.status;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("cursor", this.getCursor());
        writer.writeStringValue("gameId", this.getGameId());
        writer.writeDoubleValue("limit", this.getLimit());
        writer.writeStringValue("status", this.getStatus());
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
     * Sets the cursor property value. Opaque continuation cursor from a prior page&apos;s pagination.cursor.
     * @param value Value to set for the cursor property.
     */
    public void setCursor(@jakarta.annotation.Nullable final String value) {
        this.cursor = value;
    }
    /**
     * Sets the gameId property value. Game to list matches for. Must be the key&apos;s approved game.
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final String value) {
        this.gameId = value;
    }
    /**
     * Sets the limit property value. Page size (1-100, enforced by the handler). Defaults to the handler&apos;s internal default.
     * @param value Value to set for the limit property.
     */
    public void setLimit(@jakarta.annotation.Nullable final Double value) {
        this.limit = value;
    }
    /**
     * Sets the status property value. Optional MatchStatus filter (e.g. IN_PROGRESS).
     * @param value Value to set for the status property.
     */
    public void setStatus(@jakarta.annotation.Nullable final String value) {
        this.status = value;
    }
}
