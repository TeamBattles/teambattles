<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class TwitchStreamSignalsResult_rejected implements Parsable 
{
    /**
     * @var string|null $code Why: error_twitch_channel_not_found or error_stream_index_add_limit.
    */
    private ?string $code = null;
    
    /**
     * @var string|null $id Twitch user id that was not taken.
    */
    private ?string $id = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TwitchStreamSignalsResult_rejected
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TwitchStreamSignalsResult_rejected {
        return new TwitchStreamSignalsResult_rejected();
    }

    /**
     * Gets the code property value. Why: error_twitch_channel_not_found or error_stream_index_add_limit.
     * @return string|null
    */
    public function getCode(): ?string {
        return $this->code;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'code' => fn(ParseNode $n) => $o->setCode($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
        ];
    }

    /**
     * Gets the id property value. Twitch user id that was not taken.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('code', $this->getCode());
        $writer->writeStringValue('id', $this->getId());
    }

    /**
     * Sets the code property value. Why: error_twitch_channel_not_found or error_stream_index_add_limit.
     * @param string|null $value Value to set for the code property.
    */
    public function setCode(?string $value): void {
        $this->code = $value;
    }

    /**
     * Sets the id property value. Twitch user id that was not taken.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

}
