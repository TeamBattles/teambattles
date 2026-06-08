<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiTeamSummary_slugMember1, string
*/
class ApiTeamSummary_slug implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiTeamSummary_slugMember1|null $apiTeamSummary_slugMember1 Composed type representation for type ApiTeamSummary_slugMember1
    */
    private ?ApiTeamSummary_slugMember1 $apiTeamSummary_slugMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiTeamSummary_slug
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiTeamSummary_slug {
        $result = new ApiTeamSummary_slug();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiTeamSummarySlugMember1(new ApiTeamSummary_slugMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiTeamSummary_slugMember1 property value. Composed type representation for type ApiTeamSummary_slugMember1
     * @return ApiTeamSummary_slugMember1|null
    */
    public function getApiTeamSummarySlugMember1(): ?ApiTeamSummary_slugMember1 {
        return $this->apiTeamSummary_slugMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiTeamSummarySlugMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiTeamSummarySlugMember1());
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
            $writer->writeObjectValue(null, $this->getApiTeamSummarySlugMember1());
        }
    }

    /**
     * Sets the ApiTeamSummary_slugMember1 property value. Composed type representation for type ApiTeamSummary_slugMember1
     * @param ApiTeamSummary_slugMember1|null $value Value to set for the ApiTeamSummary_slugMember1 property.
    */
    public function setApiTeamSummarySlugMember1(?ApiTeamSummary_slugMember1 $value): void {
        $this->apiTeamSummary_slugMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
