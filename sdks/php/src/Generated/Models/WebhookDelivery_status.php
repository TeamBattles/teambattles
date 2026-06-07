<?php

namespace TeamBattles\Sdk\Generated\Models;

use Microsoft\Kiota\Abstractions\Enum;

class WebhookDelivery_status extends Enum {
    public const PENDING = "pending";
    public const DELIVERING = "delivering";
    public const DELIVERED = "delivered";
    public const FAILED = "failed";
    public const DEAD_LETTERED = "dead_lettered";
}
