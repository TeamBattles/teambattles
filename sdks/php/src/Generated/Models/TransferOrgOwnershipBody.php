<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Transfer organization ownership to another member.
*/
class TransferOrgOwnershipBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $newOwnerId Convex user ID of the active organization member to promote to owner.
    */
    private ?string $newOwnerId = null;
    
    /**
     * Instantiates a new TransferOrgOwnershipBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TransferOrgOwnershipBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TransferOrgOwnershipBody {
        return new TransferOrgOwnershipBody();
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
            'newOwnerId' => fn(ParseNode $n) => $o->setNewOwnerId($n->getStringValue()),
        ];
    }

    /**
     * Gets the newOwnerId property value. Convex user ID of the active organization member to promote to owner.
     * @return string|null
    */
    public function getNewOwnerId(): ?string {
        return $this->newOwnerId;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('newOwnerId', $this->getNewOwnerId());
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
     * Sets the newOwnerId property value. Convex user ID of the active organization member to promote to owner.
     * @param string|null $value Value to set for the newOwnerId property.
    */
    public function setNewOwnerId(?string $value): void {
        $this->newOwnerId = $value;
    }

}
