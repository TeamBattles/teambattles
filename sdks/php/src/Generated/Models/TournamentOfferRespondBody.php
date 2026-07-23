<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Free agent's response to a pickup offer.
*/
class TournamentOfferRespondBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var bool|null $accept true to accept the offer and join the offering team's roster, false to decline it. A competitive ban blocks accepting but never declining.
    */
    private ?bool $accept = null;
    
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * Instantiates a new TournamentOfferRespondBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentOfferRespondBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentOfferRespondBody {
        return new TournamentOfferRespondBody();
    }

    /**
     * Gets the accept property value. true to accept the offer and join the offering team's roster, false to decline it. A competitive ban blocks accepting but never declining.
     * @return bool|null
    */
    public function getAccept(): ?bool {
        return $this->accept;
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'accept' => fn(ParseNode $n) => $o->setAccept($n->getBooleanValue()),
        ];
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeBooleanValue('accept', $this->getAccept());
        $writer->writeAdditionalData($this->getAdditionalData());
    }

    /**
     * Sets the accept property value. true to accept the offer and join the offering team's roster, false to decline it. A competitive ban blocks accepting but never declining.
     * @param bool|null $value Value to set for the accept property.
    */
    public function setAccept(?bool $value): void {
        $this->accept = $value;
    }

    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param array<string,mixed> $value Value to set for the AdditionalData property.
    */
    public function setAdditionalData(?array $value): void {
        $this->additionalData = $value;
    }

}
