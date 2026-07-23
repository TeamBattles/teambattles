<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Bracket node result revert payload.
*/
class TournamentRevertNodeResultBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var bool|null $regenerateMatch Whether to generate a fresh match for the reverted node. Defaults to true when omitted.
    */
    private ?bool $regenerateMatch = null;
    
    /**
     * Instantiates a new TournamentRevertNodeResultBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentRevertNodeResultBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentRevertNodeResultBody {
        return new TournamentRevertNodeResultBody();
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
            'regenerateMatch' => fn(ParseNode $n) => $o->setRegenerateMatch($n->getBooleanValue()),
        ];
    }

    /**
     * Gets the regenerateMatch property value. Whether to generate a fresh match for the reverted node. Defaults to true when omitted.
     * @return bool|null
    */
    public function getRegenerateMatch(): ?bool {
        return $this->regenerateMatch;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeBooleanValue('regenerateMatch', $this->getRegenerateMatch());
        $writer->writeAdditionalData($this->getAdditionalData());
    }

    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param array<string,mixed> $value Value to set for the AdditionalData property.
    */
    public function setAdditionalData(?array $value): void {
        $this->additionalData = $value;
    }

    /**
     * Sets the regenerateMatch property value. Whether to generate a fresh match for the reverted node. Defaults to true when omitted.
     * @param bool|null $value Value to set for the regenerateMatch property.
    */
    public function setRegenerateMatch(?bool $value): void {
        $this->regenerateMatch = $value;
    }

}
