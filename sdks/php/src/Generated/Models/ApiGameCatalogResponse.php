<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Game catalog list response.
*/
class ApiGameCatalogResponse implements Parsable 
{
    /**
     * @var array<ApiGameCatalogEntry>|null $games The games property
    */
    private ?array $games = null;
    
    /**
     * @var array<ApiObjective>|null $objectives The objectives property
    */
    private ?array $objectives = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGameCatalogResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGameCatalogResponse {
        return new ApiGameCatalogResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'games' => fn(ParseNode $n) => $o->setGames($n->getCollectionOfObjectValues([ApiGameCatalogEntry::class, 'createFromDiscriminatorValue'])),
            'objectives' => fn(ParseNode $n) => $o->setObjectives($n->getCollectionOfObjectValues([ApiObjective::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the games property value. The games property
     * @return array<ApiGameCatalogEntry>|null
    */
    public function getGames(): ?array {
        return $this->games;
    }

    /**
     * Gets the objectives property value. The objectives property
     * @return array<ApiObjective>|null
    */
    public function getObjectives(): ?array {
        return $this->objectives;
    }

    /**
     * Gets the timestamp property value. The timestamp property
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfObjectValues('games', $this->getGames());
        $writer->writeCollectionOfObjectValues('objectives', $this->getObjectives());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the games property value. The games property
     * @param array<ApiGameCatalogEntry>|null $value Value to set for the games property.
    */
    public function setGames(?array $value): void {
        $this->games = $value;
    }

    /**
     * Sets the objectives property value. The objectives property
     * @param array<ApiObjective>|null $value Value to set for the objectives property.
    */
    public function setObjectives(?array $value): void {
        $this->objectives = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
