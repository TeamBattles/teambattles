<?php

namespace TeamBattles\Sdk\Generated\Orgs\Discover;

/**
 * Returns a neutral discovery list of active, public, non-disabled organizations. Results do not exclude organizations the API key owner belongs to and do not include join-request flags. Requires orgs.profile:read.
*/
class DiscoverRequestBuilderGetQueryParameters
{
    /**
     * @var int|null $limit
    */
    public ?int $limit = null;

    /**
     * @var string|null $search Optional organization name search.
    */
    public ?string $search = null;

    /**
     * Instantiates a new DiscoverRequestBuilderGetQueryParameters and sets the default values.
     * @param int|null $limit
     * @param string|null $search Optional organization name search.
    */
    public function __construct(?int $limit = null, ?string $search = null) {
        $this->limit = $limit;
        $this->search = $search;
    }

}
