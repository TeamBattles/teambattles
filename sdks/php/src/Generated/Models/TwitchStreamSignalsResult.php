<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * What the stream index did with the channels it was sent.
*/
class TwitchStreamSignalsResult implements Parsable 
{
    /**
     * @var int|null $accepted Channels now being recorded: ones already indexed (renewed) plus ones this call added.
    */
    private ?int $accepted = null;
    
    /**
     * @var int|null $added Channels this call added to the index.
    */
    private ?int $added = null;
    
    /**
     * @var array<TwitchStreamSignalsResult_rejected>|null $rejected Channels that were not taken, each with its code.
    */
    private ?array $rejected = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TwitchStreamSignalsResult
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TwitchStreamSignalsResult {
        return new TwitchStreamSignalsResult();
    }

    /**
     * Gets the accepted property value. Channels now being recorded: ones already indexed (renewed) plus ones this call added.
     * @return int|null
    */
    public function getAccepted(): ?int {
        return $this->accepted;
    }

    /**
     * Gets the added property value. Channels this call added to the index.
     * @return int|null
    */
    public function getAdded(): ?int {
        return $this->added;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'accepted' => fn(ParseNode $n) => $o->setAccepted($n->getIntegerValue()),
            'added' => fn(ParseNode $n) => $o->setAdded($n->getIntegerValue()),
            'rejected' => fn(ParseNode $n) => $o->setRejected($n->getCollectionOfObjectValues([TwitchStreamSignalsResult_rejected::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the rejected property value. Channels that were not taken, each with its code.
     * @return array<TwitchStreamSignalsResult_rejected>|null
    */
    public function getRejected(): ?array {
        return $this->rejected;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('accepted', $this->getAccepted());
        $writer->writeIntegerValue('added', $this->getAdded());
        $writer->writeCollectionOfObjectValues('rejected', $this->getRejected());
    }

    /**
     * Sets the accepted property value. Channels now being recorded: ones already indexed (renewed) plus ones this call added.
     * @param int|null $value Value to set for the accepted property.
    */
    public function setAccepted(?int $value): void {
        $this->accepted = $value;
    }

    /**
     * Sets the added property value. Channels this call added to the index.
     * @param int|null $value Value to set for the added property.
    */
    public function setAdded(?int $value): void {
        $this->added = $value;
    }

    /**
     * Sets the rejected property value. Channels that were not taken, each with its code.
     * @param array<TwitchStreamSignalsResult_rejected>|null $value Value to set for the rejected property.
    */
    public function setRejected(?array $value): void {
        $this->rejected = $value;
    }

}
