<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Template filters.
*/
class LeagueTemplatesRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $gameId Optional game ID filter.
    */
    private ?string $gameId = null;
    
    /**
     * @var bool|null $isOfficial Optional official-template filter.
    */
    private ?bool $isOfficial = null;
    
    /**
     * Instantiates a new LeagueTemplatesRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueTemplatesRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueTemplatesRequestBody {
        return new LeagueTemplatesRequestBody();
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
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'isOfficial' => fn(ParseNode $n) => $o->setIsOfficial($n->getBooleanValue()),
        ];
    }

    /**
     * Gets the gameId property value. Optional game ID filter.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the isOfficial property value. Optional official-template filter.
     * @return bool|null
    */
    public function getIsOfficial(): ?bool {
        return $this->isOfficial;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeBooleanValue('isOfficial', $this->getIsOfficial());
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
     * Sets the gameId property value. Optional game ID filter.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the isOfficial property value. Optional official-template filter.
     * @param bool|null $value Value to set for the isOfficial property.
    */
    public function setIsOfficial(?bool $value): void {
        $this->isOfficial = $value;
    }

}
