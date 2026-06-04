package gg.teambattles.sdk.generated.user.matches;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import gg.teambattles.sdk.generated.models.UserMatch;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MatchesPostResponse implements Parsable {
    /**
     * The continueCursor property
     */
    private String continueCursor;
    /**
     * The isDone property
     */
    private Boolean isDone;
    /**
     * The page property
     */
    private java.util.List<UserMatch> page;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link MatchesPostResponse}
     */
    @jakarta.annotation.Nonnull
    public static MatchesPostResponse createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new MatchesPostResponse();
    }
    /**
     * Gets the continueCursor property value. The continueCursor property
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getContinueCursor() {
        return this.continueCursor;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(3);
        deserializerMap.put("continueCursor", (n) -> { this.setContinueCursor(n.getStringValue()); });
        deserializerMap.put("isDone", (n) -> { this.setIsDone(n.getBooleanValue()); });
        deserializerMap.put("page", (n) -> { this.setPage(n.getCollectionOfObjectValues(UserMatch::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the isDone property value. The isDone property
     * @return a {@link Boolean}
     */
    @jakarta.annotation.Nullable
    public Boolean getIsDone() {
        return this.isDone;
    }
    /**
     * Gets the page property value. The page property
     * @return a {@link java.util.List<UserMatch>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<UserMatch> getPage() {
        return this.page;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("continueCursor", this.getContinueCursor());
        writer.writeBooleanValue("isDone", this.getIsDone());
        writer.writeCollectionOfObjectValues("page", this.getPage());
    }
    /**
     * Sets the continueCursor property value. The continueCursor property
     * @param value Value to set for the continueCursor property.
     */
    public void setContinueCursor(@jakarta.annotation.Nullable final String value) {
        this.continueCursor = value;
    }
    /**
     * Sets the isDone property value. The isDone property
     * @param value Value to set for the isDone property.
     */
    public void setIsDone(@jakarta.annotation.Nullable final Boolean value) {
        this.isDone = value;
    }
    /**
     * Sets the page property value. The page property
     * @param value Value to set for the page property.
     */
    public void setPage(@jakarta.annotation.Nullable final java.util.List<UserMatch> value) {
        this.page = value;
    }
}
