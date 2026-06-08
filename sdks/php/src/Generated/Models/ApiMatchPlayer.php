<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Player row for a participant-gated match.
*/
class ApiMatchPlayer implements Parsable 
{
    /**
     * @var ApiMatchPlayer_attendanceStatus|null $attendanceStatus The attendanceStatus property
    */
    private ?ApiMatchPlayer_attendanceStatus $attendanceStatus = null;
    
    /**
     * @var ApiMatchPlayer_avatarUrl|null $avatarUrl The avatarUrl property
    */
    private ?ApiMatchPlayer_avatarUrl $avatarUrl = null;
    
    /**
     * @var ApiMatchPlayer_checkedInAt|null $checkedInAt The checkedInAt property
    */
    private ?ApiMatchPlayer_checkedInAt $checkedInAt = null;
    
    /**
     * @var string|null $id The id property
    */
    private ?string $id = null;
    
    /**
     * @var bool|null $isCheckedIn The isCheckedIn property
    */
    private ?bool $isCheckedIn = null;
    
    /**
     * @var ApiMatchPlayer_name|null $name The name property
    */
    private ?ApiMatchPlayer_name $name = null;
    
    /**
     * @var ApiMatchPlayer_rosterType|null $rosterType The rosterType property
    */
    private ?ApiMatchPlayer_rosterType $rosterType = null;
    
    /**
     * @var string|null $teamId The teamId property
    */
    private ?string $teamId = null;
    
    /**
     * @var string|null $userId The userId property
    */
    private ?string $userId = null;
    
    /**
     * @var ApiMatchPlayer_username|null $username The username property
    */
    private ?ApiMatchPlayer_username $username = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMatchPlayer
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMatchPlayer {
        return new ApiMatchPlayer();
    }

    /**
     * Gets the attendanceStatus property value. The attendanceStatus property
     * @return ApiMatchPlayer_attendanceStatus|null
    */
    public function getAttendanceStatus(): ?ApiMatchPlayer_attendanceStatus {
        return $this->attendanceStatus;
    }

    /**
     * Gets the avatarUrl property value. The avatarUrl property
     * @return ApiMatchPlayer_avatarUrl|null
    */
    public function getAvatarUrl(): ?ApiMatchPlayer_avatarUrl {
        return $this->avatarUrl;
    }

