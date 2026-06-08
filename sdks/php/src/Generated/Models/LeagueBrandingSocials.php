<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

class LeagueBrandingSocials implements AdditionalDataHolder, Parsable 
{
    /**
     * @var array<string, mixed>|null $additionalData Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    */
    private ?array $additionalData = null;
    
    /**
     * @var string|null $discord The discord property
    */
    private ?string $discord = null;
    
    /**
     * @var string|null $twitch The twitch property
    */
    private ?string $twitch = null;
    
    /**
     * @var string|null $twitter The twitter property
    */
    private ?string $twitter = null;
    
    /**
     * @var string|null $website The website property
    */
    private ?string $website = null;
    
    /**
     * @var string|null $youtube The youtube property
    */
    private ?string $youtube = null;
    
    /**
     * Instantiates a new LeagueBrandingSocials and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return LeagueBrandingSocials
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): LeagueBrandingSocials {
        return new LeagueBrandingSocials();
    }

    /**
     * Gets the AdditionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
     * @return array<string, mixed>|null
    */
    public function getAdditionalData(): ?array {
        return $this->additionalData;
    }

    /**
     * Gets the discord property value. The discord property
     * @return string|null
    */
    public function getDiscord(): ?string {
        return $this->discord;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'discord' => fn(ParseNode $n) => $o->setDiscord($n->getStringValue()),
            'twitch' => fn(ParseNode $n) => $o->setTwitch($n->getStringValue()),
            'twitter' => fn(ParseNode $n) => $o->setTwitter($n->getStringValue()),
            'website' => fn(ParseNode $n) => $o->setWebsite($n->getStringValue()),
            'youtube' => fn(ParseNode $n) => $o->setYoutube($n->getStringValue()),
        ];
    }

    /**
     * Gets the twitch property value. The twitch property
     * @return string|null
    */
    public function getTwitch(): ?string {
        return $this->twitch;
    }

    /**
     * Gets the twitter property value. The twitter property
     * @return string|null
    */
    public function getTwitter(): ?string {
        return $this->twitter;
    }

    /**
     * Gets the website property value. The website property
     * @return string|null
    */
    public function getWebsite(): ?string {
        return $this->website;
    }

    /**
     * Gets the youtube property value. The youtube property
     * @return string|null
    */
    public function getYoutube(): ?string {
        return $this->youtube;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeStringValue('discord', $this->getDiscord());
        $writer->writeStringValue('twitch', $this->getTwitch());
        $writer->writeStringValue('twitter', $this->getTwitter());
        $writer->writeStringValue('website', $this->getWebsite());
        $writer->writeStringValue('youtube', $this->getYoutube());
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
     * Sets the discord property value. The discord property
     * @param string|null $value Value to set for the discord property.
    */
    public function setDiscord(?string $value): void {
        $this->discord = $value;
    }

    /**
     * Sets the twitch property value. The twitch property
     * @param string|null $value Value to set for the twitch property.
    */
    public function setTwitch(?string $value): void {
        $this->twitch = $value;
    }

    /**
     * Sets the twitter property value. The twitter property
     * @param string|null $value Value to set for the twitter property.
    */
    public function setTwitter(?string $value): void {
        $this->twitter = $value;
    }

    /**
     * Sets the website property value. The website property
     * @param string|null $value Value to set for the website property.
    */
    public function setWebsite(?string $value): void {
        $this->website = $value;
    }

    /**
     * Sets the youtube property value. The youtube property
     * @param string|null $value Value to set for the youtube property.
    */
    public function setYoutube(?string $value): void {
        $this->youtube = $value;
    }

}
