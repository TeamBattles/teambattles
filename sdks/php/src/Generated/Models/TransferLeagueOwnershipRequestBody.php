<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Transfers league ownership to an existing staff member.
*/
class TransferLeagueOwnershipRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $targetUserId User ID of the target league owner.
    */
    private ?string $targetUserId = null;
    
    /**
     * Instantiates a new TransferLeagueOwnershipRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TransferLeagueOwnershipRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TransferLeagueOwnershipRequestBody {
        return new TransferLeagueOwnershipRequestBody();
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
            'targetUserId' => fn(ParseNode $n) => $o->setTargetUserId($n->getStringValue()),
        ];
    }

    /**
     * Gets the targetUserId property value. User ID of the target league owner.
     * @return string|null
    */
    public function getTargetUserId(): ?string {
        return $this->targetUserId;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('targetUserId', $this->getTargetUserId());
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
     * Sets the targetUserId property value. User ID of the target league owner.
     * @param string|null $value Value to set for the targetUserId property.
    */
    public function setTargetUserId(?string $value): void {
        $this->targetUserId = $value;
    }

}
