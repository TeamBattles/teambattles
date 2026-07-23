<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\ComposedTypeWrapper;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\ParseNodeHelper;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Composed type wrapper for classes string, TournamentSummary_bannerUrlMember1
*/
class TournamentSummary_bannerUrl implements ComposedTypeWrapper, Parsable 
{
    /**
     * @var string|null $string Composed type representation for type string
    */
    private ?string $string = null;
    
    /**
     * @var TournamentSummary_bannerUrlMember1|null $tournamentSummary_bannerUrlMember1 Composed type representation for type TournamentSummary_bannerUrlMember1
    */
    private ?TournamentSummary_bannerUrlMember1 $tournamentSummary_bannerUrlMember1 = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentSummary_bannerUrl
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentSummary_bannerUrl {
        $result = new TournamentSummary_bannerUrl();
        if ($parseNode->getStringValue() !== null) {
            $result->setString($parseNode->getStringValue());
        } else {
            $result->setTournamentSummaryBannerUrlMember1(new TournamentSummary_bannerUrlMember1());
        }
        return $result;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        if ($this->getTournamentSummaryBannerUrlMember1() !== null) {
            return ParseNodeHelper::mergeDeserializersForIntersectionWrapper($this->getTournamentSummaryBannerUrlMember1());
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
     * Gets the TournamentSummary_bannerUrlMember1 property value. Composed type representation for type TournamentSummary_bannerUrlMember1
     * @return TournamentSummary_bannerUrlMember1|null
    */
    public function getTournamentSummaryBannerUrlMember1(): ?TournamentSummary_bannerUrlMember1 {
        return $this->tournamentSummary_bannerUrlMember1;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        if ($this->getString() !== null) {
            $writer->writeStringValue(null, $this->getString());
        } else {
            $writer->writeObjectValue(null, $this->getTournamentSummaryBannerUrlMember1());
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
     * Sets the TournamentSummary_bannerUrlMember1 property value. Composed type representation for type TournamentSummary_bannerUrlMember1
     * @param TournamentSummary_bannerUrlMember1|null $value Value to set for the TournamentSummary_bannerUrlMember1 property.
    */
    public function setTournamentSummaryBannerUrlMember1(?TournamentSummary_bannerUrlMember1 $value): void {
        $this->tournamentSummary_bannerUrlMember1 = $value;
    }

}
