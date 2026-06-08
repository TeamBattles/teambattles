<?php

namespace TeamBattles\Sdk\Generated\Matches\Item;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Matches\Item\Accept\AcceptRequestBuilder;
use TeamBattles\Sdk\Generated\Matches\Item\Attendance\AttendanceRequestBuilder;
use TeamBattles\Sdk\Generated\Matches\Item\Cancel\CancelRequestBuilder;
use TeamBattles\Sdk\Generated\Matches\Item\Chat\ChatRequestBuilder;
use TeamBattles\Sdk\Generated\Matches\Item\Forfeit\ForfeitRequestBuilder;
use TeamBattles\Sdk\Generated\Matches\Item\LobbyCode\LobbyCodeRequestBuilder;
use TeamBattles\Sdk\Generated\Matches\Item\Players\PlayersRequestBuilder;
use TeamBattles\Sdk\Generated\Matches\Item\Ready\ReadyRequestBuilder;
use TeamBattles\Sdk\Generated\Matches\Item\Scores\ScoresRequestBuilder;
use TeamBattles\Sdk\Generated\Models\ApiMatchDetailResponse;
use TeamBattles\Sdk\Generated\Models\Error;

/**
 * Builds and executes requests for operations under /matches/{matchId}
*/
class WithMatchItemRequestBuilder extends BaseRequestBuilder 
{
    /**
     * The accept property
    */
    public function accept(): AcceptRequestBuilder {
        return new AcceptRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The attendance property
    */
    public function attendance(): AttendanceRequestBuilder {
        return new AttendanceRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The cancel property
    */
    public function cancel(): CancelRequestBuilder {
        return new CancelRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The chat property
    */
    public function chat(): ChatRequestBuilder {
        return new ChatRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The forfeit property
    */
    public function forfeit(): ForfeitRequestBuilder {
        return new ForfeitRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The lobbyCode property
    */
    public function lobbyCode(): LobbyCodeRequestBuilder {
        return new LobbyCodeRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The players property
    */
    public function players(): PlayersRequestBuilder {
        return new PlayersRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The ready property
    */
    public function ready(): ReadyRequestBuilder {
        return new ReadyRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The scores property
    */
    public function scores(): ScoresRequestBuilder {
        return new ScoresRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new WithMatchItemRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/matches/{matchId}');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Returns a participant-gated match detail projection. Lobby codes and raw match documents are intentionally omitted. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
     * @param WithMatchItemRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<ApiMatchDetailResponse|null>
     * @throws Exception
    */
    public function get(?WithMatchItemRequestBuilderGetRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toGetRequestInformation($requestConfiguration);
        $errorMappings = [
                '401' => [Error::class, 'createFromDiscriminatorValue'],
                '403' => [Error::class, 'createFromDiscriminatorValue'],
                '404' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '500' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [ApiMatchDetailResponse::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Returns a participant-gated match detail projection. Lobby codes and raw match documents are intentionally omitted. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
     * @param WithMatchItemRequestBuilderGetRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toGetRequestInformation(?WithMatchItemRequestBuilderGetRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param string $rawUrl The raw URL to use for the request builder.
     * @return WithMatchItemRequestBuilder
    */
    public function withUrl(string $rawUrl): WithMatchItemRequestBuilder {
        return new WithMatchItemRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
