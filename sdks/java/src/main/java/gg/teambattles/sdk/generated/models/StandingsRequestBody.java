package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Season and game filters for league standings.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class StandingsRequestBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Filter standings to a specific game id.
     */
    private String gameId;
    /**
     * Maximum number of teams to return (1-100). Defaults to 50.
     */
    private Integer limit;
    /**
     * Filter standings to a specific season id.
     */
    private String seasonId;
    /**
     * Instantiates a new {@link StandingsRequestBody} and sets the default values.
     */
    public StandingsRequestBody() {
        this.setAdditionalData(new HashMap<>());
        this.setLimit(50);
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link StandingsRequestBody}
     */
    @jakarta.annotation.Nonnull
    public static StandingsRequestBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new StandingsRequestBody();
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("gameId", (n) -> { this.setGameId(n.getStringValue()); });
        deserializerMap.put("limit", (n) -> { this.setLimit(n.getIntegerValue()); });
        deserializerMap.put("seasonId", (n) -> { this.setSeasonId(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the gameId property value. Filter standings to a specific game id.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getGameId() {
        return this.gameId;
    }
    /**
     * Gets the limit property value. Maximum number of teams to return (1-100). Defaults to 50.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getLimit() {
        return this.limit;
    }
    /**
     * Gets the seasonId property value. Filter standings to a specific season id.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getSeasonId() {
        return this.seasonId;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("gameId", this.getGameId());
        writer.writeIntegerValue("limit", this.getLimit());
        writer.writeStringValue("seasonId", this.getSeasonId());
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
     * Sets the gameId property value. Filter standings to a specific game id.
     * @param value Value to set for the gameId property.
     */
    public void setGameId(@jakarta.annotation.Nullable final String value) {
        this.gameId = value;
    }
    /**
     * Sets the limit property value. Maximum number of teams to return (1-100). Defaults to 50.
     * @param value Value to set for the limit property.
     */
    public void setLimit(@jakarta.annotation.Nullable final Integer value) {
        this.limit = value;
    }
    /**
     * Sets the seasonId property value. Filter standings to a specific season id.
     * @param value Value to set for the seasonId property.
     */
    public void setSeasonId(@jakarta.annotation.Nullable final String value) {
        this.seasonId = value;
    }
}
