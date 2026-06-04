<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A single version of a Twitch chat badge.
*/
class TwitchBadgeVersion implements Parsable 
{
    /**
     * @var string|null $click_action Optional click action identifier.
    */
    private ?string $click_action = null;
    
    /**
     * @var string|null $click_url Optional URL opened when the badge is clicked.
    */
    private ?string $click_url = null;
    
    /**
     * @var string|null $description Human-readable badge description.
    */
    private ?string $description = null;
    
    /**
     * @var string|null $id Badge version id (e.g. tier level or numeric id).
    */
    private ?string $id = null;
    
    /**
     * @var string|null $image_url_1x Badge image URL at 1x resolution.
    */
    private ?string $image_url_1x = null;
    
    /**
     * @var string|null $image_url_2x Badge image URL at 2x resolution.
    */
    private ?string $image_url_2x = null;
    
    /**
     * @var string|null $image_url_4x Badge image URL at 4x resolution.
    */
    private ?string $image_url_4x = null;
    
    /**
     * @var string|null $title Human-readable badge title.
    */
    private ?string $title = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TwitchBadgeVersion
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TwitchBadgeVersion {
        return new TwitchBadgeVersion();
    }

    /**
     * Gets the click_action property value. Optional click action identifier.
     * @return string|null
    */
    public function getClickAction(): ?string {
        return $this->click_action;
    }

    /**
     * Gets the click_url property value. Optional URL opened when the badge is clicked.
     * @return string|null
    */
    public function getClickUrl(): ?string {
        return $this->click_url;
    }

    /**
     * Gets the description property value. Human-readable badge description.
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
            'click_action' => fn(ParseNode $n) => $o->setClickAction($n->getStringValue()),
            'click_url' => fn(ParseNode $n) => $o->setClickUrl($n->getStringValue()),
            'description' => fn(ParseNode $n) => $o->setDescription($n->getStringValue()),
            'id' => fn(ParseNode $n) => $o->setId($n->getStringValue()),
            'image_url_1x' => fn(ParseNode $n) => $o->setImageUrl1x($n->getStringValue()),
            'image_url_2x' => fn(ParseNode $n) => $o->setImageUrl2x($n->getStringValue()),
            'image_url_4x' => fn(ParseNode $n) => $o->setImageUrl4x($n->getStringValue()),
            'title' => fn(ParseNode $n) => $o->setTitle($n->getStringValue()),
        ];
    }

    /**
     * Gets the id property value. Badge version id (e.g. tier level or numeric id).
     * @return string|null
    */
    public function getId(): ?string {
        return $this->id;
    }

    /**
     * Gets the image_url_1x property value. Badge image URL at 1x resolution.
     * @return string|null
    */
    public function getImageUrl1x(): ?string {
        return $this->image_url_1x;
    }

    /**
     * Gets the image_url_2x property value. Badge image URL at 2x resolution.
     * @return string|null
    */
    public function getImageUrl2x(): ?string {
        return $this->image_url_2x;
    }

    /**
     * Gets the image_url_4x property value. Badge image URL at 4x resolution.
     * @return string|null
    */
    public function getImageUrl4x(): ?string {
        return $this->image_url_4x;
    }

    /**
     * Gets the title property value. Human-readable badge title.
     * @return string|null
    */
    public function getTitle(): ?string {
        return $this->title;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('click_action', $this->getClickAction());
        $writer->writeStringValue('click_url', $this->getClickUrl());
        $writer->writeStringValue('description', $this->getDescription());
        $writer->writeStringValue('id', $this->getId());
        $writer->writeStringValue('image_url_1x', $this->getImageUrl1x());
        $writer->writeStringValue('image_url_2x', $this->getImageUrl2x());
        $writer->writeStringValue('image_url_4x', $this->getImageUrl4x());
        $writer->writeStringValue('title', $this->getTitle());
    }

    /**
     * Sets the click_action property value. Optional click action identifier.
     * @param string|null $value Value to set for the click_action property.
    */
    public function setClickAction(?string $value): void {
        $this->click_action = $value;
    }

    /**
     * Sets the click_url property value. Optional URL opened when the badge is clicked.
     * @param string|null $value Value to set for the click_url property.
    */
    public function setClickUrl(?string $value): void {
        $this->click_url = $value;
    }

    /**
     * Sets the description property value. Human-readable badge description.
     * @param string|null $value Value to set for the description property.
    */
    public function setDescription(?string $value): void {
        $this->description = $value;
    }

    /**
     * Sets the id property value. Badge version id (e.g. tier level or numeric id).
     * @param string|null $value Value to set for the id property.
    */
    public function setId(?string $value): void {
        $this->id = $value;
    }

    /**
     * Sets the image_url_1x property value. Badge image URL at 1x resolution.
     * @param string|null $value Value to set for the image_url_1x property.
    */
    public function setImageUrl1x(?string $value): void {
        $this->image_url_1x = $value;
    }

    /**
     * Sets the image_url_2x property value. Badge image URL at 2x resolution.
     * @param string|null $value Value to set for the image_url_2x property.
    */
    public function setImageUrl2x(?string $value): void {
        $this->image_url_2x = $value;
    }

    /**
     * Sets the image_url_4x property value. Badge image URL at 4x resolution.
     * @param string|null $value Value to set for the image_url_4x property.
    */
    public function setImageUrl4x(?string $value): void {
        $this->image_url_4x = $value;
    }

    /**
     * Sets the title property value. Human-readable badge title.
     * @param string|null $value Value to set for the title property.
    */
    public function setTitle(?string $value): void {
        $this->title = $value;
    }

}
