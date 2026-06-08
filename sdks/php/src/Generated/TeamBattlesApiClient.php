<?php

namespace TeamBattles\Sdk\Generated;

use Microsoft\Kiota\Abstractions\ApiClientBuilder;
use Microsoft\Kiota\Abstractions\BaseRequestBuilder;
use Microsoft\Kiota\Abstractions\RequestAdapter;
use Microsoft\Kiota\Serialization\Form\FormParseNodeFactory;
use Microsoft\Kiota\Serialization\Form\FormSerializationWriterFactory;
use Microsoft\Kiota\Serialization\Json\JsonParseNodeFactory;
use Microsoft\Kiota\Serialization\Json\JsonSerializationWriterFactory;
use Microsoft\Kiota\Serialization\Multipart\MultipartSerializationWriterFactory;
use Microsoft\Kiota\Serialization\Text\TextParseNodeFactory;
use Microsoft\Kiota\Serialization\Text\TextSerializationWriterFactory;
use TeamBattles\Sdk\Generated\Chat\ChatRequestBuilder;
use TeamBattles\Sdk\Generated\Game\GameRequestBuilder;
use TeamBattles\Sdk\Generated\Games\GamesRequestBuilder;
use TeamBattles\Sdk\Generated\Leaderboards\LeaderboardsRequestBuilder;
use TeamBattles\Sdk\Generated\Leagues\LeaguesRequestBuilder;
use TeamBattles\Sdk\Generated\Matches\MatchesRequestBuilder;
use TeamBattles\Sdk\Generated\Orgs\OrgsRequestBuilder;
use TeamBattles\Sdk\Generated\Strategies\StrategiesRequestBuilder;
use TeamBattles\Sdk\Generated\Streams\StreamsRequestBuilder;
use TeamBattles\Sdk\Generated\Teams\TeamsRequestBuilder;
use TeamBattles\Sdk\Generated\Tickets\TicketsRequestBuilder;
use TeamBattles\Sdk\Generated\Twitch\TwitchRequestBuilder;
use TeamBattles\Sdk\Generated\Uploads\UploadsRequestBuilder;
use TeamBattles\Sdk\Generated\User\UserRequestBuilder;
use TeamBattles\Sdk\Generated\Users\UsersRequestBuilder;
use TeamBattles\Sdk\Generated\Webhooks\WebhooksRequestBuilder;

/**
 * The main entry point of the SDK, exposes the configuration and the fluent API.
*/
class TeamBattlesApiClient extends BaseRequestBuilder 
{
    /**
     * The chat property
    */
    public function chat(): ChatRequestBuilder {
        return new ChatRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The game property
    */
    public function game(): GameRequestBuilder {
        return new GameRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The games property
    */
    public function games(): GamesRequestBuilder {
        return new GamesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The leaderboards property
    */
    public function leaderboards(): LeaderboardsRequestBuilder {
        return new LeaderboardsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The leagues property
    */
    public function leagues(): LeaguesRequestBuilder {
        return new LeaguesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The matches property
    */
    public function matches(): MatchesRequestBuilder {
        return new MatchesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The orgs property
    */
    public function orgs(): OrgsRequestBuilder {
        return new OrgsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The strategies property
    */
    public function strategies(): StrategiesRequestBuilder {
        return new StrategiesRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The streams property
    */
    public function streams(): StreamsRequestBuilder {
        return new StreamsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The teams property
    */
    public function teams(): TeamsRequestBuilder {
        return new TeamsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The tickets property
    */
    public function tickets(): TicketsRequestBuilder {
        return new TicketsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The twitch property
    */
    public function twitch(): TwitchRequestBuilder {
        return new TwitchRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The uploads property
    */
    public function uploads(): UploadsRequestBuilder {
        return new UploadsRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The user property
    */
    public function user(): UserRequestBuilder {
        return new UserRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The users property
    */
    public function users(): UsersRequestBuilder {
        return new UsersRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * The webhooks property
    */
    public function webhooks(): WebhooksRequestBuilder {
        return new WebhooksRequestBuilder($this->pathParameters, $this->requestAdapter);
    }
    
    /**
     * Instantiates a new TeamBattlesApiClient and sets the default values.
     * @param RequestAdapter $requestAdapter The request adapter to use to execute the requests.
    */
    public function __construct(RequestAdapter $requestAdapter) {
        parent::__construct($requestAdapter, [], '{+baseurl}');
        ApiClientBuilder::registerDefaultSerializer(JsonSerializationWriterFactory::class);
        ApiClientBuilder::registerDefaultSerializer(TextSerializationWriterFactory::class);
        ApiClientBuilder::registerDefaultSerializer(FormSerializationWriterFactory::class);
        ApiClientBuilder::registerDefaultSerializer(MultipartSerializationWriterFactory::class);
        ApiClientBuilder::registerDefaultDeserializer(JsonParseNodeFactory::class);
        ApiClientBuilder::registerDefaultDeserializer(TextParseNodeFactory::class);
        ApiClientBuilder::registerDefaultDeserializer(FormParseNodeFactory::class);
        if (empty($this->requestAdapter->getBaseUrl())) {
            $this->requestAdapter->setBaseUrl('https://teambattles.gg/api/v1');
        }
        $this->pathParameters['baseurl'] = $this->requestAdapter->getBaseUrl();
    }

}
