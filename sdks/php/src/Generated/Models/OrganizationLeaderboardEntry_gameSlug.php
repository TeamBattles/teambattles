<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes OrganizationLeaderboardEntry_gameSlugMember1, string
*/
class OrganizationLeaderboardEntry_gameSlug implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var OrganizationLeaderboardEntry_gameSlugMember1|null $organizationLeaderboardEntry_gameSlugMember1 Composed type representation for type OrganizationLeaderboardEntry_gameSlugMember1
    */
    private ?OrganizationLeaderboardEntry_gameSlugMember1 $organizationLeaderboardEntry_gameSlugMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return OrganizationLeaderboardEntry_gameSlug
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): OrganizationLeaderboardEntry_gameSlug {
        $result = new OrganizationLeaderboardEntry_gameSlug();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setOrganizationLeaderboardEntryGameSlugMember1(new OrganizationLeaderboardEntry_gameSlugMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getOrganizationLeaderboardEntryGameSlugMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getOrganizationLeaderboardEntryGameSlugMember1());
        }
        return [];
    }

    /**
     * Gets the OrganizationLeaderboardEntry_gameSlugMember1 property value. Composed type representation for type OrganizationLeaderboardEntry_gameSlugMember1
     * @return OrganizationLeaderboardEntry_gameSlugMember1|null
    */
    public function getOrganizationLeaderboardEntryGameSlugMember1(): ?OrganizationLeaderboardEntry_gameSlugMember1 {
        return $this->organizationLeaderboardEntry_gameSlugMember1;
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
            $writer->writeObjectValue(null, $this->getOrganizationLeaderboardEntryGameSlugMember1());
        }
    }

    /**
     * Sets the OrganizationLeaderboardEntry_gameSlugMember1 property value. Composed type representation for type OrganizationLeaderboardEntry_gameSlugMember1
     * @param OrganizationLeaderboardEntry_gameSlugMember1|null $value Value to set for the OrganizationLeaderboardEntry_gameSlugMember1 property.
    */
    public function setOrganizationLeaderboardEntryGameSlugMember1(?OrganizationLeaderboardEntry_gameSlugMember1 $value): void {
        $this->organizationLeaderboardEntry_gameSlugMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
