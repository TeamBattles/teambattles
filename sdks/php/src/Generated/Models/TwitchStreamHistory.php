<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A Twitch channel's recorded stream history from the Battles Replay Indexer.
*/
class TwitchStreamHistory implements Parsable 
{
    /**
     * @var string|null $broadcaster_id Twitch user id of the channel.
    */
    private ?string $broadcaster_id = null;
    
    /**
     * @var string|null $broadcaster_login Channel login.
    */
    private ?string $broadcaster_login = null;
    
    /**
     * @var string|null $indexed_since When the index started recording this channel (ISO 8601).
    */
    private ?string $indexed_since = null;
    
    /**
     * @var array<TwitchRecordedStream>|null $streams Recorded streams, newest first.
    */
    private ?array $streams = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * @var array<StreamIndexWarning>|null $warnings Coverage warnings, each a code with its values.
    */
    private ?array $warnings = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TwitchStreamHistory
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TwitchStreamHistory {
        return new TwitchStreamHistory();
    }

    /**
     * Gets the broadcaster_id property value. Twitch user id of the channel.
     * @return string|null
    */
    public function getBroadcasterId(): ?string {
        return $this->broadcaster_id;
    }

    /**
     * Gets the broadcaster_login property value. Channel login.
     * @return string|null
    */
    public function getBroadcasterLogin(): ?string {
        return $this->broadcaster_login;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'broadcaster_id' => fn(ParseNode $n) => $o->setBroadcasterId($n->getStringValue()),
            'broadcaster_login' => fn(ParseNode $n) => $o->setBroadcasterLogin($n->getStringValue()),
            'indexed_since' => fn(ParseNode $n) => $o->setIndexedSince($n->getStringValue()),
            'streams' => fn(ParseNode $n) => $o->setStreams($n->getCollectionOfObjectValues([TwitchRecordedStream::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
            'warnings' => fn(ParseNode $n) => $o->setWarnings($n->getCollectionOfObjectValues([StreamIndexWarning::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the indexed_since property value. When the index started recording this channel (ISO 8601).
     * @return string|null
    */
    public function getIndexedSince(): ?string {
        return $this->indexed_since;
    }

    /**
     * Gets the streams property value. Recorded streams, newest first.
     * @return array<TwitchRecordedStream>|null
    */
    public function getStreams(): ?array {
        return $this->streams;
    }

    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
    }

    /**
     * Gets the warnings property value. Coverage warnings, each a code with its values.
     * @return array<StreamIndexWarning>|null
    */
    public function getWarnings(): ?array {
        return $this->warnings;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('broadcaster_id', $this->getBroadcasterId());
        $writer->writeStringValue('broadcaster_login', $this->getBroadcasterLogin());
        $writer->writeStringValue('indexed_since', $this->getIndexedSince());
        $writer->writeCollectionOfObjectValues('streams', $this->getStreams());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
        $writer->writeCollectionOfObjectValues('warnings', $this->getWarnings());
    }

    /**
     * Sets the broadcaster_id property value. Twitch user id of the channel.
     * @param string|null $value Value to set for the broadcaster_id property.
    */
    public function setBroadcasterId(?string $value): void {
        $this->broadcaster_id = $value;
    }

    /**
     * Sets the broadcaster_login property value. Channel login.
     * @param string|null $value Value to set for the broadcaster_login property.
    */
    public function setBroadcasterLogin(?string $value): void {
        $this->broadcaster_login = $value;
    }

    /**
     * Sets the indexed_since property value. When the index started recording this channel (ISO 8601).
     * @param string|null $value Value to set for the indexed_since property.
    */
    public function setIndexedSince(?string $value): void {
        $this->indexed_since = $value;
    }

    /**
     * Sets the streams property value. Recorded streams, newest first.
     * @param array<TwitchRecordedStream>|null $value Value to set for the streams property.
    */
    public function setStreams(?array $value): void {
        $this->streams = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

    /**
     * Sets the warnings property value. Coverage warnings, each a code with its values.
     * @param array<StreamIndexWarning>|null $value Value to set for the warnings property.
    */
    public function setWarnings(?array $value): void {
        $this->warnings = $value;
    }

}
