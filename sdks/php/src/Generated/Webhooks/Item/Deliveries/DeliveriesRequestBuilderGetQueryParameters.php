<?php

namespace TeamBattles\Sdk\Generated\Webhooks\Item\Deliveries;

/**
 * Returns the endpoint's delivery log, newest first, with native cursor pagination. Pass limit (1-100) and cursor query params. Requires the webhooks.manage permission and the webhooks feature.
*/
class DeliveriesRequestBuilderGetQueryParameters 
{
    /**
     * @var string|null $cursor Opaque continuation cursor from a prior page's continueCursor.
    */
    public ?string $cursor = null;
    
    /**
     * @var string|null $limit Page size 1-100 (default 25), enforced by the handler.
    */
    public ?string $limit = null;
    
    /**
     * Instantiates a new DeliveriesRequestBuilderGetQueryParameters and sets the default values.
     * @param string|null $cursor Opaque continuation cursor from a prior page's continueCursor.
     * @param string|null $limit Page size 1-100 (default 25), enforced by the handler.
    */
    public function __construct(?string $cursor = null, ?string $limit = null) {
        $this->cursor = $cursor;
        $this->limit = $limit;
    }

}
