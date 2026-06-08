<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiTeamSummary_tagMember1, string
*/
class ApiTeamSummary_tag implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiTeamSummary_tagMember1|null $apiTeamSummary_tagMember1 Composed type representation for type ApiTeamSummary_tagMember1
    */
    private ?ApiTeamSummary_tagMember1 $apiTeamSummary_tagMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiTeamSummary_tag
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiTeamSummary_tag {
        $result = new ApiTeamSummary_tag();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiTeamSummaryTagMember1(new ApiTeamSummary_tagMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiTeamSummary_tagMember1 property value. Composed type representation for type ApiTeamSummary_tagMember1
     * @return ApiTeamSummary_tagMember1|null
    */
    public function getApiTeamSummaryTagMember1(): ?ApiTeamSummary_tagMember1 {
        return $this->apiTeamSummary_tagMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiTeamSummaryTagMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiTeamSummaryTagMember1());
        }
        return [];
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
            $writer->writeObjectValue(null, $this->getApiTeamSummaryTagMember1());
        }
    }

    /**
     * Sets the ApiTeamSummary_tagMember1 property value. Composed type representation for type ApiTeamSummary_tagMember1
     * @param ApiTeamSummary_tagMember1|null $value Value to set for the ApiTeamSummary_tagMember1 property.
    */
    public function setApiTeamSummaryTagMember1(?ApiTeamSummary_tagMember1 $value): void {
        $this->apiTeamSummary_tagMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
