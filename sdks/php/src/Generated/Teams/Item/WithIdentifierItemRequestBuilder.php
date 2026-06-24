<?php

namespace TeamBattles\Sdk\Generated\Teams\Item;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\DisbandTeamResponse;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\UpdateTeamBody;
use TeamBattles\Sdk\Generated\Models\UpdateTeamResponse;
use TeamBattles\Sdk\Generated\Teams\Item\Captaincy\CaptaincyRequestBuilder;
use TeamBattles\Sdk\Generated\Teams\Item\Matches\MatchesRequestBuilder;
use TeamBattles\Sdk\Generated\Teams\Item\Members\MembersRequestBuilder;

/**
 * Builds and executes requests for operations under /teams/{identifier}
*/
class WithIdentifierItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The captaincy property
    */
    public function captaincy(): CaptaincyRequestBuilder {
        return new CaptaincyRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The matches property
    */
    public function matches(): MatchesRequestBuilder {
        return new MatchesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The members property
    */
    public function members(): MembersRequestBuilder {
        return new MembersRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithIdentifierItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/teams/{identifier}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Disbands a team (soft-deletes it and deactivates its members). The caller (key owner) must be the team captain. Requires teams.profile:read-write.
     * @param WithIdentifierItemRequestBuilderDeleteRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<DisbandTeamResponse|null>
     * @throws Exception
    */
    public function delete(?WithIdentifierItemRequestBuilderDeleteRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toDeleteRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [DisbandTeamResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns an API-safe team profile projection. Active team members are treated as public visibility for their own team. Requires teams.profile:read.
     * @param WithIdentifierItemRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<WithIdentifierGetResponse|null>
     * @throws Exception
    */
    public function get(?WithIdentifierItemRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [WithIdentifierGetResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Updates a team's profile fields. The caller (key owner) must be the team captain. Requires teams.profile:read-write.
     * @param UpdateTeamBody $body Fields to update on the team. All optional.
     * @param WithIdentifierItemRequestBuilderPatchRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<UpdateTeamResponse|null>
     * @throws Exception
    */
    public function patch(UpdateTeamBody $body, ?WithIdentifierItemRequestBuilderPatchRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPatchRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [UpdateTeamResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Disbands a team (soft-deletes it and deactivates its members). The caller (key owner) must be the team captain. Requires teams.profile:read-write.
     * @param WithIdentifierItemRequestBuilderDeleteRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toDeleteRequestInformation(?WithIdentifierItemRequestBuilderDeleteRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::DELETE;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        return $requestInfo;
    }

    /**
     * Returns an API-safe team profile projection. Active team members are treated as public visibility for their own team. Requires teams.profile:read.
     * @param WithIdentifierItemRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?WithIdentifierItemRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::GET;
        if ($requestConfiguration !== null) {
            $requestInfo->addHeaders($requestConfiguration->headers);
            $requestInfo->addRequestOptions(...$requestConfiguration->options);
        }
        $requestInfo->tryAddHeader('Accept', "application/json");
        return $requestInfo;
    }

    /**
     * Updates a team's profile fields. The caller (key owner) must be the team captain. Requires teams.profile:read-write.
     * @param UpdateTeamBody $body Fields to update on the team. All optional.
     * @param WithIdentifierItemRequestBuilderPatchRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPatchRequestInformation(UpdateTeamBody $body, ?WithIdentifierItemRequestBuilderPatchRequestConfiguration $requestConfiguration = null): RequestInformation {
        $requestInfo = new RequestInformation();
        $requestInfo->urlTemplate = $this->urlTemplate;
        $requestInfo->pathParameters = $this->pathParameters;
        $requestInfo->httpMethod = HttpMethod::PATCH;
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
     * @return WithIdentifierItemRequestBuilder
    */
    public function withUrl(string $rawUrl): WithIdentifierItemRequestBuilder {
        return new WithIdentifierItemRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
