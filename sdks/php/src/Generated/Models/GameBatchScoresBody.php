<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Request body for submitting one or more map scores in a single call.
*/
class GameBatchScoresBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var array<GameMapScoreInput>|null $maps Map scores to submit. Must contain at least one entry.
    */
    private ?array $maps = null;
    
    /**
     * Instantiates a new GameBatchScoresBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameBatchScoresBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameBatchScoresBody {
        return new GameBatchScoresBody();
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
            'maps' => fn(ParseNode $n) => $o->setMaps($n->getCollectionOfObjectValues([GameMapScoreInput::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the maps property value. Map scores to submit. Must contain at least one entry.
     * @return array<GameMapScoreInput>|null
    */
    public function getMaps(): ?array {
        return $this->maps;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfObjectValues('maps', $this->getMaps());
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
     * Sets the maps property value. Map scores to submit. Must contain at least one entry.
     * @param array<GameMapScoreInput>|null $value Value to set for the maps property.
    */
    public function setMaps(?array $value): void {
        $this->maps = $value;
    }

}
