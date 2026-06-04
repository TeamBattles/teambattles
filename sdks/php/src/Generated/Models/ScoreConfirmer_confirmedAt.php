<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ScoreConfirmer_confirmedAtMember1, string
*/
class ScoreConfirmer_confirmedAt implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ScoreConfirmer_confirmedAtMember1|null $scoreConfirmer_confirmedAtMember1 Composed type representation for type ScoreConfirmer_confirmedAtMember1
    */
    private ?ScoreConfirmer_confirmedAtMember1 $scoreConfirmer_confirmedAtMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ScoreConfirmer_confirmedAt
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ScoreConfirmer_confirmedAt {
        $result = new ScoreConfirmer_confirmedAt();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setScoreConfirmerConfirmedAtMember1(new ScoreConfirmer_confirmedAtMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getScoreConfirmerConfirmedAtMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getScoreConfirmerConfirmedAtMember1());
        }
        return [];
    }

    /**
     * Gets the ScoreConfirmer_confirmedAtMember1 property value. Composed type representation for type ScoreConfirmer_confirmedAtMember1
     * @return ScoreConfirmer_confirmedAtMember1|null
    */
    public function getScoreConfirmerConfirmedAtMember1(): ?ScoreConfirmer_confirmedAtMember1 {
        return $this->scoreConfirmer_confirmedAtMember1;
    }

    /**
     * Gets the string property value. Composed type representation for type string
     * @return string|null
    */
    public function getString(): ?string {
        return $this->string;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getScoreConfirmerConfirmedAtMember1());
        }
    }

    /**
     * Sets the ScoreConfirmer_confirmedAtMember1 property value. Composed type representation for type ScoreConfirmer_confirmedAtMember1
     * @param ScoreConfirmer_confirmedAtMember1|null $value Value to set for the ScoreConfirmer_confirmedAtMember1 property.
    */
    public function setScoreConfirmerConfirmedAtMember1(?ScoreConfirmer_confirmedAtMember1 $value): void {
        $this->scoreConfirmer_confirmedAtMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
