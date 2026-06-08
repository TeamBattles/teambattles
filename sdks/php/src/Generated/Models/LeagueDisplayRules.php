<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * League display rules.
*/
class LeagueDisplayRules implements Parsable 
{
    /**
     * @var int|null $count Number of display rules returned.
    */
    private ?int $count = null;
    
    /**
     * @var array<LeagueDisplayRules_displayRules>|null $displayRules Display rule documents for the league game.
    */
    private ?array $displayRules = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueDisplayRules
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueDisplayRules {
        return new LeagueDisplayRules();
    }

    /**
     * Gets the count property value. Number of display rules returned.
     * @return int|null
    */
    public function getCount(): ?int {
        return $this->count;
    }

    /**
     * Gets the displayRules property value. Display rule documents for the league game.
     * @return array<LeagueDisplayRules_displayRules>|null
    */
    public function getDisplayRules(): ?array {
        return $this->displayRules;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'count' => fn(ParseNode $n) => $o->setCount($n->getIntegerValue()),
            'displayRules' => fn(ParseNode $n) => $o->setDisplayRules($n->getCollectionOfObjectValues([LeagueDisplayRules_displayRules::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
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
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeCollectionOfObjectValues('displayRules', $this->getDisplayRules());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the count property value. Number of display rules returned.
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the displayRules property value. Display rule documents for the league game.
     * @param array<LeagueDisplayRules_displayRules>|null $value Value to set for the displayRules property.
    */
    public function setDisplayRules(?array $value): void {
        $this->displayRules = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
