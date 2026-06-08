<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * API-safe team or organization member.
*/
class ApiMember implements Parsable 
{
    /**
     * @var string|null $id Membership row ID.
    */
    private ?string $id = null;
    
    /**
     * @var ApiMember_joinedAt|null $joinedAt The joinedAt property
    */
    private ?ApiMember_joinedAt $joinedAt = null;
    
    /**
     * @var string|null $role Role label within the team or organization.
    */
    private ?string $role = null;
    
    /**
     * @var ApiUserProfile|null $user API-safe public user profile.
    */
    private ?ApiUserProfile $user = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMember
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMember {
        return new ApiMember();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'joinedAt' => fn(ParseNode $n) => $o->setJoinedAt($n->getObjectValue([ApiMember_joinedAt::class, 'createFromDiscriminatorValue'])),
            'role' => fn(ParseNode $n) => $o->setRole($n->getStringValue()),
            'user' => fn(ParseNode $n) => $o->setUser($n->getObjectValue([ApiUserProfile::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the id property value. Membership row ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the joinedAt property value. The joinedAt property
     * @return ApiMember_joinedAt|null
    */
    public function getJoinedAt(): ?ApiMember_joinedAt {
        return $this->joinedAt;
    }

    /**
     * Gets the role property value. Role label within the team or organization.
     * @return string|null
    */
    public function getRole(): ?string {
        return $this->role;
    }

    /**
     * Gets the user property value. API-safe public user profile.
     * @return ApiUserProfile|null
    */
    public function getUser(): ?ApiUserProfile {
        return $this->user;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('id', $this->getId());
        $writer->writeObjectValue('joinedAt', $this->getJoinedAt());
        $writer->writeStringValue('role', $this->getRole());
        $writer->writeObjectValue('user', $this->getUser());
    }

    /**
     * Sets the id property value. Membership row ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the joinedAt property value. The joinedAt property
     * @param ApiMember_joinedAt|null $value Value to set for the joinedAt property.
    */
    public function setJoinedAt(?ApiMember_joinedAt $value): void {
        $this->joinedAt = $value;
    }

    /**
     * Sets the role property value. Role label within the team or organization.
     * @param string|null $value Value to set for the role property.
    */
    public function setRole(?string $value): void {
        $this->role = $value;
    }

    /**
     * Sets the user property value. API-safe public user profile.
     * @param ApiUserProfile|null $value Value to set for the user property.
    */
    public function setUser(?ApiUserProfile $value): void {
        $this->user = $value;
    }

}
