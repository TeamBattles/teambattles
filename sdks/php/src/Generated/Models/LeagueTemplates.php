<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * League rule templates.
*/
class LeagueTemplates implements Parsable 
{
    /**
     * @var int|null $count Number of templates returned.
    */
    private ?int $count = null;
    
    /**
     * @var array<LeagueTemplates_templates>|null $templates Rule templates visible to the API key owner.
    */
    private ?array $templates = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueTemplates
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueTemplates {
        return new LeagueTemplates();
    }

    /**
     * Gets the count property value. Number of templates returned.
     * @return int|null
    */
    public function getCount(): ?int {
        return $this->count;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'count' => fn(ParseNode $n) => $o->setCount($n->getIntegerValue()),
            'templates' => fn(ParseNode $n) => $o->setTemplates($n->getCollectionOfObjectValues([LeagueTemplates_templates::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the templates property value. Rule templates visible to the API key owner.
     * @return array<LeagueTemplates_templates>|null
    */
    public function getTemplates(): ?array {
        return $this->templates;
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
        $writer->writeCollectionOfObjectValues('templates', $this->getTemplates());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the count property value. Number of templates returned.
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the templates property value. Rule templates visible to the API key owner.
     * @param array<LeagueTemplates_templates>|null $value Value to set for the templates property.
    */
    public function setTemplates(?array $value): void {
        $this->templates = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
