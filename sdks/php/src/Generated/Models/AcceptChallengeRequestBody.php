<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Accepts a pending challenge as the API key owner.
*/
class AcceptChallengeRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string>|null $activeRoster Active roster user IDs for the challenge response.
    */
    private ?array $activeRoster = null;
    
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var array<AcceptChallengeRequestBody_benchRoster>|null $benchRoster Optional bench roster users.
    */
    private ?array $benchRoster = null;
    
    /**
     * Instantiates a new AcceptChallengeRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return AcceptChallengeRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): AcceptChallengeRequestBody {
        return new AcceptChallengeRequestBody();
    }

    /**
     * Gets the activeRoster property value. Active roster user IDs for the challenge response.
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
     * @return array<AcceptChallengeRequestBody_benchRoster>|null
    */
    public function getBenchRoster(): ?array {
        return $this->benchRoster;
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
            'benchRoster' => fn(ParseNode $n) => $o->setBenchRoster($n->getCollectionOfObjectValues([AcceptChallengeRequestBody_benchRoster::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfPrimitiveValues('activeRoster', $this->getActiveRoster());
        $writer->writeCollectionOfObjectValues('benchRoster', $this->getBenchRoster());
        $writer->writeAdditionalData($this->getAdditionalData());
    }

    /**
     * Sets the activeRoster property value. Active roster user IDs for the challenge response.
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
     * @param array<AcceptChallengeRequestBody_benchRoster>|null $value Value to set for the benchRoster property.
    */
    public function setBenchRoster(?array $value): void {
        $this->benchRoster = $value;
    }

}
