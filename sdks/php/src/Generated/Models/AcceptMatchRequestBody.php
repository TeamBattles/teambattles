<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Creates a match acceptance request as the API key owner.
*/
class AcceptMatchRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string>|null $activeRoster Active roster user IDs for the acceptance request.
    */
    private ?array $activeRoster = null;
    
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var array<AcceptMatchRequestBody_benchRoster>|null $benchRoster Optional bench roster users.
    */
    private ?array $benchRoster = null;
    
    /**
     * @var AcceptMatchRequestBody_disputedRules|null $disputedRules Optional proposed rule changes.
    */
    private ?AcceptMatchRequestBody_disputedRules $disputedRules = null;
    
    /**
     * @var AcceptMatchRequestBody_mapPreferenceMode|null $mapPreferenceMode Optional map preference mode for selected maps.
    */
    private ?AcceptMatchRequestBody_mapPreferenceMode $mapPreferenceMode = null;
    
    /**
     * @var string|null $message Optional message for the match creator.
    */
    private ?string $message = null;
    
    /**
     * @var array<string>|null $selectedMaps Optional proposed map IDs.
    */
    private ?array $selectedMaps = null;
    
    /**
     * @var string|null $teamId Team ID accepting the match.
    */
    private ?string $teamId = null;
    
    /**
     * Instantiates a new AcceptMatchRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return AcceptMatchRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): AcceptMatchRequestBody {
        return new AcceptMatchRequestBody();
    }

    /**
     * Gets the activeRoster property value. Active roster user IDs for the acceptance request.
     * @return array<string>|null
    */
    public function getActiveRoster(): ?array {
        return $this->activeRoster;
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the benchRoster property value. Optional bench roster users.
     * @return array<AcceptMatchRequestBody_benchRoster>|null
    */
    public function getBenchRoster(): ?array {
        return $this->benchRoster;
    }

    /**
     * Gets the disputedRules property value. Optional proposed rule changes.
     * @return AcceptMatchRequestBody_disputedRules|null
    */
    public function getDisputedRules(): ?AcceptMatchRequestBody_disputedRules {
        return $this->disputedRules;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'activeRoster' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setActiveRoster($val);
            },
            'benchRoster' => fn(ParseNode $n) => $o->setBenchRoster($n->getCollectionOfObjectValues([AcceptMatchRequestBody_benchRoster::class, 'createFromDiscriminatorValue'])),
            'disputedRules' => fn(ParseNode $n) => $o->setDisputedRules($n->getObjectValue([AcceptMatchRequestBody_disputedRules::class, 'createFromDiscriminatorValue'])),
            'mapPreferenceMode' => fn(ParseNode $n) => $o->setMapPreferenceMode($n->getEnumValue(AcceptMatchRequestBody_mapPreferenceMode::class)),
            'message' => fn(ParseNode $n) => $o->setMessage($n->getStringValue()),
            'selectedMaps' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setSelectedMaps($val);
            },
            'teamId' => fn(ParseNode $n) => $o->setTeamId($n->getStringValue()),
        ];
    }

    /**
     * Gets the mapPreferenceMode property value. Optional map preference mode for selected maps.
     * @return AcceptMatchRequestBody_mapPreferenceMode|null
    */
    public function getMapPreferenceMode(): ?AcceptMatchRequestBody_mapPreferenceMode {
        return $this->mapPreferenceMode;
    }

    /**
     * Gets the message property value. Optional message for the match creator.
     * @return string|null
    */
    public function getMessage(): ?string {
        return $this->message;
    }

    /**
     * Gets the selectedMaps property value. Optional proposed map IDs.
     * @return array<string>|null
    */
    public function getSelectedMaps(): ?array {
        return $this->selectedMaps;
    }

    /**
     * Gets the teamId property value. Team ID accepting the match.
     * @return string|null
    */
    public function getTeamId(): ?string {
        return $this->teamId;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfPrimitiveValues('activeRoster', $this->getActiveRoster());
        $writer->writeCollectionOfObjectValues('benchRoster', $this->getBenchRoster());
        $writer->writeObjectValue('disputedRules', $this->getDisputedRules());
        $writer->writeEnumValue('mapPreferenceMode', $this->getMapPreferenceMode());
        $writer->writeStringValue('message', $this->getMessage());
        $writer->writeCollectionOfPrimitiveValues('selectedMaps', $this->getSelectedMaps());
        $writer->writeStringValue('teamId', $this->getTeamId());
        $writer->writeAdditionalData($this->getAdditionalData());
    }

    /**
     * Sets the activeRoster property value. Active roster user IDs for the acceptance request.
     * @param array<string>|null $value Value to set for the activeRoster property.
    */
    public function setActiveRoster(?array $value): void {
        $this->activeRoster = $value;
    }

    /**
     * Sets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @param array<string,mixed> $value Value to set for the AdditionalData property.
    */
    public function setAdditionalData(?array $value): void {
        $this->additionalData = $value;
    }

    /**
     * Sets the benchRoster property value. Optional bench roster users.
     * @param array<AcceptMatchRequestBody_benchRoster>|null $value Value to set for the benchRoster property.
    */
    public function setBenchRoster(?array $value): void {
        $this->benchRoster = $value;
    }

    /**
     * Sets the disputedRules property value. Optional proposed rule changes.
     * @param AcceptMatchRequestBody_disputedRules|null $value Value to set for the disputedRules property.
    */
    public function setDisputedRules(?AcceptMatchRequestBody_disputedRules $value): void {
        $this->disputedRules = $value;
    }

    /**
     * Sets the mapPreferenceMode property value. Optional map preference mode for selected maps.
     * @param AcceptMatchRequestBody_mapPreferenceMode|null $value Value to set for the mapPreferenceMode property.
    */
    public function setMapPreferenceMode(?AcceptMatchRequestBody_mapPreferenceMode $value): void {
        $this->mapPreferenceMode = $value;
    }

    /**
     * Sets the message property value. Optional message for the match creator.
     * @param string|null $value Value to set for the message property.
    */
    public function setMessage(?string $value): void {
        $this->message = $value;
    }

    /**
     * Sets the selectedMaps property value. Optional proposed map IDs.
     * @param array<string>|null $value Value to set for the selectedMaps property.
    */
    public function setSelectedMaps(?array $value): void {
        $this->selectedMaps = $value;
    }

    /**
     * Sets the teamId property value. Team ID accepting the match.
     * @param string|null $value Value to set for the teamId property.
    */
    public function setTeamId(?string $value): void {
        $this->teamId = $value;
    }

}
