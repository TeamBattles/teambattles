<?php

namespace TeamBattles\Sdk\Generated\Users;

use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use TeamBattles\Sdk\Generated\Users\Item\WithIdentifierItemRequestBuilder;

/**
 * Builds and executes requests for operations under /users
*/
class UsersRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Gets an item from the TeamBattles/Sdk/Generated.users.item collection
     * @param string $identifier Username or Convex user ID.
     * @return WithIdentifierItemRequestBuilder
    */
    public function byIdentifier(string $identifier): WithIdentifierItemRequestBuilder {
        $urlTplParams = $this->pathParameters;
        $urlTplParams['identifier'] = $identifier;
        return new WithIdentifierItemRequestBuilder($urlTplParams, $this->requestAdapter);
    }

    /**
     * Instantiates a new UsersRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/users');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

}
