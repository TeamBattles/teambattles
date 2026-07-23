<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TournamentProfile_bannerUrlMember1
*/
class TournamentProfile_bannerUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TournamentProfile_bannerUrlMember1|null $tournamentProfile_bannerUrlMember1 Composed type representation for type TournamentProfile_bannerUrlMember1
    */
    private ?TournamentProfile_bannerUrlMember1 $tournamentProfile_bannerUrlMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentProfile_bannerUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentProfile_bannerUrl {
        $result = new TournamentProfile_bannerUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTournamentProfileBannerUrlMember1(new TournamentProfile_bannerUrlMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTournamentProfileBannerUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTournamentProfileBannerUrlMember1());
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
     * Gets the TournamentProfile_bannerUrlMember1 property value. Composed type representation for type TournamentProfile_bannerUrlMember1
     * @return TournamentProfile_bannerUrlMember1|null
    */
    public function getTournamentProfileBannerUrlMember1(): ?TournamentProfile_bannerUrlMember1 {
        return $this->tournamentProfile_bannerUrlMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTournamentProfileBannerUrlMember1());
        }
    }

    /**
     * Sets the string property value. Composed type representation for type string
     * @param string|null $value Value to set for the string property.
    */
    public function setString(?string $value): void {
        $this->string = $value;
    }

    /**
     * Sets the TournamentProfile_bannerUrlMember1 property value. Composed type representation for type TournamentProfile_bannerUrlMember1
     * @param TournamentProfile_bannerUrlMember1|null $value Value to set for the TournamentProfile_bannerUrlMember1 property.
    */
    public function setTournamentProfileBannerUrlMember1(?TournamentProfile_bannerUrlMember1 $value): void {
        $this->tournamentProfile_bannerUrlMember1 = $value;
    }

}
