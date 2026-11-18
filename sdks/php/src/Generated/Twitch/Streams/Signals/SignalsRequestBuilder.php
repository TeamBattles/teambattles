<?php

namespace TeamBattles\Sdk\Generated\Twitch\Streams\Signals;

use Exception;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\HttpMethod;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Abstractions\RequestInformation;
use TeamBattles\Sdk\Generated\Models\Error;
use TeamBattles\Sdk\Generated\Models\StreamSignalsBody;
use TeamBattles\Sdk\Generated\Models\TwitchStreamSignalsResult;

/**
 * Builds and executes requests for operations under /twitch/streams/signals
*/
class SignalsRequestBuilder extends BaseRequestBuilder 
{
    /**
     * Instantiates a new SignalsRequestBuilder and sets the default values.
     * @param array<string, mixed>|string $pathParametersOrRawUrl Path parameters for the request or a String representing the raw URL.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct($pathParametersOrRawUrl, RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}/twitch/streams/signals');
        if (is_array($pathParametersOrRawUrl)) {
            $this->pathParameters = $pathParametersOrRawUrl;
        } else {
            $this->pathParameters = ['request-raw-url' => $pathParametersOrRawUrl];
        }
    }

    /**
     * Adds Twitch channels to the Battles Replay Indexer, or renews them, so their streams are recorded from then on. Send 1 to 100 channels as Twitch user ids, each with the reason: favorite, follow or watch. Send it as JSON with Content-Type: application/json. Public: no API key, and no account or user id is sent or stored. Channels Twitch does not have come back in rejected, each with its code.
     * @param StreamSignalsBody $body Twitch channels to keep recording, each with why it matters to a user.
     * @param SignalsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return Promise<TwitchStreamSignalsResult|null>
     * @throws Exception
    */
    public function post(StreamSignalsBody $body, ?SignalsRequestBuilderPostRequestConfiguration $requestConfiguration = null): Promise {
        $requestInfo = $this->toPostRequestInformation($body, $requestConfiguration);
        $errorMappings = [
                '400' => [Error::class, 'createFromDiscriminatorValue'],
                '429' => [Error::class, 'createFromDiscriminatorValue'],
                '503' => [Error::class, 'createFromDiscriminatorValue'],
        ];
        return $this->requestAdapter->sendAsync($requestInfo, [TwitchStreamSignalsResult::class, 'createFromDiscriminatorValue'], $errorMappings);
    }

    /**
     * Adds Twitch channels to the Battles Replay Indexer, or renews them, so their streams are recorded from then on. Send 1 to 100 channels as Twitch user ids, each with the reason: favorite, follow or watch. Send it as JSON with Content-Type: application/json. Public: no API key, and no account or user id is sent or stored. Channels Twitch does not have come back in rejected, each with its code.
     * @param StreamSignalsBody $body Twitch channels to keep recording, each with why it matters to a user.
     * @param SignalsRequestBuilderPostRequestConfiguration|null $requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return RequestInformation
    */
    public function toPostRequestInformation(StreamSignalsBody $body, ?SignalsRequestBuilderPostRequestConfiguration $requestConfiguration = null): RequestInformation {
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
     * @return SignalsRequestBuilder
    */
    public function withUrl(string $rawUrl): SignalsRequestBuilder {
        return new SignalsRequestBuilder($rawUrl, $this->requestAdapter);
    }

}
