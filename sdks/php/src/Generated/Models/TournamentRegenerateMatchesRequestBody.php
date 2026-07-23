<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Confirmation payload for the match-regeneration repair lever.
*/
class TournamentRegenerateMatchesRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var bool|null $confirm Must be exactly `true`. Required so this repair lever cannot be fired by an empty or accidental POST.
    */
    private ?bool $confirm = null;
    
    /**
     * Instantiates a new TournamentRegenerateMatchesRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentRegenerateMatchesRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentRegenerateMatchesRequestBody {
        return new TournamentRegenerateMatchesRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the confirm property value. Must be exactly `true`. Required so this repair lever cannot be fired by an empty or accidental POST.
     * @return bool|null
    */
    public function getConfirm(): ?bool {
        return $this->confirm;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'confirm' => fn(ParseNode $n) => $o->setConfirm($n->getBooleanValue()),
        ];
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeBooleanValue('confirm', $this->getConfirm());
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
     * Sets the confirm property value. Must be exactly `true`. Required so this repair lever cannot be fired by an empty or accidental POST.
     * @param bool|null $value Value to set for the confirm property.
    */
    public function setConfirm(?bool $value): void {
        $this->confirm = $value;
    }

}