    /**
     * Gets the checkedInAt property value. The checkedInAt property
     * @return ApiMatchPlayer_checkedInAt|null
    */
    public function getCheckedInAt(): ?ApiMatchPlayer_checkedInAt {
        return $this->checkedInAt;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'attendanceStatus' => fn(ParseNode $n) => $o->setAttendanceStatus($n->getEnumValue(ApiMatchPlayer_attendanceStatus::class)),
            'avatarUrl' => fn(ParseNode $n) => $o->setAvatarUrl($n->getObjectValue([ApiMatchPlayer_avatarUrl::class, 'createFromDiscriminatorValue'])),
            'checkedInAt' => fn(ParseNode $n) => $o->setCheckedInAt($n->getObjectValue([ApiMatchPlayer_checkedInAt::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'isCheckedIn' => fn(ParseNode $n) => $o->setIsCheckedIn($n->getBooleanValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getObjectValue([ApiMatchPlayer_name::class, 'createFromDiscriminatorValue'])),
            'rosterType' => fn(ParseNode $n) => $o->setRosterType($n->getEnumValue(ApiMatchPlayer_rosterType::class)),
            'teamId' => fn(ParseNode $n) => $o->setTeamId($n->getStringValue()),
            'userId' => fn(ParseNode $n) => $o->setUserId($n->getStringValue()),
            'username' => fn(ParseNode $n) => $o->setUsername($n->getObjectValue([ApiMatchPlayer_username::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the id property value. The id property
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the isCheckedIn property value. The isCheckedIn property
     * @return bool|null
    */
    public function getIsCheckedIn(): ?bool {
        return $this->isCheckedIn;
    }

    /**
     * Gets the name property value. The name property
     * @return ApiMatchPlayer_name|null
    */
    public function getName(): ?ApiMatchPlayer_name {
        return $this->name;
    }

    /**
     * Gets the rosterType property value. The rosterType property
     * @return ApiMatchPlayer_rosterType|null
    */
    public function getRosterType(): ?ApiMatchPlayer_rosterType {
        return $this->rosterType;
    }

    /**
     * Gets the teamId property value. The teamId property
     * @return string|null
    */
    public function getTeamId(): ?string {
        return $this->teamId;
    }

    /**
     * Gets the userId property value. The userId property
     * @return string|null
    */
    public function getUserId(): ?string {
        return $this->userId;
    }

    /**
     * Gets the username property value. The username property
     * @return ApiMatchPlayer_username|null
    */
    public function getUsername(): ?ApiMatchPlayer_username {
        return $this->username;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeEnumValue('attendanceStatus', $this->getAttendanceStatus());
        $writer->writeObjectValue('avatarUrl', $this->getAvatarUrl());
        $writer->writeObjectValue('checkedInAt', $this->getCheckedInAt());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeBooleanValue('isCheckedIn', $this->getIsCheckedIn());
        $writer->writeObjectValue('name', $this->getName());
        $writer->writeEnumValue('rosterType', $this->getRosterType());
        $writer->writeStringValue('teamId', $this->getTeamId());
        $writer->writeStringValue('userId', $this->getUserId());
        $writer->writeObjectValue('username', $this->getUsername());
    }

    /**
     * Sets the attendanceStatus property value. The attendanceStatus property
     * @param ApiMatchPlayer_attendanceStatus|null $value Value to set for the attendanceStatus property.
    */
    public function setAttendanceStatus(?ApiMatchPlayer_attendanceStatus $value): void {
        $this->attendanceStatus = $value;
    }

    /**
     * Sets the avatarUrl property value. The avatarUrl property
     * @param ApiMatchPlayer_avatarUrl|null $value Value to set for the avatarUrl property.
    */
    public function setAvatarUrl(?ApiMatchPlayer_avatarUrl $value): void {
        $this->avatarUrl = $value;
    }

    /**
     * Sets the checkedInAt property value. The checkedInAt property
     * @param ApiMatchPlayer_checkedInAt|null $value Value to set for the checkedInAt property.
    */
    public function setCheckedInAt(?ApiMatchPlayer_checkedInAt $value): void {
        $this->checkedInAt = $value;
    }

    /**
     * Sets the id property value. The id property
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the isCheckedIn property value. The isCheckedIn property
     * @param bool|null $value Value to set for the isCheckedIn property.
    */
    public function setIsCheckedIn(?bool $value): void {
        $this->isCheckedIn = $value;
    }

    /**
     * Sets the name property value. The name property
     * @param ApiMatchPlayer_name|null $value Value to set for the name property.
    */
    public function setName(?ApiMatchPlayer_name $value): void {
        $this->name = $value;
    }

    /**
     * Sets the rosterType property value. The rosterType property
     * @param ApiMatchPlayer_rosterType|null $value Value to set for the rosterType property.
    */
    public function setRosterType(?ApiMatchPlayer_rosterType $value): void {
        $this->rosterType = $value;
    }

    /**
     * Sets the teamId property value. The teamId property
     * @param string|null $value Value to set for the teamId property.
    */
    public function setTeamId(?string $value): void {
        $this->teamId = $value;
    }

    /**
     * Sets the userId property value. The userId property
     * @param string|null $value Value to set for the userId property.
    */
    public function setUserId(?string $value): void {
        $this->userId = $value;
    }

    /**
     * Sets the username property value. The username property
     * @param ApiMatchPlayer_username|null $value Value to set for the username property.
    */
    public function setUsername(?ApiMatchPlayer_username $value): void {
        $this->username = $value;
    }

}
