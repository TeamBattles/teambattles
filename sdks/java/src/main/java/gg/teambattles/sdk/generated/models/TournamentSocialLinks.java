package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.AdditionalDataHolder;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Organizer social links.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TournamentSocialLinks implements AdditionalDataHolder, Parsable {
    /**
     * Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     */
    private Map<String, Object> additionalData;
    /**
     * The discord property
     */
    private String discord;
    /**
     * The instagram property
     */
    private String instagram;
    /**
     * The tiktok property
     */
    private String tiktok;
    /**
     * The twitch property
     */
    private String twitch;
    /**
     * The website property
     */
    private String website;
    /**
     * The x property
     */
    private String x;
    /**
     * The youtube property
     */
    private String youtube;
    /**
     * Instantiates a new {@link TournamentSocialLinks} and sets the default values.
     */
    public TournamentSocialLinks() {
        this.setAdditionalData(new HashMap<>());
    }
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TournamentSocialLinks}
     */
    @jakarta.annotation.Nonnull
    public static TournamentSocialLinks createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TournamentSocialLinks();
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
     * Gets the discord property value. The discord property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getDiscord() {
        return this.discord;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(7);
        deserializerMap.put("discord", (n) -> { this.setDiscord(n.getStringValue()); });
        deserializerMap.put("instagram", (n) -> { this.setInstagram(n.getStringValue()); });
        deserializerMap.put("tiktok", (n) -> { this.setTiktok(n.getStringValue()); });
        deserializerMap.put("twitch", (n) -> { this.setTwitch(n.getStringValue()); });
        deserializerMap.put("website", (n) -> { this.setWebsite(n.getStringValue()); });
        deserializerMap.put("x", (n) -> { this.setX(n.getStringValue()); });
        deserializerMap.put("youtube", (n) -> { this.setYoutube(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the instagram property value. The instagram property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getInstagram() {
        return this.instagram;
    }
    /**
     * Gets the tiktok property value. The tiktok property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTiktok() {
        return this.tiktok;
    }
    /**
     * Gets the twitch property value. The twitch property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTwitch() {
        return this.twitch;
    }
    /**
     * Gets the website property value. The website property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getWebsite() {
        return this.website;
    }
    /**
     * Gets the x property value. The x property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getX() {
        return this.x;
    }
    /**
     * Gets the youtube property value. The youtube property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getYoutube() {
        return this.youtube;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("discord", this.getDiscord());
        writer.writeStringValue("instagram", this.getInstagram());
        writer.writeStringValue("tiktok", this.getTiktok());
        writer.writeStringValue("twitch", this.getTwitch());
        writer.writeStringValue("website", this.getWebsite());
        writer.writeStringValue("x", this.getX());
        writer.writeStringValue("youtube", this.getYoutube());
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
     * Sets the discord property value. The discord property
     * @param value Value to set for the discord property.
     */
    public void setDiscord(@jakarta.annotation.Nullable final String value) {
        this.discord = value;
    }
    /**
     * Sets the instagram property value. The instagram property
     * @param value Value to set for the instagram property.
     */
    public void setInstagram(@jakarta.annotation.Nullable final String value) {
        this.instagram = value;
    }
    /**
     * Sets the tiktok property value. The tiktok property
     * @param value Value to set for the tiktok property.
     */
    public void setTiktok(@jakarta.annotation.Nullable final String value) {
        this.tiktok = value;
    }
    /**
     * Sets the twitch property value. The twitch property
     * @param value Value to set for the twitch property.
     */
    public void setTwitch(@jakarta.annotation.Nullable final String value) {
        this.twitch = value;
    }
    /**
     * Sets the website property value. The website property
     * @param value Value to set for the website property.
     */
    public void setWebsite(@jakarta.annotation.Nullable final String value) {
        this.website = value;
    }
    /**
     * Sets the x property value. The x property
     * @param value Value to set for the x property.
     */
    public void setX(@jakarta.annotation.Nullable final String value) {
        this.x = value;
    }
    /**
     * Sets the youtube property value. The youtube property
     * @param value Value to set for the youtube property.
     */
    public void setYoutube(@jakarta.annotation.Nullable final String value) {
        this.youtube = value;
    }
}
