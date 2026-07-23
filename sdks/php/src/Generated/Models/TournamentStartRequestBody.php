<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Tournament start payload.
*/
class TournamentStartRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var array<string>|null $manualOrder Participant ids in seed order, seed 1 first. REQUIRED when `seedMethod` is `manual`. Every id must belong to this tournament (a foreign id answers 404) and duplicates are rejected. The list must still match the participant set AFTER the check-in drop below, so build it from the participants that are actually checked in.
    */
    private ?array $manualOrder = null;
    
    /**
     * @var TournamentStartRequestBody_seedMethod|null $seedMethod How to order participants into seeds. `manual` requires `manualOrder`. `random` is deterministic for a given tournament, not re-rollable. `registration` seeds by registration order.
    */
    private ?TournamentStartRequestBody_seedMethod $seedMethod = null;
    
    /**
     * Instantiates a new TournamentStartRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentStartRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentStartRequestBody {
        return new TournamentStartRequestBody();
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
            'manualOrder' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setManualOrder($val);
            },
            'seedMethod' => fn(ParseNode $n) => $o->setSeedMethod($n->getEnumValue(TournamentStartRequestBody_seedMethod::class)),
        ];
    }

    /**
     * Gets the manualOrder property value. Participant ids in seed order, seed 1 first. REQUIRED when `seedMethod` is `manual`. Every id must belong to this tournament (a foreign id answers 404) and duplicates are rejected. The list must still match the participant set AFTER the check-in drop below, so build it from the participants that are actually checked in.
     * @return array<string>|null
    */
    public function getManualOrder(): ?array {
        return $this->manualOrder;
    }

    /**
     * Gets the seedMethod property value. How to order participants into seeds. `manual` requires `manualOrder`. `random` is deterministic for a given tournament, not re-rollable. `registration` seeds by registration order.
     * @return TournamentStartRequestBody_seedMethod|null
    */
    public function getSeedMethod(): ?TournamentStartRequestBody_seedMethod {
        return $this->seedMethod;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfPrimitiveValues('manualOrder', $this->getManualOrder());
        $writer->writeEnumValue('seedMethod', $this->getSeedMethod());
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
     * Sets the manualOrder property value. Participant ids in seed order, seed 1 first. REQUIRED when `seedMethod` is `manual`. Every id must belong to this tournament (a foreign id answers 404) and duplicates are rejected. The list must still match the participant set AFTER the check-in drop below, so build it from the participants that are actually checked in.
     * @param array<string>|null $value Value to set for the manualOrder property.
    */
    public function setManualOrder(?array $value): void {
        $this->manualOrder = $value;
    }

    /**
     * Sets the seedMethod property value. How to order participants into seeds. `manual` requires `manualOrder`. `random` is deterministic for a given tournament, not re-rollable. `registration` seeds by registration order.
     * @param TournamentStartRequestBody_seedMethod|null $value Value to set for the seedMethod property.
    */
    public function setSeedMethod(?TournamentStartRequestBody_seedMethod $value): void {
        $this->seedMethod = $value;
    }

}
