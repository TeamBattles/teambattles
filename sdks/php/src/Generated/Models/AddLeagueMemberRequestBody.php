<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Adds or reactivates a league staff member.
*/
class AddLeagueMemberRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var AddLeagueMemberRequestBody_role|null $role Assignable league staff role. OWNER cannot be assigned through this API.
    */
    private ?AddLeagueMemberRequestBody_role $role = null;
    
    /**
     * @var string|null $userId User ID to add to league staff.
    */
    private ?string $userId = null;
    
    /**
     * Instantiates a new AddLeagueMemberRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return AddLeagueMemberRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): AddLeagueMemberRequestBody {
        return new AddLeagueMemberRequestBody();
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
            'role' => fn(ParseNode $n) => $o->setRole($n->getEnumValue(AddLeagueMemberRequestBody_role::class)),
            'userId' => fn(ParseNode $n) => $o->setUserId($n->getStringValue()),
        ];
    }

    /**
     * Gets the role property value. Assignable league staff role. OWNER cannot be assigned through this API.
     * @return AddLeagueMemberRequestBody_role|null
    */
    public function getRole(): ?AddLeagueMemberRequestBody_role {
        return $this->role;
    }

    /**
     * Gets the userId property value. User ID to add to league staff.
     * @return string|null
    */
    public function getUserId(): ?string {
        return $this->userId;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeEnumValue('role', $this->getRole());
        $writer->writeStringValue('userId', $this->getUserId());
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
     * Sets the role property value. Assignable league staff role. OWNER cannot be assigned through this API.
     * @param AddLeagueMemberRequestBody_role|null $value Value to set for the role property.
    */
    public function setRole(?AddLeagueMemberRequestBody_role $value): void {
        $this->role = $value;
    }

    /**
     * Sets the userId property value. User ID to add to league staff.
     * @param string|null $value Value to set for the userId property.
    */
    public function setUserId(?string $value): void {
        $this->userId = $value;
    }

}
