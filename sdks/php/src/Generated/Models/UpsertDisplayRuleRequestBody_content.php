<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class UpsertDisplayRuleRequestBody_content implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var array<UpsertDisplayRuleRequestBody_content_sections>|null $sections The sections property
    */
    private ?array $sections = null;
    
    /**
     * Instantiates a new UpsertDisplayRuleRequestBody_content and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpsertDisplayRuleRequestBody_content
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpsertDisplayRuleRequestBody_content {
        return new UpsertDisplayRuleRequestBody_content();
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
            'sections' => fn(ParseNode $n) => $o->setSections($n->getCollectionOfObjectValues([UpsertDisplayRuleRequestBody_content_sections::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the sections property value. The sections property
     * @return array<UpsertDisplayRuleRequestBody_content_sections>|null
    */
    public function getSections(): ?array {
        return $this->sections;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeCollectionOfObjectValues('sections', $this->getSections());
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
     * Sets the sections property value. The sections property
     * @param array<UpsertDisplayRuleRequestBody_content_sections>|null $value Value to set for the sections property.
    */
    public function setSections(?array $value): void {
        $this->sections = $value;
    }

}
