<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Tournament entry payload for a team the caller leads.
*/
class TournamentTeamEntryBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var array<string>|null $roster User IDs to register as the team's tournament roster. Every entry must be an ACTIVE member of the team named in the path, and the array must hold at least the tournament's teamSize members - a shorter roster answers 400 error_roster_too_small. Users already rostered in this tournament are skipped rather than rejected.
    */
    private ?array $roster = null;
    
    /**
     * Instantiates a new TournamentTeamEntryBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentTeamEntryBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentTeamEntryBody {
        return new TournamentTeamEntryBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'roster' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setRoster($val);
            },
        ];
    }

    /**
     * Gets the roster property value. User IDs to register as the team's tournament roster. Every entry must be an ACTIVE member of the team named in the path, and the array must hold at least the tournament's teamSize members - a shorter roster answers 400 error_roster_too_small. Users already rostered in this tournament are skipped rather than rejected.
     * @return array<string>|null
    */
    public function getRoster(): ?array {
        return $this->roster;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfPrimitiveValues('roster', $this->getRoster());
        $writer->writeAdditionalData($this->getAdditionalData());
    }

    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param array<string,mixed> $value Value to set for the AdditionalData property.
    */
    public function setAdditionalData(?array $value): void {
        $this->additionalData = $value;
    }

    /**
     * Sets the roster property value. User IDs to register as the team's tournament roster. Every entry must be an ACTIVE member of the team named in the path, and the array must hold at least the tournament's teamSize members - a shorter roster answers 400 error_roster_too_small. Users already rostered in this tournament are skipped rather than rejected.
     * @param array<string>|null $value Value to set for the roster property.
    */
    public function setRoster(?array $value): void {
        $this->roster = $value;
    }

}
