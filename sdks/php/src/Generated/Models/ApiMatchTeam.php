<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Team summary embedded in SP-2 match reads.
*/
class ApiMatchTeam implements Parsable 
{
    /**
     * @var ApiMatchTeam_avatarUrl|null $avatarUrl Team avatar URL.
    */
    private ?ApiMatchTeam_avatarUrl $avatarUrl = null;
    
    /**
     * @var string|null $id Team ID.
    */
    private ?string $id = null;
    
    /**
     * @var string|null $name Team name.
    */
    private ?string $name = null;
    
    /**
     * @var ApiMatchTeam_score|null $score The score property
    */
    private ?ApiMatchTeam_score $score = null;
    
    /**
     * @var string|null $tag Team tag (short identifier).
    */
    private ?string $tag = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiMatchTeam
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiMatchTeam {
        return new ApiMatchTeam();
    }

    /**
     * Gets the avatarUrl property value. Team avatar URL.
     * @return ApiMatchTeam_avatarUrl|null
    */
    public function getAvatarUrl(): ?ApiMatchTeam_avatarUrl {
        return $this->avatarUrl;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'avatarUrl' => fn(ParseNode $n) => $o->setAvatarUrl($n->getObjectValue([ApiMatchTeam_avatarUrl::class, 'createFromDiscriminatorValue'])),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'score' => fn(ParseNode $n) => $o->setScore($n->getObjectValue([ApiMatchTeam_score::class, 'createFromDiscriminatorValue'])),
            'tag' => fn(ParseNode $n) => $o->setTag($n->getStringValue()),
        ];
    }

    /**
     * Gets the id property value. Team ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the name property value. Team name.
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the score property value. The score property
     * @return ApiMatchTeam_score|null
    */
    public function getScore(): ?ApiMatchTeam_score {
        return $this->score;
    }

    /**
     * Gets the tag property value. Team tag (short identifier).
     * @return string|null
    */
    public function getTag(): ?string {
        return $this->tag;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('avatarUrl', $this->getAvatarUrl());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeObjectValue('score', $this->getScore());
        $writer->writeStringValue('tag', $this->getTag());
    }

    /**
     * Sets the avatarUrl property value. Team avatar URL.
     * @param ApiMatchTeam_avatarUrl|null $value Value to set for the avatarUrl property.
    */
    public function setAvatarUrl(?ApiMatchTeam_avatarUrl $value): void {
        $this->avatarUrl = $value;
    }

    /**
     * Sets the id property value. Team ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the name property value. Team name.
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the score property value. The score property
     * @param ApiMatchTeam_score|null $value Value to set for the score property.
    */
    public function setScore(?ApiMatchTeam_score $value): void {
        $this->score = $value;
    }

    /**
     * Sets the tag property value. Team tag (short identifier).
     * @param string|null $value Value to set for the tag property.
    */
    public function setTag(?string $value): void {
        $this->tag = $value;
    }

}
