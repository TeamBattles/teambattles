<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * One recorded Twitch stream.
*/
class TwitchRecordedStream implements Parsable 
{
    /**
     * @var int|null $duration_seconds Seconds from the start to the end, or to when it was last seen live.
    */
    private ?int $duration_seconds = null;
    
    /**
     * @var string|null $ended_at Stream end (ISO 8601); null while it was still live at the last pass.
    */
    private ?string $ended_at = null;
    
    /**
     * @var string|null $game Category name, when Twitch reported one.
    */
    private ?string $game = null;
    
    /**
     * @var string|null $host CDN host the recording was found on; null unless recording is available.
    */
    private ?string $host = null;
    
    /**
     * @var string|null $login Channel login when the stream ran; part of the recording path.
    */
    private ?string $login = null;
    
    /**
     * @var TwitchRecordedStream_path_timestamp|null $path_timestamp Unix second used in the recording path; null unless recording is available.
    */
    private ?TwitchRecordedStream_path_timestamp $path_timestamp = null;
    
    /**
     * @var TwitchRecordedStream_recording|null $recording available: found on Twitch's video CDN. unverified: not checked yet, or not found. removed: Twitch deleted it (only sent when the index keeps removed recordings).
    */
    private ?TwitchRecordedStream_recording $recording = null;
    
    /**
     * @var string|null $removed_at When the recording was found removed (ISO 8601), else null.
    */
    private ?string $removed_at = null;
    
    /**
     * @var string|null $started_at Stream start (ISO 8601).
    */
    private ?string $started_at = null;
    
    /**
     * @var string|null $stream_id Twitch stream (broadcast) id.
    */
    private ?string $stream_id = null;
    
    /**
     * @var string|null $title Stream title, when Twitch reported one.
    */
    private ?string $title = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TwitchRecordedStream
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TwitchRecordedStream {
        return new TwitchRecordedStream();
    }

    /**
     * Gets the duration_seconds property value. Seconds from the start to the end, or to when it was last seen live.
     * @return int|null
    */
    public function getDurationSeconds(): ?int {
        return $this->duration_seconds;
    }

