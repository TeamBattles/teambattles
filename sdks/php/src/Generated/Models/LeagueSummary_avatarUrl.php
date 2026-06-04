<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes LeagueSummary_avatarUrlMember1, string
*/
class LeagueSummary_avatarUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var LeagueSummary_avatarUrlMember1|null $leagueSummary_avatarUrlMember1 Composed type representation for type LeagueSummary_avatarUrlMember1
    */
    private ?LeagueSummary_avatarUrlMember1 $leagueSummary_avatarUrlMember1 = null;
    
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueSummary_avatarUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueSummary_avatarUrl {
        $result = new LeagueSummary_avatarUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setLeagueSummaryAvatarUrlMember1(new LeagueSummary_avatarUrlMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getLeagueSummaryAvatarUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getLeagueSummaryAvatarUrlMember1());
        }
        return [];
    }

    /**
     * Gets the LeagueSummary_avatarUrlMember1 property value. Composed type representation for type LeagueSummary_avatarUrlMember1
     * @return LeagueSummary_avatarUrlMember1|null
    */
    public function getLeagueSummaryAvatarUrlMember1(): ?LeagueSummary_avatarUrlMember1 {
        return $this->leagueSummary_avatarUrlMember1;
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
            $writer->writeObjectValue(null, $this->getLeagueSummaryAvatarUrlMember1());
        }
    }

    /**
     * Sets the LeagueSummary_avatarUrlMember1 property value. Composed type representation for type LeagueSummary_avatarUrlMember1
     * @param LeagueSummary_avatarUrlMember1|null $value Value to set for the LeagueSummary_avatarUrlMember1 property.
    */
    public function setLeagueSummaryAvatarUrlMember1(?LeagueSummary_avatarUrlMember1 $value): void {
        $this->leagueSummary_avatarUrlMember1 = $value;
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

}
