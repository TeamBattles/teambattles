<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Transfer team captaincy to another member.
*/
class TransferTeamCaptaincyBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $newCaptainId Convex user ID of the active team member to promote to captain.
    */
    private ?string $newCaptainId = null;
    
    /**
     * Instantiates a new TransferTeamCaptaincyBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TransferTeamCaptaincyBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TransferTeamCaptaincyBody {
        return new TransferTeamCaptaincyBody();
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
            'newCaptainId' => fn(ParseNode $n) => $o->setNewCaptainId($n->getStringValue()),
        ];
    }

    /**
     * Gets the newCaptainId property value. Convex user ID of the active team member to promote to captain.
     * @return string|null
    */
    public function getNewCaptainId(): ?string {
        return $this->newCaptainId;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('newCaptainId', $this->getNewCaptainId());
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
     * Sets the newCaptainId property value. Convex user ID of the active team member to promote to captain.
     * @param string|null $value Value to set for the newCaptainId property.
    */
    public function setNewCaptainId(?string $value): void {
        $this->newCaptainId = $value;
    }

}
