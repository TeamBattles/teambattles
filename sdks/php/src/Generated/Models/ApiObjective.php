<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Server-safe objective DTO. UI icon components are intentionally omitted.
*/
class ApiObjective implements Parsable 
{
    /**
     * @var string|null $completionRule Machine-readable completion rule.
    */
    private ?string $completionRule = null;
    
    /**
     * @var string|null $descriptionKey i18n key for the objective description.
    */
    private ?string $descriptionKey = null;
    
    /**
     * @var float|null $exp Experience awarded by this objective.
    */
    private ?float $exp = null;
    
    /**
     * @var string|null $id Objective definition ID.
    */
    private ?string $id = null;
    
    /**
     * @var string|null $scope Objective completion scope.
    */
    private ?string $scope = null;
    
    /**
     * @var string|null $titleKey i18n key for the objective title.
    */
    private ?string $titleKey = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiObjective
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiObjective {
        return new ApiObjective();
    }

    /**
     * Gets the completionRule property value. Machine-readable completion rule.
     * @return string|null
    */
    public function getCompletionRule(): ?string {
        return $this->completionRule;
    }

    /**
     * Gets the descriptionKey property value. i18n key for the objective description.
     * @return string|null
    */
    public function getDescriptionKey(): ?string {
        return $this->descriptionKey;
    }

    /**
     * Gets the exp property value. Experience awarded by this objective.
     * @return float|null
    */
    public function getExp(): ?float {
        return $this->exp;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'completionRule' => fn(ParseNode $n) => $o->setCompletionRule($n->getStringValue()),
            'descriptionKey' => fn(ParseNode $n) => $o->setDescriptionKey($n->getStringValue()),
            'exp' => fn(ParseNode $n) => $o->setExp($n->getFloatValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'scope' => fn(ParseNode $n) => $o->setScope($n->getStringValue()),
            'titleKey' => fn(ParseNode $n) => $o->setTitleKey($n->getStringValue()),
        ];
    }

    /**
     * Gets the id property value. Objective definition ID.
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the scope property value. Objective completion scope.
     * @return string|null
    */
    public function getScope(): ?string {
        return $this->scope;
    }

    /**
     * Gets the titleKey property value. i18n key for the objective title.
     * @return string|null
    */
    public function getTitleKey(): ?string {
        return $this->titleKey;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('completionRule', $this->getCompletionRule());
        $writer->writeStringValue('descriptionKey', $this->getDescriptionKey());
        $writer->writeFloatValue('exp', $this->getExp());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeStringValue('scope', $this->getScope());
        $writer->writeStringValue('titleKey', $this->getTitleKey());
    }

    /**
     * Sets the completionRule property value. Machine-readable completion rule.
     * @param string|null $value Value to set for the completionRule property.
    */
    public function setCompletionRule(?string $value): void {
        $this->completionRule = $value;
    }

    /**
     * Sets the descriptionKey property value. i18n key for the objective description.
     * @param string|null $value Value to set for the descriptionKey property.
    */
    public function setDescriptionKey(?string $value): void {
        $this->descriptionKey = $value;
    }

    /**
     * Sets the exp property value. Experience awarded by this objective.
     * @param float|null $value Value to set for the exp property.
    */
    public function setExp(?float $value): void {
        $this->exp = $value;
    }

    /**
     * Sets the id property value. Objective definition ID.
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the scope property value. Objective completion scope.
     * @param string|null $value Value to set for the scope property.
    */
    public function setScope(?string $value): void {
        $this->scope = $value;
    }

    /**
     * Sets the titleKey property value. i18n key for the objective title.
     * @param string|null $value Value to set for the titleKey property.
    */
    public function setTitleKey(?string $value): void {
        $this->titleKey = $value;
    }

}
