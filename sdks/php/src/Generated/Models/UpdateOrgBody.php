<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Fields to update on the organization. All optional.
*/
class UpdateOrgBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $description The description property
    */
    private ?string $description = null;
    
    /**
     * @var bool|null $isPublic The isPublic property
    */
    private ?bool $isPublic = null;
    
    /**
     * @var string|null $name The name property
    */
    private ?string $name = null;
    
    /**
     * @var UpdateOrgBody_profileVisibility|null $profileVisibility The profileVisibility property
    */
    private ?UpdateOrgBody_profileVisibility $profileVisibility = null;
    
    /**
     * @var string|null $tag The tag property
    */
    private ?string $tag = null;
    
    /**
     * Instantiates a new UpdateOrgBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpdateOrgBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpdateOrgBody {
        return new UpdateOrgBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the description property value. The description property
     * @return string|null
    */
    public function getDescription(): ?string {
        return $this->description;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'description' => fn(ParseNode $n) => $o->setDescription($n->getStringValue()),
            'isPublic' => fn(ParseNode $n) => $o->setIsPublic($n->getBooleanValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'profileVisibility' => fn(ParseNode $n) => $o->setProfileVisibility($n->getEnumValue(UpdateOrgBody_profileVisibility::class)),
            'tag' => fn(ParseNode $n) => $o->setTag($n->getStringValue()),
        ];
    }

    /**
     * Gets the isPublic property value. The isPublic property
     * @return bool|null
    */
    public function getIsPublic(): ?bool {
        return $this->isPublic;
    }

    /**
     * Gets the name property value. The name property
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the profileVisibility property value. The profileVisibility property
     * @return UpdateOrgBody_profileVisibility|null
    */
    public function getProfileVisibility(): ?UpdateOrgBody_profileVisibility {
        return $this->profileVisibility;
    }

    /**
     * Gets the tag property value. The tag property
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
        $writer->writeStringValue('description', $this->getDescription());
        $writer->writeBooleanValue('isPublic', $this->getIsPublic());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeEnumValue('profileVisibility', $this->getProfileVisibility());
        $writer->writeStringValue('tag', $this->getTag());
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
     * Sets the description property value. The description property
     * @param string|null $value Value to set for the description property.
    */
    public function setDescription(?string $value): void {
        $this->description = $value;
    }

    /**
     * Sets the isPublic property value. The isPublic property
     * @param bool|null $value Value to set for the isPublic property.
    */
    public function setIsPublic(?bool $value): void {
        $this->isPublic = $value;
    }

    /**
     * Sets the name property value. The name property
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the profileVisibility property value. The profileVisibility property
     * @param UpdateOrgBody_profileVisibility|null $value Value to set for the profileVisibility property.
    */
    public function setProfileVisibility(?UpdateOrgBody_profileVisibility $value): void {
        $this->profileVisibility = $value;
    }

    /**
     * Sets the tag property value. The tag property
     * @param string|null $value Value to set for the tag property.
    */
    public function setTag(?string $value): void {
        $this->tag = $value;
    }

}
