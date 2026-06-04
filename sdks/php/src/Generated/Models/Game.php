<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Game definition.
*/
class Game implements Parsable 
{
    /**
     * @var string|null $id Game ID.
    */
    private ?string $id = null;
    
    /**
     * @var string|null $nameKey Game name key for i18n lookup.
    */
    private ?string $nameKey = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return Game
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): Game {
        return new Game();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'nameKey' => fn(ParseNode $n) => $o->setNameKey($n->getStringValue()),
        ];
    }

    /**
     * Gets the id property value. Game ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the nameKey property value. Game name key for i18n lookup.
     * @return string|null
    */
    public function getNameKey(): ?string {
        return $this->nameKey;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('id', $this->getId());
        $writer->writeStringValue('nameKey', $this->getNameKey());
    }

    /**
     * Sets the id property value. Game ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the nameKey property value. Game name key for i18n lookup.
     * @param string|null $value Value to set for the nameKey property.
    */
    public function setNameKey(?string $value): void {
        $this->nameKey = $value;
    }

}
