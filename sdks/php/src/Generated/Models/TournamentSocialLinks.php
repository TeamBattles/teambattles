<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\AdditionalDataHolder;
use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Organizer social links.
*/
class TournamentSocialLinks implements AdditionalDataHolder, Parsable 
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
     * @var string|null $instagram The instagram property
    */
    private ?string $instagram = null;
    
    /**
     * @var string|null $tiktok The tiktok property
    */
    private ?string $tiktok = null;
    
    /**
     * @var string|null $twitch The twitch property
    */
    private ?string $twitch = null;
    
    /**
     * @var string|null $website The website property
    */
    private ?string $website = null;
    
    /**
     * @var string|null $x The x property
    */
    private ?string $x = null;
    
    /**
     * @var string|null $youtube The youtube property
    */
    private ?string $youtube = null;
    
    /**
     * Instantiates a new TournamentSocialLinks and sets the default values.
    */
    public function __construct() {
        $this->setAdditionalData([]);
    }

    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentSocialLinks
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentSocialLinks {
        return new TournamentSocialLinks();
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
            'instagram' => fn(ParseNode $n) => $o->setInstagram($n->getStringValue()),
            'tiktok' => fn(ParseNode $n) => $o->setTiktok($n->getStringValue()),
            'twitch' => fn(ParseNode $n) => $o->setTwitch($n->getStringValue()),
            'website' => fn(ParseNode $n) => $o->setWebsite($n->getStringValue()),
            'x' => fn(ParseNode $n) => $o->setX($n->getStringValue()),
            'youtube' => fn(ParseNode $n) => $o->setYoutube($n->getStringValue()),
        ];
    }

    /**
     * Gets the instagram property value. The instagram property
     * @return string|null
    */
    public function getInstagram(): ?string {
        return $this->instagram;
    }

    /**
     * Gets the tiktok property value. The tiktok property
     * @return string|null
    */
    public function getTiktok(): ?string {
        return $this->tiktok;
    }

    /**
     * Gets the twitch property value. The twitch property
     * @return string|null
    */
    public function getTwitch(): ?string {
        return $this->twitch;
    }

    /**
     * Gets the website property value. The website property
     * @return string|null
    */
    public function getWebsite(): ?string {
        return $this->website;
    }

    /**
     * Gets the x property value. The x property
     * @return string|null
    */
    public function getX(): ?string {
        return $this->x;
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
        $writer->writeStringValue('instagram', $this->getInstagram());
        $writer->writeStringValue('tiktok', $this->getTiktok());
        $writer->writeStringValue('twitch', $this->getTwitch());
        $writer->writeStringValue('website', $this->getWebsite());
        $writer->writeStringValue('x', $this->getX());
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
     * Sets the instagram property value. The instagram property
     * @param string|null $value Value to set for the instagram property.
    */
    public function setInstagram(?string $value): void {
        $this->instagram = $value;
    }

    /**
     * Sets the tiktok property value. The tiktok property
     * @param string|null $value Value to set for the tiktok property.
    */
    public function setTiktok(?string $value): void {
        $this->tiktok = $value;
    }

    /**
     * Sets the twitch property value. The twitch property
     * @param string|null $value Value to set for the twitch property.
    */
    public function setTwitch(?string $value): void {
        $this->twitch = $value;
    }

    /**
     * Sets the website property value. The website property
     * @param string|null $value Value to set for the website property.
    */
    public function setWebsite(?string $value): void {
        $this->website = $value;
    }

    /**
     * Sets the x property value. The x property
     * @param string|null $value Value to set for the x property.
    */
    public function setX(?string $value): void {
        $this->x = $value;
    }

    /**
     * Sets the youtube property value. The youtube property
     * @param string|null $value Value to set for the youtube property.
    */
    public function setYoutube(?string $value): void {
        $this->youtube = $value;
    }

}
