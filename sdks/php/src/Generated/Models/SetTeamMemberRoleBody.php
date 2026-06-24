<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Set a team member's role.
*/
class SetTeamMemberRoleBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var SetTeamMemberRoleBody_role|null $role The new role for the member. Captaincy is changed via captaincy transfer.
    */
    private ?SetTeamMemberRoleBody_role $role = null;
    
    /**
     * Instantiates a new SetTeamMemberRoleBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return SetTeamMemberRoleBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): SetTeamMemberRoleBody {
        return new SetTeamMemberRoleBody();
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
            'role' => fn(ParseNode $n) => $o->setRole($n->getEnumValue(SetTeamMemberRoleBody_role::class)),
        ];
    }

    /**
     * Gets the role property value. The new role for the member. Captaincy is changed via captaincy transfer.
     * @return SetTeamMemberRoleBody_role|null
    */
    public function getRole(): ?SetTeamMemberRoleBody_role {
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
     * Sets the role property value. The new role for the member. Captaincy is changed via captaincy transfer.
     * @param SetTeamMemberRoleBody_role|null $value Value to set for the role property.
    */
    public function setRole(?SetTeamMemberRoleBody_role $value): void {
        $this->role = $value;
    }

}
