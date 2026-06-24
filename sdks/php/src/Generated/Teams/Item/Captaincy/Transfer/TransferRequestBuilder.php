<?php

namespace TeamBattles\Sdk\Generated\Teams\Item\Captaincy\Transfer;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\TransferTeamCaptaincyBody;
use TeamBattles\Sdk\Generated\Models\TransferTeamCaptaincyResponse;

/**
 * Builds and executes requests for operations under /teams/{identifier}/captaincy/transfer
*/
class TransferRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new TransferRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/teams/{identifier}/captaincy/transfer');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Transfers team captaincy from the caller (key owner) to another active member, who becomes the new captain. The caller must currently be the team captain and is demoted to co-captain. Requires teams.roster:read-write.
     * @param TransferTeamCaptaincyBody $body Transfer team captaincy to another member.
     * @param TransferRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TransferTeamCaptaincyResponse|null>
     * @throws Exception
    */
    public function post(TransferTeamCaptaincyBody $body, ?TransferRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TransferTeamCaptaincyResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Transfers team captaincy from the caller (key owner) to another active member, who becomes the new captain. The caller must currently be the team captain and is demoted to co-captain. Requires teams.roster:read-write.
     * @param TransferTeamCaptaincyBody $body Transfer team captaincy to another member.
     * @param TransferRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(TransferTeamCaptaincyBody $body, ?TransferRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
