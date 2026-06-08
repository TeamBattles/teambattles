<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Replay re-queue acknowledgement.
*/
class WebhookReplayResult implements Parsable 
{
    /**
     * @var bool|null $ok The ok property
    */
    private ?bool $ok = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return WebhookReplayResult
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): WebhookReplayResult {
        return new WebhookReplayResult();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'ok' => fn(ParseNode $n) => $o->setOk($n->getBooleanValue()),
        ];
    }

    /**
     * Gets the ok property value. The ok property
     * @return bool|null
    */
    public function getOk(): ?bool {
        return $this->ok;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeBooleanValue('ok', $this->getOk());
    }

    /**
     * Sets the ok property value. The ok property
     * @param bool|null $value Value to set for the ok property.
    */
    public function setOk(?bool $value): void {
        $this->ok = $value;
    }

}
