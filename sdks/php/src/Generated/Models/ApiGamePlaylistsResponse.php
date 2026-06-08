<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * Game-scoped playlist response.
*/
class ApiGamePlaylistsResponse implements Parsable 
{
    /**
     * @var ApiGameCatalogEntry|null $game Static public game catalog entry.
    */
    private ?ApiGameCatalogEntry $game = null;
    
    /**
     * @var array<ApiGamePlaylist>|null $playlists The playlists property
    */
    private ?array $playlists = null;
    
    /**
     * @var string|null $timestamp The timestamp property
    */
    private ?string $timestamp = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return ApiGamePlaylistsResponse
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): ApiGamePlaylistsResponse {
        return new ApiGamePlaylistsResponse();
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'game' => fn(ParseNode $n) => $o->setGame($n->getObjectValue([ApiGameCatalogEntry::class, 'createFromDiscriminatorValue'])),
            'playlists' => fn(ParseNode $n) => $o->setPlaylists($n->getCollectionOfObjectValues([ApiGamePlaylist::class, 'createFromDiscriminatorValue'])),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
        ];
    }

    /**
     * Gets the game property value. Static public game catalog entry.
     * @return ApiGameCatalogEntry|null
    */
    public function getGame(): ?ApiGameCatalogEntry {
        return $this->game;
    }

    /**
     * Gets the playlists property value. The playlists property
     * @return array<ApiGamePlaylist>|null
    */
    public function getPlaylists(): ?array {
        return $this->playlists;
    }

    /**
     * Gets the timestamp property value. The timestamp property
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeObjectValue('game', $this->getGame());
        $writer->writeCollectionOfObjectValues('playlists', $this->getPlaylists());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
    }

    /**
     * Sets the game property value. Static public game catalog entry.
     * @param ApiGameCatalogEntry|null $value Value to set for the game property.
    */
    public function setGame(?ApiGameCatalogEntry $value): void {
        $this->game = $value;
    }

    /**
     * Sets the playlists property value. The playlists property
     * @param array<ApiGamePlaylist>|null $value Value to set for the playlists property.
    */
    public function setPlaylists(?array $value): void {
        $this->playlists = $value;
    }

    /**
     * Sets the timestamp property value. The timestamp property
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

}
