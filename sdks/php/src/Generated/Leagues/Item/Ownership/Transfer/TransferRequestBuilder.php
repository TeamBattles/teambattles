<?php

namespace TeamBattles\Sdk\Generated\Leagues\Item\Ownership\Transfer;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TransferLeagueOwnershipRequestBody;
use TeamBattles\Sdk\Generated\Models\TransferLeagueOwnershipResponse;

/**
 * Builds and executes requests for operations under /leagues/{identifier}/ownership/transfer
*/
class TransferRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new TransferRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/leagues/{identifier}/ownership/transfer');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Transfers league ownership to another staff member. Requires a league-operator key bound to the league and leagues.league_admin:read-write; Convex re-checks current OWNER authority.
     * @param TransferLeagueOwnershipRequestBody $body Transfers league ownership to an existing staff member.
     * @param TransferRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TransferLeagueOwnershipResponse|null>
     * @throws Exception
    */
    public function post(TransferLeagueOwnershipRequestBody $body, ?TransferRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '409' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TransferLeagueOwnershipResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Transfers league ownership to another staff member. Requires a league-operator key bound to the league and leagues.league_admin:read-write; Convex re-checks current OWNER authority.
     * @param TransferLeagueOwnershipRequestBody $body Transfers league ownership to an existing staff member.
     * @param TransferRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TransferLeagueOwnershipRequestBody $body, ?TransferRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::POST;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        $requestInfo->setContentFromParsable($this->requestAdapter, "application/json", $body);
        return $requestInfo;
    }

    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param string $rawUrl The raw URL to use for the request builder.
     * @return TransferRequestBuilder
    */
    public function withUrl(string $rawUrl): TransferRequestBuilder {
        return new TransferRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
