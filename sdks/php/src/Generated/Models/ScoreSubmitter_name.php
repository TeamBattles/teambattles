<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ScoreSubmitter_nameMember1, string
*/
class ScoreSubmitter_name implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ScoreSubmitter_nameMember1|null $scoreSubmitter_nameMember1 Composed type representation for type ScoreSubmitter_nameMember1
    */
    private ?ScoreSubmitter_nameMember1 $scoreSubmitter_nameMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ScoreSubmitter_name
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ScoreSubmitter_name {
        $result = new ScoreSubmitter_name();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setScoreSubmitterNameMember1(new ScoreSubmitter_nameMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getScoreSubmitterNameMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getScoreSubmitterNameMember1());
        }
        return [];
    }

    /**
     * Gets the ScoreSubmitter_nameMember1 property value. Composed type representation for type ScoreSubmitter_nameMember1
     * @return ScoreSubmitter_nameMember1|null
    */
    public function getScoreSubmitterNameMember1(): ?ScoreSubmitter_nameMember1 {
        return $this->scoreSubmitter_nameMember1;
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
            $writer->writeObjectValue(null, $this->getScoreSubmitterNameMember1());
        }
    }

    /**
     * Sets the ScoreSubmitter_nameMember1 property value. Composed type representation for type ScoreSubmitter_nameMember1
     * @param ScoreSubmitter_nameMember1|null $value Value to set for the ScoreSubmitter_nameMember1 property.
    */
    public function setScoreSubmitterNameMember1(?ScoreSubmitter_nameMember1 $value): void {
        $this->scoreSubmitter_nameMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