    /**
     * Gets the ended_at property value. Stream end (ISO 8601); null while it was still live at the last pass.
     * @return string|null
    */
    public function getEndedAt(): ?string {
        return $this->ended_at;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'duration_seconds' => fn(ParseNode $n) => $o->setDurationSeconds($n->getIntegerValue()),
            'ended_at' => fn(ParseNode $n) => $o->setEndedAt($n->getStringValue()),
            'game' => fn(ParseNode $n) => $o->setGame($n->getStringValue()),
            'host' => fn(ParseNode $n) => $o->setHost($n->getStringValue()),
            'login' => fn(ParseNode $n) => $o->setLogin($n->getStringValue()),
            'path_timestamp' => fn(ParseNode $n) => $o->setPathTimestamp($n->getObjectValue([TwitchRecordedStream_path_timestamp::class, 'createFromDiscriminatorValue'])),
            'recording' => fn(ParseNode $n) => $o->setRecording($n->getEnumValue(TwitchRecordedStream_recording::class)),
            'removed_at' => fn(ParseNode $n) => $o->setRemovedAt($n->getStringValue()),
            'started_at' => fn(ParseNode $n) => $o->setStartedAt($n->getStringValue()),
            'stream_id' => fn(ParseNode $n) => $o->setStreamId($n->getStringValue()),
            'title' => fn(ParseNode $n) => $o->setTitle($n->getStringValue()),
        ];
    }

    /**
     * Gets the game property value. Category name, when Twitch reported one.
     * @return string|null
    */
    public function getGame(): ?string {
        return $this->game;
    }

    /**
     * Gets the host property value. CDN host the recording was found on; null unless recording is available.
     * @return string|null
    */
    public function getHost(): ?string {
        return $this->host;
    }

    /**
     * Gets the login property value. Channel login when the stream ran; part of the recording path.
     * @return string|null
    */
    public function getLogin(): ?string {
        return $this->login;
    }

    /**
     * Gets the path_timestamp property value. Unix second used in the recording path; null unless recording is available.
     * @return TwitchRecordedStream_path_timestamp|null
    */
    public function getPathTimestamp(): ?TwitchRecordedStream_path_timestamp {
        return $this->path_timestamp;
    }

    /**
     * Gets the recording property value. available: found on Twitch's video CDN. unverified: not checked yet, or not found. removed: Twitch deleted it (only sent when the index keeps removed recordings).
     * @return TwitchRecordedStream_recording|null
    */
    public function getRecording(): ?TwitchRecordedStream_recording {
        return $this->recording;
    }

    /**
     * Gets the removed_at property value. When the recording was found removed (ISO 8601), else null.
     * @return string|null
    */
    public function getRemovedAt(): ?string {
        return $this->removed_at;
    }

    /**
     * Gets the started_at property value. Stream start (ISO 8601).
     * @return string|null
    */
    public function getStartedAt(): ?string {
        return $this->started_at;
    }

    /**
     * Gets the stream_id property value. Twitch stream (broadcast) id.
     * @return string|null
    */
    public function getStreamId(): ?string {
        return $this->stream_id;
    }

    /**
     * Gets the title property value. Stream title, when Twitch reported one.
     * @return string|null
    */
    public function getTitle(): ?string {
        return $this->title;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('duration_seconds', $this->getDurationSeconds());
        $writer->writeStringValue('ended_at', $this->getEndedAt());
        $writer->writeStringValue('game', $this->getGame());
        $writer->writeStringValue('host', $this->getHost());
        $writer->writeStringValue('login', $this->getLogin());
        $writer->writeObjectValue('path_timestamp', $this->getPathTimestamp());
        $writer->writeEnumValue('recording', $this->getRecording());
        $writer->writeStringValue('removed_at', $this->getRemovedAt());
        $writer->writeStringValue('started_at', $this->getStartedAt());
        $writer->writeStringValue('stream_id', $this->getStreamId());
        $writer->writeStringValue('title', $this->getTitle());
    }

    /**
     * Sets the duration_seconds property value. Seconds from the start to the end, or to when it was last seen live.
     * @param int|null $value Value to set for the duration_seconds property.
    */
    public function setDurationSeconds(?int $value): void {
        $this->duration_seconds = $value;
    }

    /**
     * Sets the ended_at property value. Stream end (ISO 8601); null while it was still live at the last pass.
     * @param string|null $value Value to set for the ended_at property.
    */
    public function setEndedAt(?string $value): void {
        $this->ended_at = $value;
    }

    /**
     * Sets the game property value. Category name, when Twitch reported one.
     * @param string|null $value Value to set for the game property.
    */
    public function setGame(?string $value): void {
        $this->game = $value;
    }

    /**
     * Sets the host property value. CDN host the recording was found on; null unless recording is available.
     * @param string|null $value Value to set for the host property.
    */
    public function setHost(?string $value): void {
        $this->host = $value;
    }

    /**
     * Sets the login property value. Channel login when the stream ran; part of the recording path.
     * @param string|null $value Value to set for the login property.
    */
    public function setLogin(?string $value): void {
        $this->login = $value;
    }

    /**
     * Sets the path_timestamp property value. Unix second used in the recording path; null unless recording is available.
     * @param TwitchRecordedStream_path_timestamp|null $value Value to set for the path_timestamp property.
    */
    public function setPathTimestamp(?TwitchRecordedStream_path_timestamp $value): void {
        $this->path_timestamp = $value;
    }

    /**
     * Sets the recording property value. available: found on Twitch's video CDN. unverified: not checked yet, or not found. removed: Twitch deleted it (only sent when the index keeps removed recordings).
     * @param TwitchRecordedStream_recording|null $value Value to set for the recording property.
    */
    public function setRecording(?TwitchRecordedStream_recording $value): void {
        $this->recording = $value;
    }

    /**
     * Sets the removed_at property value. When the recording was found removed (ISO 8601), else null.
     * @param string|null $value Value to set for the removed_at property.
    */
    public function setRemovedAt(?string $value): void {
        $this->removed_at = $value;
    }

    /**
     * Sets the started_at property value. Stream start (ISO 8601).
     * @param string|null $value Value to set for the started_at property.
    */
    public function setStartedAt(?string $value): void {
        $this->started_at = $value;
    }

    /**
     * Sets the stream_id property value. Twitch stream (broadcast) id.
     * @param string|null $value Value to set for the stream_id property.
    */
    public function setStreamId(?string $value): void {
        $this->stream_id = $value;
    }

    /**
     * Sets the title property value. Stream title, when Twitch reported one.
     * @param string|null $value Value to set for the title property.
    */
    public function setTitle(?string $value): void {
        $this->title = $value;
    }

}
