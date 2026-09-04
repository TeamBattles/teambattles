<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * One sponsor credit line.
*/
class TournamentSponsorTag implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $customPrefix Used only when prefix is CUSTOM.
    */
    private ?string $customPrefix = null;
    
    /**
     * @var string|null $logoStorageId Convex storage id for the sponsor logo, from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url is rejected with 400 error_image_blob_unbound. On an update, re-send the id already stored on each sponsor row you are not changing.
    */
    private ?string $logoStorageId = null;
    
    /**
     * @var string|null $name The name property
    */
    private ?string $name = null;
    
    /**
     * @var TournamentSponsorTag_prefix|null $prefix The prefix property
    */
    private ?TournamentSponsorTag_prefix $prefix = null;
    
    /**
     * @var string|null $url The url property
    */
    private ?string $url = null;
    
    /**
     * Instantiates a new TournamentSponsorTag and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentSponsorTag
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentSponsorTag {
        return new TournamentSponsorTag();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the customPrefix property value. Used only when prefix is CUSTOM.
     * @return string|null
    */
    public function getCustomPrefix(): ?string {
        return $this->customPrefix;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'customPrefix' => fn(ParseNode $n) => $o->setCustomPrefix($n->getStringValue()),
            'logoStorageId' => fn(ParseNode $n) => $o->setLogoStorageId($n->getStringValue()),
            'name' => fn(ParseNode $n) => $o->setName($n->getStringValue()),
            'prefix' => fn(ParseNode $n) => $o->setPrefix($n->getEnumValue(TournamentSponsorTag_prefix::class)),
            'url' => fn(ParseNode $n) => $o->setUrl($n->getStringValue()),
        ];
    }

    /**
     * Gets the logoStorageId property value. Convex storage id for the sponsor logo, from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url is rejected with 400 error_image_blob_unbound. On an update, re-send the id already stored on each sponsor row you are not changing.
     * @return string|null
    */
    public function getLogoStorageId(): ?string {
        return $this->logoStorageId;
    }

    /**
     * Gets the name property value. The name property
     * @return string|null
    */
    public function getName(): ?string {
        return $this->name;
    }

    /**
     * Gets the prefix property value. The prefix property
     * @return TournamentSponsorTag_prefix|null
    */
    public function getPrefix(): ?TournamentSponsorTag_prefix {
        return $this->prefix;
    }

    /**
     * Gets the url property value. The url property
     * @return string|null
    */
    public function getUrl(): ?string {
        return $this->url;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('customPrefix', $this->getCustomPrefix());
        $writer->writeStringValue('logoStorageId', $this->getLogoStorageId());
        $writer->writeStringValue('name', $this->getName());
        $writer->writeEnumValue('prefix', $this->getPrefix());
        $writer->writeStringValue('url', $this->getUrl());
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
     * Sets the customPrefix property value. Used only when prefix is CUSTOM.
     * @param string|null $value Value to set for the customPrefix property.
    */
    public function setCustomPrefix(?string $value): void {
        $this->customPrefix = $value;
    }

    /**
     * Sets the logoStorageId property value. Convex storage id for the sponsor logo, from POST /uploads/image with slot=avatar (max 1 MB). An id minted by POST /uploads/image-url is rejected with 400 error_image_blob_unbound. On an update, re-send the id already stored on each sponsor row you are not changing.
     * @param string|null $value Value to set for the logoStorageId property.
    */
    public function setLogoStorageId(?string $value): void {
        $this->logoStorageId = $value;
    }

    /**
     * Sets the name property value. The name property
     * @param string|null $value Value to set for the name property.
    */
    public function setName(?string $value): void {
        $this->name = $value;
    }

    /**
     * Sets the prefix property value. The prefix property
     * @param TournamentSponsorTag_prefix|null $value Value to set for the prefix property.
    */
    public function setPrefix(?TournamentSponsorTag_prefix $value): void {
        $this->prefix = $value;
    }

    /**
     * Sets the url property value. The url property
     * @param string|null $value Value to set for the url property.
    */
    public function setUrl(?string $value): void {
        $this->url = $value;
    }

}
