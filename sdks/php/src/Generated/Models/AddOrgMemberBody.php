<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Add a member to the organization.
*/
class AddOrgMemberBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var AddOrgMemberBody_role|null $role The role to assign to the new member. Ownership is set on creation.
    */
    private ?AddOrgMemberBody_role $role = null;
    
    /**
     * @var string|null $targetUserId Convex user ID of the member to add.
    */
    private ?string $targetUserId = null;
    
    /**
     * Instantiates a new AddOrgMemberBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return AddOrgMemberBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): AddOrgMemberBody {
        return new AddOrgMemberBody();
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
            'role' => fn(ParseNode $n) => $o->setRole($n->getEnumValue(AddOrgMemberBody_role::class)),
            'targetUserId' => fn(ParseNode $n) => $o->setTargetUserId($n->getStringValue()),
        ];
    }

    /**
     * Gets the role property value. The role to assign to the new member. Ownership is set on creation.
     * @return AddOrgMemberBody_role|null
    */
    public function getRole(): ?AddOrgMemberBody_role {
        return $this->role;
    }

    /**
     * Gets the targetUserId property value. Convex user ID of the member to add.
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
        $writer->writeEnumValue('role', $this->getRole());
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
     * Sets the role property value. The role to assign to the new member. Ownership is set on creation.
     * @param AddOrgMemberBody_role|null $value Value to set for the role property.
    */
    public function setRole(?AddOrgMemberBody_role $value): void {
        $this->role = $value;
    }

    /**
     * Sets the targetUserId property value. Convex user ID of the member to add.
     * @param string|null $value Value to set for the targetUserId property.
    */
    public function setTargetUserId(?string $value): void {
        $this->targetUserId = $value;
    }

}
