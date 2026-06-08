<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Ongoing matches for the API key owner's active teams.
*/
class OngoingMatchesResponse implements Parsable 
{
    /**
     * @var array<ApiMatchDetail>|null $matches The matches property
    */
    private ?array $matches = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return OngoingMatchesResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): OngoingMatchesResponse {
        return new OngoingMatchesResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'matches' => fn(ParseNode $n) => $o->setMatches($n->getCollectionOfObjectValues([ApiMatchDetail::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the matches property value. The matches property
     * @return array<ApiMatchDetail>|null
    */
    public function getMatches(): ?array {
        return $this->matches;
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
        $writer->writeCollectionOfObjectValues('matches', $this->getMatches());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the matches property value. The matches property
     * @param array<ApiMatchDetail>|null $value Value to set for the matches property.
    */
    public function setMatches(?array $value): void {
        $this->matches = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
