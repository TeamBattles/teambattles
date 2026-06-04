package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * A single version of a Twitch chat badge.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TwitchBadgeVersion implements Parsable {
    /**
     * Optional click action identifier.
     */
    private String clickAction;
    /**
     * Optional URL opened when the badge is clicked.
     */
    private String clickUrl;
    /**
     * Human-readable badge description.
     */
    private String description;
    /**
     * Badge version id (e.g. tier level or numeric id).
     */
    private String id;
    /**
     * Badge image URL at 1x resolution.
     */
    private String imageUrl1x;
    /**
     * Badge image URL at 2x resolution.
     */
    private String imageUrl2x;
    /**
     * Badge image URL at 4x resolution.
     */
    private String imageUrl4x;
    /**
     * Human-readable badge title.
     */
    private String title;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TwitchBadgeVersion}
     */
    @jakarta.annotation.Nonnull
    public static TwitchBadgeVersion createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TwitchBadgeVersion();
    }
    /**
     * Gets the click_action property value. Optional click action identifier.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getClickAction() {
        return this.clickAction;
    }
    /**
     * Gets the click_url property value. Optional URL opened when the badge is clicked.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getClickUrl() {
        return this.clickUrl;
    }
    /**
     * Gets the description property value. Human-readable badge description.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getDescription() {
        return this.description;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(8);
        deserializerMap.put("click_action", (n) -> { this.setClickAction(n.getStringValue()); });
        deserializerMap.put("click_url", (n) -> { this.setClickUrl(n.getStringValue()); });
        deserializerMap.put("description", (n) -> { this.setDescription(n.getStringValue()); });
        deserializerMap.put("id", (n) -> { this.setId(n.getStringValue()); });
        deserializerMap.put("image_url_1x", (n) -> { this.setImageUrl1x(n.getStringValue()); });
        deserializerMap.put("image_url_2x", (n) -> { this.setImageUrl2x(n.getStringValue()); });
        deserializerMap.put("image_url_4x", (n) -> { this.setImageUrl4x(n.getStringValue()); });
        deserializerMap.put("title", (n) -> { this.setTitle(n.getStringValue()); });
        return deserializerMap;
    }
    /**
     * Gets the id property value. Badge version id (e.g. tier level or numeric id).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getId() {
        return this.id;
    }
    /**
     * Gets the image_url_1x property value. Badge image URL at 1x resolution.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getImageUrl1x() {
        return this.imageUrl1x;
    }
    /**
     * Gets the image_url_2x property value. Badge image URL at 2x resolution.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getImageUrl2x() {
        return this.imageUrl2x;
    }
    /**
     * Gets the image_url_4x property value. Badge image URL at 4x resolution.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getImageUrl4x() {
        return this.imageUrl4x;
    }
    /**
     * Gets the title property value. Human-readable badge title.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTitle() {
        return this.title;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("click_action", this.getClickAction());
        writer.writeStringValue("click_url", this.getClickUrl());
        writer.writeStringValue("description", this.getDescription());
        writer.writeStringValue("id", this.getId());
        writer.writeStringValue("image_url_1x", this.getImageUrl1x());
        writer.writeStringValue("image_url_2x", this.getImageUrl2x());
        writer.writeStringValue("image_url_4x", this.getImageUrl4x());
        writer.writeStringValue("title", this.getTitle());
    }
    /**
     * Sets the click_action property value. Optional click action identifier.
     * @param value Value to set for the click_action property.
     */
    public void setClickAction(@jakarta.annotation.Nullable final String value) {
        this.clickAction = value;
    }
    /**
     * Sets the click_url property value. Optional URL opened when the badge is clicked.
     * @param value Value to set for the click_url property.
     */
    public void setClickUrl(@jakarta.annotation.Nullable final String value) {
        this.clickUrl = value;
    }
    /**
     * Sets the description property value. Human-readable badge description.
     * @param value Value to set for the description property.
     */
    public void setDescription(@jakarta.annotation.Nullable final String value) {
        this.description = value;
    }
    /**
     * Sets the id property value. Badge version id (e.g. tier level or numeric id).
     * @param value Value to set for the id property.
     */
    public void setId(@jakarta.annotation.Nullable final String value) {
        this.id = value;
    }
    /**
     * Sets the image_url_1x property value. Badge image URL at 1x resolution.
     * @param value Value to set for the image_url_1x property.
     */
    public void setImageUrl1x(@jakarta.annotation.Nullable final String value) {
        this.imageUrl1x = value;
    }
    /**
     * Sets the image_url_2x property value. Badge image URL at 2x resolution.
     * @param value Value to set for the image_url_2x property.
     */
    public void setImageUrl2x(@jakarta.annotation.Nullable final String value) {
        this.imageUrl2x = value;
    }
    /**
     * Sets the image_url_4x property value. Badge image URL at 4x resolution.
     * @param value Value to set for the image_url_4x property.
     */
    public void setImageUrl4x(@jakarta.annotation.Nullable final String value) {
        this.imageUrl4x = value;
    }
    /**
     * Sets the title property value. Human-readable badge title.
     * @param value Value to set for the title property.
     */
    public void setTitle(@jakarta.annotation.Nullable final String value) {
        this.title = value;
    }
}
