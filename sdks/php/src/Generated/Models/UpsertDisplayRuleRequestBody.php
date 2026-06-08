<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Creates or updates a display rule.
*/
class UpsertDisplayRuleRequestBody implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $category Display rule category.
    */
    private ?string $category = null;
    
    /**
     * @var string|null $categoryIcon The categoryIcon property
    */
    private ?string $categoryIcon = null;
    
    /**
     * @var float|null $categoryOrder The categoryOrder property
    */
    private ?float $categoryOrder = null;
    
    /**
     * @var UpsertDisplayRuleRequestBody_content|null $content The content property
    */
    private ?UpsertDisplayRuleRequestBody_content $content = null;
    
    /**
     * @var string|null $gameId Game ID whose display rule should change.
    */
    private ?string $gameId = null;
    
    /**
     * @var bool|null $isCustomCategory The isCustomCategory property
    */
    private ?bool $isCustomCategory = null;
    
    /**
     * @var bool|null $isOverride The isOverride property
    */
    private ?bool $isOverride = null;
    
    /**
     * @var UpsertDisplayRuleRequestBody_scope|null $scope The scope property
    */
    private ?UpsertDisplayRuleRequestBody_scope $scope = null;
    
    /**
     * Instantiates a new UpsertDisplayRuleRequestBody and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return UpsertDisplayRuleRequestBody
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): UpsertDisplayRuleRequestBody {
        return new UpsertDisplayRuleRequestBody();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the category property value. Display rule category.
     * @return string|null
    */
    public function getCategory(): ?string {
        return $this->category;
    }

    /**
     * Gets the categoryIcon property value. The categoryIcon property
     * @return string|null
    */
    public function getCategoryIcon(): ?string {
        return $this->categoryIcon;
    }

    /**
     * Gets the categoryOrder property value. The categoryOrder property
     * @return float|null
    */
    public function getCategoryOrder(): ?float {
        return $this->categoryOrder;
    }

    /**
     * Gets the content property value. The content property
     * @return UpsertDisplayRuleRequestBody_content|null
    */
    public function getContent(): ?UpsertDisplayRuleRequestBody_content {
        return $this->content;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'category' => fn(ParseNode $n) => $o->setCategory($n->getStringValue()),
            'categoryIcon' => fn(ParseNode $n) => $o->setCategoryIcon($n->getStringValue()),
            'categoryOrder' => fn(ParseNode $n) => $o->setCategoryOrder($n->getFloatValue()),
            'content' => fn(ParseNode $n) => $o->setContent($n->getObjectValue([UpsertDisplayRuleRequestBody_content::class, 'createFromDiscriminatorValue'])),
            'gameId' => fn(ParseNode $n) => $o->setGameId($n->getStringValue()),
            'isCustomCategory' => fn(ParseNode $n) => $o->setIsCustomCategory($n->getBooleanValue()),
            'isOverride' => fn(ParseNode $n) => $o->setIsOverride($n->getBooleanValue()),
            'scope' => fn(ParseNode $n) => $o->setScope($n->getObjectValue([UpsertDisplayRuleRequestBody_scope::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the gameId property value. Game ID whose display rule should change.
     * @return string|null
    */
    public function getGameId(): ?string {
        return $this->gameId;
    }

    /**
     * Gets the isCustomCategory property value. The isCustomCategory property
     * @return bool|null
    */
    public function getIsCustomCategory(): ?bool {
        return $this->isCustomCategory;
    }

    /**
     * Gets the isOverride property value. The isOverride property
     * @return bool|null
    */
    public function getIsOverride(): ?bool {
        return $this->isOverride;
    }

    /**
     * Gets the scope property value. The scope property
     * @return UpsertDisplayRuleRequestBody_scope|null
    */
    public function getScope(): ?UpsertDisplayRuleRequestBody_scope {
        return $this->scope;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('category', $this->getCategory());
        $writer->writeStringValue('categoryIcon', $this->getCategoryIcon());
        $writer->writeFloatValue('categoryOrder', $this->getCategoryOrder());
        $writer->writeObjectValue('content', $this->getContent());
        $writer->writeStringValue('gameId', $this->getGameId());
        $writer->writeBooleanValue('isCustomCategory', $this->getIsCustomCategory());
        $writer->writeBooleanValue('isOverride', $this->getIsOverride());
        $writer->writeObjectValue('scope', $this->getScope());
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
     * Sets the category property value. Display rule category.
     * @param string|null $value Value to set for the category property.
    */
    public function setCategory(?string $value): void {
        $this->category = $value;
    }

    /**
     * Sets the categoryIcon property value. The categoryIcon property
     * @param string|null $value Value to set for the categoryIcon property.
    */
    public function setCategoryIcon(?string $value): void {
        $this->categoryIcon = $value;
    }

    /**
     * Sets the categoryOrder property value. The categoryOrder property
     * @param float|null $value Value to set for the categoryOrder property.
    */
    public function setCategoryOrder(?float $value): void {
        $this->categoryOrder = $value;
    }

    /**
     * Sets the content property value. The content property
     * @param UpsertDisplayRuleRequestBody_content|null $value Value to set for the content property.
    */
    public function setContent(?UpsertDisplayRuleRequestBody_content $value): void {
        $this->content = $value;
    }

    /**
     * Sets the gameId property value. Game ID whose display rule should change.
     * @param string|null $value Value to set for the gameId property.
    */
    public function setGameId(?string $value): void {
        $this->gameId = $value;
    }

    /**
     * Sets the isCustomCategory property value. The isCustomCategory property
     * @param bool|null $value Value to set for the isCustomCategory property.
    */
    public function setIsCustomCategory(?bool $value): void {
        $this->isCustomCategory = $value;
    }

    /**
     * Sets the isOverride property value. The isOverride property
     * @param bool|null $value Value to set for the isOverride property.
    */
    public function setIsOverride(?bool $value): void {
        $this->isOverride = $value;
    }

    /**
     * Sets the scope property value. The scope property
     * @param UpsertDisplayRuleRequestBody_scope|null $value Value to set for the scope property.
    */
    public function setScope(?UpsertDisplayRuleRequestBody_scope $value): void {
        $this->scope = $value;
    }

}
