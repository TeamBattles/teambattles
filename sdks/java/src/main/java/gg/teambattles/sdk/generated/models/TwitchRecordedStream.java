package gg.teambattles.sdk.generated.models;

import com.microsoft.kiota.serialization.ComposedTypeWrapper;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParseNode;
import com.microsoft.kiota.serialization.ParseNodeHelper;
import com.microsoft.kiota.serialization.SerializationWriter;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * One recorded Twitch stream.
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TwitchRecordedStream implements Parsable {
    /**
     * Seconds from the start to the end, or to when it was last seen live.
     */
    private Integer durationSeconds;
    /**
     * Stream end (ISO 8601); null while it was still live at the last pass.
     */
    private TwitchRecordedStreamEndedAt endedAt;
    /**
     * Category name, when Twitch reported one.
     */
    private TwitchRecordedStreamGame game;
    /**
     * CDN host the recording was found on; null unless recording is available.
     */
    private TwitchRecordedStreamHost host;
    /**
     * Channel login when the stream ran; part of the recording path.
     */
    private String login;
    /**
     * Unix second used in the recording path; null unless recording is available.
     */
    private TwitchRecordedStreamPathTimestamp pathTimestamp;
    /**
     * available: found on Twitch&apos;s video CDN. unverified: not checked yet, or not found. removed: Twitch deleted it (only sent when the index keeps removed recordings).
     */
    private TwitchRecordedStreamRecording recording;
    /**
     * When the recording was found removed (ISO 8601), else null.
     */
    private TwitchRecordedStreamRemovedAt removedAt;
    /**
     * Stream start (ISO 8601).
     */
    private String startedAt;
    /**
     * Twitch stream (broadcast) id.
     */
    private String streamId;
    /**
     * Stream title, when Twitch reported one.
     */
    private TwitchRecordedStreamTitle title;
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param parseNode The parse node to use to read the discriminator value and create the object
     * @return a {@link TwitchRecordedStream}
     */
    @jakarta.annotation.Nonnull
    public static TwitchRecordedStream createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
        Objects.requireNonNull(parseNode);
        return new TwitchRecordedStream();
    }
    /**
     * Gets the duration_seconds property value. Seconds from the start to the end, or to when it was last seen live.
     * @return a {@link Integer}
     */
    @jakarta.annotation.Nullable
    public Integer getDurationSeconds() {
        return this.durationSeconds;
    }
    /**
     * Gets the ended_at property value. Stream end (ISO 8601); null while it was still live at the last pass.
     * @return a {@link TwitchRecordedStreamEndedAt}
     */
    @jakarta.annotation.Nullable
    public TwitchRecordedStreamEndedAt getEndedAt() {
        return this.endedAt;
    }
    /**
     * The deserialization information for the current model
     * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
     */
    @jakarta.annotation.Nonnull
    public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
        final HashMap<String, java.util.function.Consumer<ParseNode>> deserializerMap = new HashMap<String, java.util.function.Consumer<ParseNode>>(11);
        deserializerMap.put("duration_seconds", (n) -> { this.setDurationSeconds(n.getIntegerValue()); });
        deserializerMap.put("ended_at", (n) -> { this.setEndedAt(n.getObjectValue(TwitchRecordedStreamEndedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("game", (n) -> { this.setGame(n.getObjectValue(TwitchRecordedStreamGame::createFromDiscriminatorValue)); });
        deserializerMap.put("host", (n) -> { this.setHost(n.getObjectValue(TwitchRecordedStreamHost::createFromDiscriminatorValue)); });
        deserializerMap.put("login", (n) -> { this.setLogin(n.getStringValue()); });
        deserializerMap.put("path_timestamp", (n) -> { this.setPathTimestamp(n.getObjectValue(TwitchRecordedStreamPathTimestamp::createFromDiscriminatorValue)); });
        deserializerMap.put("recording", (n) -> { this.setRecording(n.getEnumValue(TwitchRecordedStreamRecording::forValue)); });
        deserializerMap.put("removed_at", (n) -> { this.setRemovedAt(n.getObjectValue(TwitchRecordedStreamRemovedAt::createFromDiscriminatorValue)); });
        deserializerMap.put("started_at", (n) -> { this.setStartedAt(n.getStringValue()); });
        deserializerMap.put("stream_id", (n) -> { this.setStreamId(n.getStringValue()); });
        deserializerMap.put("title", (n) -> { this.setTitle(n.getObjectValue(TwitchRecordedStreamTitle::createFromDiscriminatorValue)); });
        return deserializerMap;
    }
    /**
     * Gets the game property value. Category name, when Twitch reported one.
     * @return a {@link TwitchRecordedStreamGame}
     */
    @jakarta.annotation.Nullable
    public TwitchRecordedStreamGame getGame() {
        return this.game;
    }
    /**
     * Gets the host property value. CDN host the recording was found on; null unless recording is available.
     * @return a {@link TwitchRecordedStreamHost}
     */
    @jakarta.annotation.Nullable
    public TwitchRecordedStreamHost getHost() {
        return this.host;
    }
    /**
     * Gets the login property value. Channel login when the stream ran; part of the recording path.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getLogin() {
        return this.login;
    }
    /**
     * Gets the path_timestamp property value. Unix second used in the recording path; null unless recording is available.
     * @return a {@link TwitchRecordedStreamPathTimestamp}
     */
    @jakarta.annotation.Nullable
    public TwitchRecordedStreamPathTimestamp getPathTimestamp() {
        return this.pathTimestamp;
    }
    /**
     * Gets the recording property value. available: found on Twitch&apos;s video CDN. unverified: not checked yet, or not found. removed: Twitch deleted it (only sent when the index keeps removed recordings).
     * @return a {@link TwitchRecordedStreamRecording}
     */
    @jakarta.annotation.Nullable
    public TwitchRecordedStreamRecording getRecording() {
        return this.recording;
    }
    /**
     * Gets the removed_at property value. When the recording was found removed (ISO 8601), else null.
     * @return a {@link TwitchRecordedStreamRemovedAt}
     */
    @jakarta.annotation.Nullable
    public TwitchRecordedStreamRemovedAt getRemovedAt() {
        return this.removedAt;
    }
    /**
     * Gets the started_at property value. Stream start (ISO 8601).
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getStartedAt() {
        return this.startedAt;
    }
    /**
     * Gets the stream_id property value. Twitch stream (broadcast) id.
     * @return a {@link String}
     */
    @jakarta.annotation.Nullable
    public String getStreamId() {
        return this.streamId;
    }
    /**
     * Gets the title property value. Stream title, when Twitch reported one.
     * @return a {@link TwitchRecordedStreamTitle}
     */
    @jakarta.annotation.Nullable
    public TwitchRecordedStreamTitle getTitle() {
        return this.title;
    }
    /**
     * Serializes information the current object
     * @param writer Serialization writer to use to serialize this model
     */
    public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
        Objects.requireNonNull(writer);
        writer.writeIntegerValue("duration_seconds", this.getDurationSeconds());
        writer.writeObjectValue("ended_at", this.getEndedAt());
        writer.writeObjectValue("game", this.getGame());
        writer.writeObjectValue("host", this.getHost());
        writer.writeStringValue("login", this.getLogin());
        writer.writeObjectValue("path_timestamp", this.getPathTimestamp());
        writer.writeEnumValue("recording", this.getRecording());
        writer.writeObjectValue("removed_at", this.getRemovedAt());
        writer.writeStringValue("started_at", this.getStartedAt());
        writer.writeStringValue("stream_id", this.getStreamId());
        writer.writeObjectValue("title", this.getTitle());
    }
    /**
     * Sets the duration_seconds property value. Seconds from the start to the end, or to when it was last seen live.
     * @param value Value to set for the duration_seconds property.
     */
    public void setDurationSeconds(@jakarta.annotation.Nullable final Integer value) {
        this.durationSeconds = value;
    }
    /**
     * Sets the ended_at property value. Stream end (ISO 8601); null while it was still live at the last pass.
     * @param value Value to set for the ended_at property.
     */
    public void setEndedAt(@jakarta.annotation.Nullable final TwitchRecordedStreamEndedAt value) {
        this.endedAt = value;
    }
    /**
     * Sets the game property value. Category name, when Twitch reported one.
     * @param value Value to set for the game property.
     */
    public void setGame(@jakarta.annotation.Nullable final TwitchRecordedStreamGame value) {
        this.game = value;
    }
    /**
     * Sets the host property value. CDN host the recording was found on; null unless recording is available.
     * @param value Value to set for the host property.
     */
    public void setHost(@jakarta.annotation.Nullable final TwitchRecordedStreamHost value) {
        this.host = value;
    }
    /**
     * Sets the login property value. Channel login when the stream ran; part of the recording path.
     * @param value Value to set for the login property.
     */
    public void setLogin(@jakarta.annotation.Nullable final String value) {
        this.login = value;
    }
    /**
     * Sets the path_timestamp property value. Unix second used in the recording path; null unless recording is available.
     * @param value Value to set for the path_timestamp property.
     */
    public void setPathTimestamp(@jakarta.annotation.Nullable final TwitchRecordedStreamPathTimestamp value) {
        this.pathTimestamp = value;
    }
    /**
     * Sets the recording property value. available: found on Twitch&apos;s video CDN. unverified: not checked yet, or not found. removed: Twitch deleted it (only sent when the index keeps removed recordings).
     * @param value Value to set for the recording property.
     */
    public void setRecording(@jakarta.annotation.Nullable final TwitchRecordedStreamRecording value) {
        this.recording = value;
    }
    /**
     * Sets the removed_at property value. When the recording was found removed (ISO 8601), else null.
     * @param value Value to set for the removed_at property.
     */
    public void setRemovedAt(@jakarta.annotation.Nullable final TwitchRecordedStreamRemovedAt value) {
        this.removedAt = value;
    }
    /**
     * Sets the started_at property value. Stream start (ISO 8601).
     * @param value Value to set for the started_at property.
     */
    public void setStartedAt(@jakarta.annotation.Nullable final String value) {
        this.startedAt = value;
    }
    /**
     * Sets the stream_id property value. Twitch stream (broadcast) id.
     * @param value Value to set for the stream_id property.
     */
    public void setStreamId(@jakarta.annotation.Nullable final String value) {
        this.streamId = value;
    }
    /**
     * Sets the title property value. Stream title, when Twitch reported one.
     * @param value Value to set for the title property.
     */
    public void setTitle(@jakarta.annotation.Nullable final TwitchRecordedStreamTitle value) {
        this.title = value;
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TwitchRecordedStreamEndedAtMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TwitchRecordedStreamEndedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TwitchRecordedStreamEndedAtMember1}
         */
        private TwitchRecordedStreamEndedAtMember1 twitchRecordedStreamEndedAtMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TwitchRecordedStreamEndedAt}
         */
        @jakarta.annotation.Nonnull
        public static TwitchRecordedStreamEndedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TwitchRecordedStreamEndedAt result = new TwitchRecordedStreamEndedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTwitchRecordedStreamEndedAtMember1(new TwitchRecordedStreamEndedAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTwitchRecordedStreamEndedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTwitchRecordedStreamEndedAtMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the string property value. Composed type representation for type {@link String}
         * @return a {@link String}
         */
        @jakarta.annotation.Nullable
        public String getString() {
            return this.string;
        }
        /**
         * Gets the TwitchRecordedStream_ended_atMember1 property value. Composed type representation for type {@link TwitchRecordedStreamEndedAtMember1}
         * @return a {@link TwitchRecordedStreamEndedAtMember1}
         */
        @jakarta.annotation.Nullable
        public TwitchRecordedStreamEndedAtMember1 getTwitchRecordedStreamEndedAtMember1() {
            return this.twitchRecordedStreamEndedAtMember1;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getString() != null) {
                writer.writeStringValue(null, this.getString());
            } else {
                writer.writeObjectValue(null, this.getTwitchRecordedStreamEndedAtMember1());
            }
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
        /**
         * Sets the TwitchRecordedStream_ended_atMember1 property value. Composed type representation for type {@link TwitchRecordedStreamEndedAtMember1}
         * @param value Value to set for the TwitchRecordedStream_ended_atMember1 property.
         */
        public void setTwitchRecordedStreamEndedAtMember1(@jakarta.annotation.Nullable final TwitchRecordedStreamEndedAtMember1 value) {
            this.twitchRecordedStreamEndedAtMember1 = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TwitchRecordedStreamGameMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TwitchRecordedStreamGame implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TwitchRecordedStreamGameMember1}
         */
        private TwitchRecordedStreamGameMember1 twitchRecordedStreamGameMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TwitchRecordedStreamGame}
         */
        @jakarta.annotation.Nonnull
        public static TwitchRecordedStreamGame createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TwitchRecordedStreamGame result = new TwitchRecordedStreamGame();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTwitchRecordedStreamGameMember1(new TwitchRecordedStreamGameMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTwitchRecordedStreamGameMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTwitchRecordedStreamGameMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the string property value. Composed type representation for type {@link String}
         * @return a {@link String}
         */
        @jakarta.annotation.Nullable
        public String getString() {
            return this.string;
        }
        /**
         * Gets the TwitchRecordedStream_gameMember1 property value. Composed type representation for type {@link TwitchRecordedStreamGameMember1}
         * @return a {@link TwitchRecordedStreamGameMember1}
         */
        @jakarta.annotation.Nullable
        public TwitchRecordedStreamGameMember1 getTwitchRecordedStreamGameMember1() {
            return this.twitchRecordedStreamGameMember1;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getString() != null) {
                writer.writeStringValue(null, this.getString());
            } else {
                writer.writeObjectValue(null, this.getTwitchRecordedStreamGameMember1());
            }
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
        /**
         * Sets the TwitchRecordedStream_gameMember1 property value. Composed type representation for type {@link TwitchRecordedStreamGameMember1}
         * @param value Value to set for the TwitchRecordedStream_gameMember1 property.
         */
        public void setTwitchRecordedStreamGameMember1(@jakarta.annotation.Nullable final TwitchRecordedStreamGameMember1 value) {
            this.twitchRecordedStreamGameMember1 = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TwitchRecordedStreamHostMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TwitchRecordedStreamHost implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TwitchRecordedStreamHostMember1}
         */
        private TwitchRecordedStreamHostMember1 twitchRecordedStreamHostMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TwitchRecordedStreamHost}
         */
        @jakarta.annotation.Nonnull
        public static TwitchRecordedStreamHost createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TwitchRecordedStreamHost result = new TwitchRecordedStreamHost();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTwitchRecordedStreamHostMember1(new TwitchRecordedStreamHostMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTwitchRecordedStreamHostMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTwitchRecordedStreamHostMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the string property value. Composed type representation for type {@link String}
         * @return a {@link String}
         */
        @jakarta.annotation.Nullable
        public String getString() {
            return this.string;
        }
        /**
         * Gets the TwitchRecordedStream_hostMember1 property value. Composed type representation for type {@link TwitchRecordedStreamHostMember1}
         * @return a {@link TwitchRecordedStreamHostMember1}
         */
        @jakarta.annotation.Nullable
        public TwitchRecordedStreamHostMember1 getTwitchRecordedStreamHostMember1() {
            return this.twitchRecordedStreamHostMember1;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getString() != null) {
                writer.writeStringValue(null, this.getString());
            } else {
                writer.writeObjectValue(null, this.getTwitchRecordedStreamHostMember1());
            }
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
        /**
         * Sets the TwitchRecordedStream_hostMember1 property value. Composed type representation for type {@link TwitchRecordedStreamHostMember1}
         * @param value Value to set for the TwitchRecordedStream_hostMember1 property.
         */
        public void setTwitchRecordedStreamHostMember1(@jakarta.annotation.Nullable final TwitchRecordedStreamHostMember1 value) {
            this.twitchRecordedStreamHostMember1 = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link Integer}, {@link TwitchRecordedStreamPathTimestampMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TwitchRecordedStreamPathTimestamp implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link Integer}
         */
        private Integer integer;
        /**
         * Composed type representation for type {@link TwitchRecordedStreamPathTimestampMember1}
         */
        private TwitchRecordedStreamPathTimestampMember1 twitchRecordedStreamPathTimestampMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TwitchRecordedStreamPathTimestamp}
         */
        @jakarta.annotation.Nonnull
        public static TwitchRecordedStreamPathTimestamp createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TwitchRecordedStreamPathTimestamp result = new TwitchRecordedStreamPathTimestamp();
            if (parseNode.getIntegerValue() != null) {
                result.setInteger(parseNode.getIntegerValue());
            } else {
                result.setTwitchRecordedStreamPathTimestampMember1(new TwitchRecordedStreamPathTimestampMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTwitchRecordedStreamPathTimestampMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTwitchRecordedStreamPathTimestampMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the integer property value. Composed type representation for type {@link Integer}
         * @return a {@link Integer}
         */
        @jakarta.annotation.Nullable
        public Integer getInteger() {
            return this.integer;
        }
        /**
         * Gets the TwitchRecordedStream_path_timestampMember1 property value. Composed type representation for type {@link TwitchRecordedStreamPathTimestampMember1}
         * @return a {@link TwitchRecordedStreamPathTimestampMember1}
         */
        @jakarta.annotation.Nullable
        public TwitchRecordedStreamPathTimestampMember1 getTwitchRecordedStreamPathTimestampMember1() {
            return this.twitchRecordedStreamPathTimestampMember1;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getInteger() != null) {
                writer.writeIntegerValue(null, this.getInteger());
            } else {
                writer.writeObjectValue(null, this.getTwitchRecordedStreamPathTimestampMember1());
            }
        }
        /**
         * Sets the integer property value. Composed type representation for type {@link Integer}
         * @param value Value to set for the integer property.
         */
        public void setInteger(@jakarta.annotation.Nullable final Integer value) {
            this.integer = value;
        }
        /**
         * Sets the TwitchRecordedStream_path_timestampMember1 property value. Composed type representation for type {@link TwitchRecordedStreamPathTimestampMember1}
         * @param value Value to set for the TwitchRecordedStream_path_timestampMember1 property.
         */
        public void setTwitchRecordedStreamPathTimestampMember1(@jakarta.annotation.Nullable final TwitchRecordedStreamPathTimestampMember1 value) {
            this.twitchRecordedStreamPathTimestampMember1 = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TwitchRecordedStreamRemovedAtMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TwitchRecordedStreamRemovedAt implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TwitchRecordedStreamRemovedAtMember1}
         */
        private TwitchRecordedStreamRemovedAtMember1 twitchRecordedStreamRemovedAtMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TwitchRecordedStreamRemovedAt}
         */
        @jakarta.annotation.Nonnull
        public static TwitchRecordedStreamRemovedAt createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TwitchRecordedStreamRemovedAt result = new TwitchRecordedStreamRemovedAt();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTwitchRecordedStreamRemovedAtMember1(new TwitchRecordedStreamRemovedAtMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTwitchRecordedStreamRemovedAtMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTwitchRecordedStreamRemovedAtMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the string property value. Composed type representation for type {@link String}
         * @return a {@link String}
         */
        @jakarta.annotation.Nullable
        public String getString() {
            return this.string;
        }
        /**
         * Gets the TwitchRecordedStream_removed_atMember1 property value. Composed type representation for type {@link TwitchRecordedStreamRemovedAtMember1}
         * @return a {@link TwitchRecordedStreamRemovedAtMember1}
         */
        @jakarta.annotation.Nullable
        public TwitchRecordedStreamRemovedAtMember1 getTwitchRecordedStreamRemovedAtMember1() {
            return this.twitchRecordedStreamRemovedAtMember1;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getString() != null) {
                writer.writeStringValue(null, this.getString());
            } else {
                writer.writeObjectValue(null, this.getTwitchRecordedStreamRemovedAtMember1());
            }
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
        /**
         * Sets the TwitchRecordedStream_removed_atMember1 property value. Composed type representation for type {@link TwitchRecordedStreamRemovedAtMember1}
         * @param value Value to set for the TwitchRecordedStream_removed_atMember1 property.
         */
        public void setTwitchRecordedStreamRemovedAtMember1(@jakarta.annotation.Nullable final TwitchRecordedStreamRemovedAtMember1 value) {
            this.twitchRecordedStreamRemovedAtMember1 = value;
        }
    }
    /**
     * Composed type wrapper for classes {@link String}, {@link TwitchRecordedStreamTitleMember1}
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public static class TwitchRecordedStreamTitle implements ComposedTypeWrapper, Parsable {
        /**
         * Composed type representation for type {@link String}
         */
        private String string;
        /**
         * Composed type representation for type {@link TwitchRecordedStreamTitleMember1}
         */
        private TwitchRecordedStreamTitleMember1 twitchRecordedStreamTitleMember1;
        /**
         * Creates a new instance of the appropriate class based on discriminator value
         * @param parseNode The parse node to use to read the discriminator value and create the object
         * @return a {@link TwitchRecordedStreamTitle}
         */
        @jakarta.annotation.Nonnull
        public static TwitchRecordedStreamTitle createFromDiscriminatorValue(@jakarta.annotation.Nonnull final ParseNode parseNode) {
            Objects.requireNonNull(parseNode);
            final TwitchRecordedStreamTitle result = new TwitchRecordedStreamTitle();
            if (parseNode.getStringValue() != null) {
                result.setString(parseNode.getStringValue());
            } else {
                result.setTwitchRecordedStreamTitleMember1(new TwitchRecordedStreamTitleMember1());
            }
            return result;
        }
        /**
         * The deserialization information for the current model
         * @return a {@link Map<String, java.util.function.Consumer<ParseNode>>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, java.util.function.Consumer<ParseNode>> getFieldDeserializers() {
            if (this.getTwitchRecordedStreamTitleMember1() != null) {
                return ParseNodeHelper.mergeDeserializersForIntersectionWrapper(this.getTwitchRecordedStreamTitleMember1());
            }
            return new HashMap<String, java.util.function.Consumer<ParseNode>>();
        }
        /**
         * Gets the string property value. Composed type representation for type {@link String}
         * @return a {@link String}
         */
        @jakarta.annotation.Nullable
        public String getString() {
            return this.string;
        }
        /**
         * Gets the TwitchRecordedStream_titleMember1 property value. Composed type representation for type {@link TwitchRecordedStreamTitleMember1}
         * @return a {@link TwitchRecordedStreamTitleMember1}
         */
        @jakarta.annotation.Nullable
        public TwitchRecordedStreamTitleMember1 getTwitchRecordedStreamTitleMember1() {
            return this.twitchRecordedStreamTitleMember1;
        }
        /**
         * Serializes information the current object
         * @param writer Serialization writer to use to serialize this model
         */
        public void serialize(@jakarta.annotation.Nonnull final SerializationWriter writer) {
            Objects.requireNonNull(writer);
            if (this.getString() != null) {
                writer.writeStringValue(null, this.getString());
            } else {
                writer.writeObjectValue(null, this.getTwitchRecordedStreamTitleMember1());
            }
        }
        /**
         * Sets the string property value. Composed type representation for type {@link String}
         * @param value Value to set for the string property.
         */
        public void setString(@jakarta.annotation.Nullable final String value) {
            this.string = value;
        }
        /**
         * Sets the TwitchRecordedStream_titleMember1 property value. Composed type representation for type {@link TwitchRecordedStreamTitleMember1}
         * @param value Value to set for the TwitchRecordedStream_titleMember1 property.
         */
        public void setTwitchRecordedStreamTitleMember1(@jakarta.annotation.Nullable final TwitchRecordedStreamTitleMember1 value) {
            this.twitchRecordedStreamTitleMember1 = value;
        }
    }
}
