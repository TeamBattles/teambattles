<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Fields to update on the team. All optional.
*/
class UpdateTeamBody implements AdditionalDataHolder, Parsable 
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
     * @var string|null $name The name property
    */
    private ?string $name = null;
    
    /**
     * @var string|null $platform The platform property
    */
    private ?string $platform = null;
    
    /**
     * @var UpdateTeamBody_profileVisibility|null $profileVisibility The profileVisibility property
    */
    private ?UpdateTeamBody_profileVisibility $profileVisibility = null;
    
    /**
     * @var UpdateTeamBody_region|null $region The region property
    */
    private ?UpdateTeamBody_region $region = null;
    
    /**
     * @var string|null $tag The tag property
    */
    private ?string $tag = null;
    
    /**
     * Instantiates a new UpdateTeamBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpdateTeamBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpdateTeamBody {
        return new UpdateTeamBody();
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
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'platform' => fn(ParseNode $n) => $o->setPlatform($n->getStringValue()),
            'profileVisibility' => fn(ParseNode $n) => $o->setProfileVisibility($n->getEnumValue(UpdateTeamBody_profileVisibility::class)),
            'region' => fn(ParseNode $n) => $o->setRegion($n->getEnumValue(UpdateTeamBody_region::class)),
            'tag' => fn(ParseNode $n) => $o->setTag($n->getStringValue()),
        ];
    }

    /**
     * Gets the name property value. The name property
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the platform property value. The platform property
     * @return string|null
    */
    public function getPlatform(): ?string {
        return $this->platform;
    }

    /**
     * Gets the profileVisibility property value. The profileVisibility property
     * @return UpdateTeamBody_profileVisibility|null
    */
    public function getProfileVisibility(): ?UpdateTeamBody_profileVisibility {
        return $this->profileVisibility;
    }

    /**
     * Gets the region property value. The region property
     * @return UpdateTeamBody_region|null
    */
    public function getRegion(): ?UpdateTeamBody_region {
        return $this->region;
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
        $writer->writeStringValue('name', $this->getName());
        $writer->writeStringValue('platform', $this->getPlatform());
        $writer->writeEnumValue('profileVisibility', $this->getProfileVisibility());
        $writer->writeEnumValue('region', $this->getRegion());
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
     * Sets the name property value. The name property
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the platform property value. The platform property
     * @param string|null $value Value to set for the platform property.
    */
    public function setPlatform(?string $value): void {
        $this->platform = $value;
    }

    /**
     * Sets the profileVisibility property value. The profileVisibility property
     * @param UpdateTeamBody_profileVisibility|null $value Value to set for the profileVisibility property.
    */
    public function setProfileVisibility(?UpdateTeamBody_profileVisibility $value): void {
        $this->profileVisibility = $value;
    }

    /**
     * Sets the region property value. The region property
     * @param UpdateTeamBody_region|null $value Value to set for the region property.
    */
    public function setRegion(?UpdateTeamBody_region $value): void {
        $this->region = $value;
    }

    /**
     * Sets the tag property value. The tag property
     * @param string|null $value Value to set for the tag property.
    */
    public function setTag(?string $value): void {
        $this->tag = $value;
    }

}
