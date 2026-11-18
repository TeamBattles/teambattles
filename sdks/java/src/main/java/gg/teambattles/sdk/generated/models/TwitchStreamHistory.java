package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * A Twitch channel&apos;s recorded stream history from the Battles Replay Indexer.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TwitchStreamHistory implements Parsable {
    /**
     * Twitch user id of the channel.
     */
    private String broadcasterId;
    /**
     * Channel login.
     */
    private String broadcasterLogin;
    /**
     * When the index started recording this channel (ISO 8601).
     */
    private String indexedSince;
    /**
     * Recorded streams, newest first.
     */
    private java.util.List<TwitchRecordedStream> streams;
    /**
     * Response generation time (ISO 8601).
     */
    private String timestamp;
    /**
     * Coverage warnings, each a code with its values.
     */
    private java.util.List<StreamIndexWarning> warnings;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TwitchStreamHistory}
     */
    @jakarta.annotation.Nonnull
    public static TwitchStreamHistory createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TwitchStreamHistory();
    }
    /**
     * Gets the broadcaster_id property value. Twitch user id of the channel.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getBroadcasterId() {
        return this.broadcasterId;
    }
    /**
     * Gets the broadcaster_login property value. Channel login.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getBroadcasterLogin() {
        return this.broadcasterLogin;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(6);
        deserializerMap.put("broadcaster_id", (n) -> { this.setBroadcasterId(n.getStringValue()); });
        deserializerMap.put("broadcaster_login", (n) -> { this.setBroadcasterLogin(n.getStringValue()); });
        deserializerMap.put("indexed_since", (n) -> { this.setIndexedSince(n.getStringValue()); });
        deserializerMap.put("streams", (n) -> { this.setStreams(n.getCollectionOfObjectValues(TwitchRecordedStream::createFromDiscriminatorValue)); });
        deserializerMap.put("timestamp", (n) -> { this.setTimestamp(n.getStringValue()); });
        deserializerMap.put("warnings", (n) -> { this.setWarnings(n.getCollectionOfObjectValues(StreamIndexWarning::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the indexed_since property value. When the index started recording this channel (ISO 8601).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getIndexedSince() {
        return this.indexedSince;
    }
    /**
     * Gets the streams property value. Recorded streams, newest first.
     * @return a {@link java.util.List<TwitchRecordedStream>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<TwitchRecordedStream> getStreams() {
        return this.streams;
    }
    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getTimestamp() {
        return this.timestamp;
    }
    /**
     * Gets the warnings property value. Coverage warnings, each a code with its values.
     * @return a {@link java.util.List<StreamIndexWarning>}
     */
    @jakarta.annotation.Nullable
    public java.util.List<StreamIndexWarning> getWarnings() {
        return this.warnings;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeStringValue("broadcaster_id", this.getBroadcasterId());
        writer.writeStringValue("broadcaster_login", this.getBroadcasterLogin());
        writer.writeStringValue("indexed_since", this.getIndexedSince());
        writer.writeCollectionOfObjectValues("streams", this.getStreams());
        writer.writeStringValue("timestamp", this.getTimestamp());
        writer.writeCollectionOfObjectValues("warnings", this.getWarnings());
    }
    /**
     * Sets the broadcaster_id property value. Twitch user id of the channel.
     * @param value Value to set for the broadcaster_id property.
     */
    public void setBroadcasterId(@jakarta.annotation.Nullable final String value) {
        this.broadcasterId = value;
    }
    /**
     * Sets the broadcaster_login property value. Channel login.
     * @param value Value to set for the broadcaster_login property.
     */
    public void setBroadcasterLogin(@jakarta.annotation.Nullable final String value) {
        this.broadcasterLogin = value;
    }
    /**
     * Sets the indexed_since property value. When the index started recording this channel (ISO 8601).
     * @param value Value to set for the indexed_since property.
     */
    public void setIndexedSince(@jakarta.annotation.Nullable final String value) {
        this.indexedSince = value;
    }
    /**
     * Sets the streams property value. Recorded streams, newest first.
     * @param value Value to set for the streams property.
     */
    public void setStreams(@jakarta.annotation.Nullable final java.util.List<TwitchRecordedStream> value) {
        this.streams = value;
    }
    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param value Value to set for the timestamp property.
     */
    public void setTimestamp(@jakarta.annotation.Nullable final String value) {
        this.timestamp = value;
    }
    /**
     * Sets the warnings property value. Coverage warnings, each a code with its values.
     * @param value Value to set for the warnings property.
     */
    public void setWarnings(@jakarta.annotation.Nullable final java.util.List<StreamIndexWarning> value) {
        this.warnings = value;
    }
}
