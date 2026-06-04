<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A team as embedded in the game-developer match-detail response ({ _id, name, tag }).
*/
class GameDetailTeam implements Parsable 
{
    /**
     * @var string|null $id Team ID.
    */
    private ?string $id = null;
    
    /**
     * @var string|null $name Team name.
    */
    private ?string $name = null;
    
    /**
     * @var string|null $tag Team tag (short identifier).
    */
    private ?string $tag = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return GameDetailTeam
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): GameDetailTeam {
        return new GameDetailTeam();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            '_id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'tag' => fn(ParseNode $n) => $o->setTag($n->getStringValue()),
        ];
    }

    /**
     * Gets the _id property value. Team ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the name property value. Team name.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the tag property value. Team tag (short identifier).
     * @return string|null
    */
    public function getTag(): ?string {
        return $this->tag;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('_id', $this->getId());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeStringValue('tag', $this->getTag());
    }

    /**
     * Sets the _id property value. Team ID.
     * @param string|null $value Value to set for the _id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the name property value. Team name.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the tag property value. Team tag (short identifier).
     * @param string|null $value Value to set for the tag property.
    */
    public function setTag(?string $value): void {
        $this->tag = $value;
    }

}
