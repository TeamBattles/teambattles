package gg.teambattles.sdk.generated.game.matches;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MatchesPostResponsePagination implements Parsable {
    /**
     * The cursor property
     */
    private String cursor;
    /**
     * The hasMore property
     */
    private Boolean hasMore;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MatchesPostResponsePagination}
     */
    @jakarta.annotation.Nonnull
    public static MatchesPostResponsePagination createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MatchesPostResponsePagination();
    }
    /**
     * Gets the cursor property value. The cursor property
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
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(2);
        deserializerMap.put("cursor", (n) -> { this.setCursor(n.getStringValue()); });
        deserializerMap.put("hasMore", (n) -> { this.setHasMore(n.getBooleanValue()); });
        return deserializerMap;
    }
    /**
     * Gets the hasMore property value. The hasMore property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getHasMore() {
        return this.hasMore;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("cursor", this.getCursor());
        writer.writeBooleanValue("hasMore", this.getHasMore());
    }
    /**
     * Sets the cursor property value. The cursor property
     * @param value Value to set for the cursor property.
     */
    public void setCursor(@jakarta.annotation.Nullable final String value) {
        this.cursor = value;
    }
    /**
     * Sets the hasMore property value. The hasMore property
     * @param value Value to set for the hasMore property.
     */
    public void setHasMore(@jakarta.annotation.Nullable final Boolean value) {
        this.hasMore = value;
    }
}
