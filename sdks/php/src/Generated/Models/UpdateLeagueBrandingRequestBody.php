<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Updates league profile branding and public metadata.
*/
class UpdateLeagueBrandingRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $avatarStorageId Convex storage ID for the league avatar.
    */
    private ?string $avatarStorageId = null;
    
    /**
     * @var string|null $bannerStorageId Convex storage ID for the league banner.
    */
    private ?string $bannerStorageId = null;
    
    /**
     * @var string|null $description The description property
    */
    private ?string $description = null;
    
    /**
     * @var string|null $name The name property
    */
    private ?string $name = null;
    
    /**
     * @var string|null $profileThemeId The profileThemeId property
    */
    private ?string $profileThemeId = null;
    
    /**
     * @var LeagueBrandingSocials|null $socials The socials property
    */
    private ?LeagueBrandingSocials $socials = null;
    
    /**
     * Instantiates a new UpdateLeagueBrandingRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpdateLeagueBrandingRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpdateLeagueBrandingRequestBody {
        return new UpdateLeagueBrandingRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the avatarStorageId property value. Convex storage ID for the league avatar.
     * @return string|null
    */
    public function getAvatarStorageId(): ?string {
        return $this->avatarStorageId;
    }

    /**
     * Gets the bannerStorageId property value. Convex storage ID for the league banner.
     * @return string|null
    */
    public function getBannerStorageId(): ?string {
        return $this->bannerStorageId;
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
            'avatarStorageId' => fn(ParseNode $n) => $o->setAvatarStorageId($n->getStringValue()),
            'bannerStorageId' => fn(ParseNode $n) => $o->setBannerStorageId($n->getStringValue()),
            'description' => fn(ParseNode $n) => $o->setDescription($n->getStringValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'profileThemeId' => fn(ParseNode $n) => $o->setProfileThemeId($n->getStringValue()),
            'socials' => fn(ParseNode $n) => $o->setSocials($n->getObjectValue([LeagueBrandingSocials::class, 'createFromDiscriminatorValue'])),
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
     * Gets the profileThemeId property value. The profileThemeId property
     * @return string|null
    */
    public function getProfileThemeId(): ?string {
        return $this->profileThemeId;
    }

    /**
     * Gets the socials property value. The socials property
     * @return LeagueBrandingSocials|null
    */
    public function getSocials(): ?LeagueBrandingSocials {
        return $this->socials;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('avatarStorageId', $this->getAvatarStorageId());
        $writer->writeStringValue('bannerStorageId', $this->getBannerStorageId());
        $writer->writeStringValue('description', $this->getDescription());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeStringValue('profileThemeId', $this->getProfileThemeId());
        $writer->writeObjectValue('socials', $this->getSocials());
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
     * Sets the avatarStorageId property value. Convex storage ID for the league avatar.
     * @param string|null $value Value to set for the avatarStorageId property.
    */
    public function setAvatarStorageId(?string $value): void {
        $this->avatarStorageId = $value;
    }

    /**
     * Sets the bannerStorageId property value. Convex storage ID for the league banner.
     * @param string|null $value Value to set for the bannerStorageId property.
    */
    public function setBannerStorageId(?string $value): void {
        $this->bannerStorageId = $value;
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
     * Sets the profileThemeId property value. The profileThemeId property
     * @param string|null $value Value to set for the profileThemeId property.
    */
    public function setProfileThemeId(?string $value): void {
        $this->profileThemeId = $value;
    }

    /**
     * Sets the socials property value. The socials property
     * @param LeagueBrandingSocials|null $value Value to set for the socials property.
    */
    public function setSocials(?LeagueBrandingSocials $value): void {
        $this->socials = $value;
    }

}
