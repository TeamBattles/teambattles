<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;
use Microsoft\Kiota\Abstractions\Types\TypeUtils;

/**
 * Creates a self-filed support ticket owned by the API key owner.
*/
class CreateTicketRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var CreateTicketRequestBody_category|null $category Support category. Entity-bound and staff-only categories are rejected.
    */
    private ?CreateTicketRequestBody_category $category = null;
    
    /**
     * @var string|null $description Initial message / description (max 2000 chars).
    */
    private ?string $description = null;
    
    /**
     * @var array<string>|null $images Optional storage IDs (from /uploads/image-url) to attach (max 10).
    */
    private ?array $images = null;
    
    /**
     * @var string|null $subject Ticket subject (max 150 chars).
    */
    private ?string $subject = null;
    
    /**
     * Instantiates a new CreateTicketRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return CreateTicketRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): CreateTicketRequestBody {
        return new CreateTicketRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the category property value. Support category. Entity-bound and staff-only categories are rejected.
     * @return CreateTicketRequestBody_category|null
    */
    public function getCategory(): ?CreateTicketRequestBody_category {
        return $this->category;
    }

    /**
     * Gets the description property value. Initial message / description (max 2000 chars).
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
            'category' => fn(ParseNode $n) => $o->setCategory($n->getEnumValue(CreateTicketRequestBody_category::class)),
            'description' => fn(ParseNode $n) => $o->setDescription($n->getStringValue()),
            'images' => function (ParseNode $n) {
                $val = $n->getCollectionOfPrimitiveValues();
                if (is_array($val)) {
                    TypeUtils::validateCollectionValues($val, 'string');
                }
                /** @var array<string>|null $val */
                $this->setImages($val);
            },
            'subject' => fn(ParseNode $n) => $o->setSubject($n->getStringValue()),
        ];
    }

    /**
     * Gets the images property value. Optional storage IDs (from /uploads/image-url) to attach (max 10).
     * @return array<string>|null
    */
    public function getImages(): ?array {
        return $this->images;
    }

    /**
     * Gets the subject property value. Ticket subject (max 150 chars).
     * @return string|null
    */
    public function getSubject(): ?string {
        return $this->subject;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeEnumValue('category', $this->getCategory());
        $writer->writeStringValue('description', $this->getDescription());
        $writer->writeCollectionOfPrimitiveValues('images', $this->getImages());
        $writer->writeStringValue('subject', $this->getSubject());
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
     * Sets the category property value. Support category. Entity-bound and staff-only categories are rejected.
     * @param CreateTicketRequestBody_category|null $value Value to set for the category property.
    */
    public function setCategory(?CreateTicketRequestBody_category $value): void {
        $this->category = $value;
    }

    /**
     * Sets the description property value. Initial message / description (max 2000 chars).
     * @param string|null $value Value to set for the description property.
    */
    public function setDescription(?string $value): void {
        $this->description = $value;
    }

    /**
     * Sets the images property value. Optional storage IDs (from /uploads/image-url) to attach (max 10).
     * @param array<string>|null $value Value to set for the images property.
    */
    public function setImages(?array $value): void {
        $this->images = $value;
    }

    /**
     * Sets the subject property value. Ticket subject (max 150 chars).
     * @param string|null $value Value to set for the subject property.
    */
    public function setSubject(?string $value): void {
        $this->subject = $value;
    }

}
