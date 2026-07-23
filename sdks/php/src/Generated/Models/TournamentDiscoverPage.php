<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Serialization\Parsable;
use Microsoft\Kiota\Abstractions\Serialization\ParseNode;
use Microsoft\Kiota\Abstractions\Serialization\SerializationWriter;

/**
 * A page of publicly listed tournaments, featured entries first.
*/
class TournamentDiscoverPage implements Parsable 
{
    /**
     * @var int|null $count Number of tournaments in this page.
    */
    private ?int $count = null;
    
    /**
     * @var int|null $limit Echo of the applied page size.
    */
    private ?int $limit = null;
    
    /**
     * @var int|null $page Echo of the requested 1-based page.
    */
    private ?int $page = null;
    
    /**
     * @var string|null $timestamp Response generation time (ISO 8601).
    */
    private ?string $timestamp = null;
    
    /**
     * @var int|null $total Total tournaments matching the filters.
    */
    private ?int $total = null;
    
    /**
     * @var array<TournamentSummary>|null $tournaments Tournaments on this page.
    */
    private ?array $tournaments = null;
    
    /**
     * Creates a new instance of the appropriate class based on discriminator value
     * @param ParseNode $parseNode The parse node to use to read the discriminator value and create the object
     * @return TournamentDiscoverPage
    */
    public static function createFromDiscriminatorValue(ParseNode $parseNode): TournamentDiscoverPage {
        return new TournamentDiscoverPage();
    }

    /**
     * Gets the count property value. Number of tournaments in this page.
     * @return int|null
    */
    public function getCount(): ?int {
        return $this->count;
    }

    /**
     * The deserialization information for the current model
     * @return array<string, callable(ParseNode): void>
    */
    public function getFieldDeserializers(): array {
        $o = $this;
        return  [
            'count' => fn(ParseNode $n) => $o->setCount($n->getIntegerValue()),
            'limit' => fn(ParseNode $n) => $o->setLimit($n->getIntegerValue()),
            'page' => fn(ParseNode $n) => $o->setPage($n->getIntegerValue()),
            'timestamp' => fn(ParseNode $n) => $o->setTimestamp($n->getStringValue()),
            'total' => fn(ParseNode $n) => $o->setTotal($n->getIntegerValue()),
            'tournaments' => fn(ParseNode $n) => $o->setTournaments($n->getCollectionOfObjectValues([TournamentSummary::class, 'createFromDiscriminatorValue'])),
        ];
    }

    /**
     * Gets the limit property value. Echo of the applied page size.
     * @return int|null
    */
    public function getLimit(): ?int {
        return $this->limit;
    }

    /**
     * Gets the page property value. Echo of the requested 1-based page.
     * @return int|null
    */
    public function getPage(): ?int {
        return $this->page;
    }

    /**
     * Gets the timestamp property value. Response generation time (ISO 8601).
     * @return string|null
    */
    public function getTimestamp(): ?string {
        return $this->timestamp;
    }

    /**
     * Gets the total property value. Total tournaments matching the filters.
     * @return int|null
    */
    public function getTotal(): ?int {
        return $this->total;
    }

    /**
     * Gets the tournaments property value. Tournaments on this page.
     * @return array<TournamentSummary>|null
    */
    public function getTournaments(): ?array {
        return $this->tournaments;
    }

    /**
     * Serializes information the current object
     * @param SerializationWriter $writer Serialization writer to use to serialize this model
    */
    public function serialize(SerializationWriter $writer): void {
        $writer->writeIntegerValue('count', $this->getCount());
        $writer->writeIntegerValue('limit', $this->getLimit());
        $writer->writeIntegerValue('page', $this->getPage());
        $writer->writeStringValue('timestamp', $this->getTimestamp());
        $writer->writeIntegerValue('total', $this->getTotal());
        $writer->writeCollectionOfObjectValues('tournaments', $this->getTournaments());
    }

    /**
     * Sets the count property value. Number of tournaments in this page.
     * @param int|null $value Value to set for the count property.
    */
    public function setCount(?int $value): void {
        $this->count = $value;
    }

    /**
     * Sets the limit property value. Echo of the applied page size.
     * @param int|null $value Value to set for the limit property.
    */
    public function setLimit(?int $value): void {
        $this->limit = $value;
    }

    /**
     * Sets the page property value. Echo of the requested 1-based page.
     * @param int|null $value Value to set for the page property.
    */
    public function setPage(?int $value): void {
        $this->page = $value;
    }

    /**
     * Sets the timestamp property value. Response generation time (ISO 8601).
     * @param string|null $value Value to set for the timestamp property.
    */
    public function setTimestamp(?string $value): void {
        $this->timestamp = $value;
    }

    /**
     * Sets the total property value. Total tournaments matching the filters.
     * @param int|null $value Value to set for the total property.
    */
    public function setTotal(?int $value): void {
        $this->total = $value;
    }

    /**
     * Sets the tournaments property value. Tournaments on this page.
     * @param array<TournamentSummary>|null $value Value to set for the tournaments property.
    */
    public function setTournaments(?array $value): void {
        $this->tournaments = $value;
    }

}
