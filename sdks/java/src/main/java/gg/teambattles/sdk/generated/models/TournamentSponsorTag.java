package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * One sponsor credit line.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentSponsorTag implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * Used only when prefix is CUSTOM.
     */
    private String customPrefix;
    /**
     * Convex storage id for the sponsor logo.
     */
    private String logoStorageId;
    /**
     * The name property
     */
    private String name;
    /**
     * The prefix property
     */
    private TournamentSponsorTagPrefix prefix;
    /**
     * The url property
     */
    private String url;
    /**
     * Instantiates a new {@link TournamentSponsorTag} and sets the default values.
     */
    public TournamentSponsorTag() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentSponsorTag}
     */
    @jakarta.annotation.Nonnull
    public static TournamentSponsorTag createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentSponsorTag();
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
     * Gets the customPrefix property value. Used only when prefix is CUSTOM.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getCustomPrefix() {
        return this.customPrefix;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(5);
        deserializerMap.put("customPrefix", (n) -> { this.setCustomPrefix(n.getStringValue()); });
        deserializerMap.put("logoStorageId", (n) -> { this.setLogoStorageId(n.getStringValue()); });
        deserializerMap.put("name", (n) -> { this.setName(n.getStringValue()); });
        deserializerMap.put("prefix", (n) -> { this.setPrefix(n.getEnumValue(TournamentSponsorTagPrefix::forValue)); });
        deserializerMap.put("url", (n) -> { this.setUrl(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the logoStorageId property value. Convex storage id for the sponsor logo.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getLogoStorageId() {
        return this.logoStorageId;
    }
    /**
     * Gets the name property value. The name property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getName() {
        return this.name;
    }
    /**
     * Gets the prefix property value. The prefix property
     * @return a {@link TournamentSponsorTagPrefix}
     */
    @jakarta.annotation.Nullable
    public TournamentSponsorTagPrefix getPrefix() {
        return this.prefix;
    }
    /**
     * Gets the url property value. The url property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getUrl() {
        return this.url;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("customPrefix", this.getCustomPrefix());
        writer.writeStringValue("logoStorageId", this.getLogoStorageId());
        writer.writeStringValue("name", this.getName());
        writer.writeEnumValue("prefix", this.getPrefix());
        writer.writeStringValue("url", this.getUrl());
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
     * Sets the customPrefix property value. Used only when prefix is CUSTOM.
     * @param value Value to set for the customPrefix property.
     */
    public void setCustomPrefix(@jakarta.annotation.Nullable final String value) {
        this.customPrefix = value;
    }
    /**
     * Sets the logoStorageId property value. Convex storage id for the sponsor logo.
     * @param value Value to set for the logoStorageId property.
     */
    public void setLogoStorageId(@jakarta.annotation.Nullable final String value) {
        this.logoStorageId = value;
    }
    /**
     * Sets the name property value. The name property
     * @param value Value to set for the name property.
     */
    public void setName(@jakarta.annotation.Nullable final String value) {
        this.name = value;
    }
    /**
     * Sets the prefix property value. The prefix property
     * @param value Value to set for the prefix property.
     */
    public void setPrefix(@jakarta.annotation.Nullable final TournamentSponsorTagPrefix value) {
        this.prefix = value;
    }
    /**
     * Sets the url property value. The url property
     * @param value Value to set for the url property.
     */
    public void setUrl(@jakarta.annotation.Nullable final String value) {
        this.url = value;
    }
}
