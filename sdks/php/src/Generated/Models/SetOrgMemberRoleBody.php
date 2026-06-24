<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Set an organization member's role.
*/
class SetOrgMemberRoleBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var SetOrgMemberRoleBody_role|null $role The new role for the member. The owner role is changed via ownership transfer.
    */
    private ?SetOrgMemberRoleBody_role $role = null;
    
    /**
     * Instantiates a new SetOrgMemberRoleBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return SetOrgMemberRoleBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): SetOrgMemberRoleBody {
        return new SetOrgMemberRoleBody();
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
            'role' => fn(ParseNode $n) => $o->setRole($n->getEnumValue(SetOrgMemberRoleBody_role::class)),
        ];
    }

    /**
     * Gets the role property value. The new role for the member. The owner role is changed via ownership transfer.
     * @return SetOrgMemberRoleBody_role|null
    */
    public function getRole(): ?SetOrgMemberRoleBody_role {
        return $this->role;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeEnumValue('role', $this->getRole());
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
     * Sets the role property value. The new role for the member. The owner role is changed via ownership transfer.
     * @param SetOrgMemberRoleBody_role|null $value Value to set for the role property.
    */
    public function setRole(?SetOrgMemberRoleBody_role $value): void {
        $this->role = $value;
    }

}
