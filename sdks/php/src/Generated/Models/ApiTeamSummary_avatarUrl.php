<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes ApiTeamSummary_avatarUrlMember1, string
*/
class ApiTeamSummary_avatarUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var ApiTeamSummary_avatarUrlMember1|null $apiTeamSummary_avatarUrlMember1 Composed type representation for type ApiTeamSummary_avatarUrlMember1
    */
    private ?ApiTeamSummary_avatarUrlMember1 $apiTeamSummary_avatarUrlMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiTeamSummary_avatarUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiTeamSummary_avatarUrl {
        $result = new ApiTeamSummary_avatarUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setApiTeamSummaryAvatarUrlMember1(new ApiTeamSummary_avatarUrlMember1());
        }
        return $result;
    }

    /**
     * Gets the ApiTeamSummary_avatarUrlMember1 property value. Composed type representation for type ApiTeamSummary_avatarUrlMember1
     * @return ApiTeamSummary_avatarUrlMember1|null
    */
    public function getApiTeamSummaryAvatarUrlMember1(): ?ApiTeamSummary_avatarUrlMember1 {
        return $this->apiTeamSummary_avatarUrlMember1;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getApiTeamSummaryAvatarUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getApiTeamSummaryAvatarUrlMember1());
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
            $writer->writeObjectValue(null, $this->getApiTeamSummaryAvatarUrlMember1());
        }
    }

    /**
     * Sets the ApiTeamSummary_avatarUrlMember1 property value. Composed type representation for type ApiTeamSummary_avatarUrlMember1
     * @param ApiTeamSummary_avatarUrlMember1|null $value Value to set for the ApiTeamSummary_avatarUrlMember1 property.
    */
    public function setApiTeamSummaryAvatarUrlMember1(?ApiTeamSummary_avatarUrlMember1 $value): void {
        $this->apiTeamSummary_avatarUrlMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
