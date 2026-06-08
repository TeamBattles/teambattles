package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Map score submission payload for a single map.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class SubmitScoreBody implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Creator team score (integer, 0-1000).
     */
    private Integer creatorTeamScore;
    /**
     * Map identifier string (e.g. dust2).
     */
    private String mapId;
    /**
     * Zero-based map index. Must be a non-negative integer.
     */
    private Integer mapIndex;
    /**
     * Accepted/opponent team score (integer, 0-1000).
     */
    private Integer opponentTeamScore;
    /**
     * Optional Convex storage ids from POST /api/v1/uploads/image-url (validated for size + content-type, max 10; preferred over screenshotUrls).
     */
    private java.util.List<String> screenshotStorageIds;
    /**
     * Optional external screenshot URLs (validated as public https server-side, max 10). Prefer screenshotStorageIds for validated blobs.
     */
    private java.util.List<String> screenshotUrls;
    /**
     * Instantiates a new {@link SubmitScoreBody} and sets the default values.
     */
    public SubmitScoreBody() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link SubmitScoreBody}
     */
    @jakarta.annotation.Nonnull
    public static SubmitScoreBody createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new SubmitScoreBody();
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
     * Gets the creatorTeamScore property value. Creator team score (integer, 0-1000).
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getCreatorTeamScore() {
        return this.creatorTeamScore;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(6);
        deserializerMap.put("creatorTeamScore", (n) -> { this.setCreatorTeamScore(n.getIntegerValue()); });
        deserializerMap.put("mapId", (n) -> { this.setMapId(n.getStringValue()); });
        deserializerMap.put("mapIndex", (n) -> { this.setMapIndex(n.getIntegerValue()); });
        deserializerMap.put("opponentTeamScore", (n) -> { this.setOpponentTeamScore(n.getIntegerValue()); });
        deserializerMap.put("screenshotStorageIds", (n) -> { this.setScreenshotStorageIds(n.getCollectionOfPrimitiveValues(String.class)); });
        deserializerMap.put("screenshotUrls", (n) -> { this.setScreenshotUrls(n.getCollectionOfPrimitiveValues(String.class)); });
        return deserializerMap;
    }
    /**
     * Gets the mapId property value. Map identifier string (e.g. dust2).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getMapId() {
        return this.mapId;
    }
    /**
     * Gets the mapIndex property value. Zero-based map index. Must be a non-negative integer.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getMapIndex() {
        return this.mapIndex;
    }
    /**
     * Gets the opponentTeamScore property value. Accepted/opponent team score (integer, 0-1000).
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getOpponentTeamScore() {
        return this.opponentTeamScore;
    }
    /**
     * Gets the screenshotStorageIds property value. Optional Convex storage ids from POST /api/v1/uploads/image-url (validated for size + content-type, max 10; preferred over screenshotUrls).
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getScreenshotStorageIds() {
        return this.screenshotStorageIds;
    }
    /**
     * Gets the screenshotUrls property value. Optional external screenshot URLs (validated as public https server-side, max 10). Prefer screenshotStorageIds for validated blobs.
     * @return a {@link java.util.List<String>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<String> getScreenshotUrls() {
        return this.screenshotUrls;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("creatorTeamScore", this.getCreatorTeamScore());
        writer.writeStringValue("mapId", this.getMapId());
        writer.writeIntegerValue("mapIndex", this.getMapIndex());
        writer.writeIntegerValue("opponentTeamScore", this.getOpponentTeamScore());
        writer.writeCollectionOfPrimitiveValues("screenshotStorageIds", this.getScreenshotStorageIds());
        writer.writeCollectionOfPrimitiveValues("screenshotUrls", this.getScreenshotUrls());
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
     * Sets the creatorTeamScore property value. Creator team score (integer, 0-1000).
     * @param value Value to set for the creatorTeamScore property.
     */
    public void setCreatorTeamScore(@jakarta.annotation.Nullable final Integer value) {
        this.creatorTeamScore = value;
    }
    /**
     * Sets the mapId property value. Map identifier string (e.g. dust2).
     * @param value Value to set for the mapId property.
     */
    public void setMapId(@jakarta.annotation.Nullable final String value) {
        this.mapId = value;
    }
    /**
     * Sets the mapIndex property value. Zero-based map index. Must be a non-negative integer.
     * @param value Value to set for the mapIndex property.
     */
    public void setMapIndex(@jakarta.annotation.Nullable final Integer value) {
        this.mapIndex = value;
    }
    /**
     * Sets the opponentTeamScore property value. Accepted/opponent team score (integer, 0-1000).
     * @param value Value to set for the opponentTeamScore property.
     */
    public void setOpponentTeamScore(@jakarta.annotation.Nullable final Integer value) {
        this.opponentTeamScore = value;
    }
    /**
     * Sets the screenshotStorageIds property value. Optional Convex storage ids from POST /api/v1/uploads/image-url (validated for size + content-type, max 10; preferred over screenshotUrls).
     * @param value Value to set for the screenshotStorageIds property.
     */
    public void setScreenshotStorageIds(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.screenshotStorageIds = value;
    }
    /**
     * Sets the screenshotUrls property value. Optional external screenshot URLs (validated as public https server-side, max 10). Prefer screenshotStorageIds for validated blobs.
     * @param value Value to set for the screenshotUrls property.
     */
    public void setScreenshotUrls(@jakarta.annotation.Nullable final java.util.List<String> value) {
        this.screenshotUrls = value;
    }
}
