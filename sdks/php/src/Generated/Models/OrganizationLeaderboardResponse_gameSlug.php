<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes OrganizationLeaderboardResponse_gameSlugMember1, string
*/
class OrganizationLeaderboardResponse_gameSlug implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var OrganizationLeaderboardResponse_gameSlugMember1|null $organizationLeaderboardResponse_gameSlugMember1 Composed type representation for type OrganizationLeaderboardResponse_gameSlugMember1
    */
    private ?OrganizationLeaderboardResponse_gameSlugMember1 $organizationLeaderboardResponse_gameSlugMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return OrganizationLeaderboardResponse_gameSlug
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): OrganizationLeaderboardResponse_gameSlug {
        $result = new OrganizationLeaderboardResponse_gameSlug();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setOrganizationLeaderboardResponseGameSlugMember1(new OrganizationLeaderboardResponse_gameSlugMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getOrganizationLeaderboardResponseGameSlugMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getOrganizationLeaderboardResponseGameSlugMember1());
        }
        return [];
    }

    /**
     * Gets the OrganizationLeaderboardResponse_gameSlugMember1 property value. Composed type representation for type OrganizationLeaderboardResponse_gameSlugMember1
     * @return OrganizationLeaderboardResponse_gameSlugMember1|null
    */
    public function getOrganizationLeaderboardResponseGameSlugMember1(): ?OrganizationLeaderboardResponse_gameSlugMember1 {
        return $this->organizationLeaderboardResponse_gameSlugMember1;
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
            $writer->writeObjectValue(null, $this->getOrganizationLeaderboardResponseGameSlugMember1());
        }
    }

    /**
     * Sets the OrganizationLeaderboardResponse_gameSlugMember1 property value. Composed type representation for type OrganizationLeaderboardResponse_gameSlugMember1
     * @param OrganizationLeaderboardResponse_gameSlugMember1|null $value Value to set for the OrganizationLeaderboardResponse_gameSlugMember1 property.
    */
    public function setOrganizationLeaderboardResponseGameSlugMember1(?OrganizationLeaderboardResponse_gameSlugMember1 $value): void {
        $this->organizationLeaderboardResponse_gameSlugMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
