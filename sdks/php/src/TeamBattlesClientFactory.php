<?php

// Hand-written convenience wrapper for the TeamBattles PHP SDK.
//
// Lives in the parent namespace TeamBattles\Sdk (src/), OUTSIDE the Kiota output namespace
// TeamBattles\Sdk\Generated (src/Generated/), so a `kiota client generate --clean-output` regeneration
// never wipes it.
//
// NOTE: the generated client symbols (the TeamBattles\Sdk\Generated\TeamBattlesApiClient class) are
// produced by Kiota in CI; adjust the import and type below after the first generation if they differ.
// Kiota's PHP generator emits a CLASS `new TeamBattlesApiClient($adapter)`.

declare(strict_types=1);

namespace TeamBattles\Sdk;

use Http\Promise\FulfilledPromise;
use Http\Promise\Promise;
use Microsoft\Kiota\Abstractions\Authentication\AccessTokenProvider;
use Microsoft\Kiota\Abstractions\Authentication\AllowedHostsValidator;
use Microsoft\Kiota\Abstractions\Authentication\BaseBearerTokenAuthenticationProvider;
use Microsoft\Kiota\Http\GuzzleRequestAdapter;
use TeamBattles\Sdk\Generated\TeamBattlesApiClient;

final class TeamBattlesClientFactory
{
    public const DEFAULT_BASE_URL = 'https://teambattles.gg/api/v1';

    /**
     * Create a fully-wired TeamBattles API client in one call.
     *
     * @param string $apiKey  Your TeamBattles API key (e.g. "tb_..."). Sent as `Authorization: Bearer <apiKey>`.
     * @param string $baseUrl Override the API base URL (defaults to production).
     */
    public static function create(string $apiKey, string $baseUrl = self::DEFAULT_BASE_URL): TeamBattlesApiClient
    {
        $host = parse_url($baseUrl, PHP_URL_HOST) ?: '';
        $tokenProvider = new StaticKeyAccessTokenProvider($apiKey, $host);
        $authProvider = new BaseBearerTokenAuthenticationProvider($tokenProvider);
        $adapter = new GuzzleRequestAdapter($authProvider);
        $adapter->setBaseUrl($baseUrl);

        return new TeamBattlesApiClient($adapter);
    }
}

/**
 * Returns the raw API key as the bearer token. The base bearer provider prepends "Bearer ",
 * matching the server's expected `Authorization: Bearer tb_<key>` header.
 */
final class StaticKeyAccessTokenProvider implements AccessTokenProvider
{
    private AllowedHostsValidator $validator;

    public function __construct(private readonly string $apiKey, string $host)
    {
        $this->validator = new AllowedHostsValidator();
        $this->validator->setAllowedHosts([$host]);
    }

    /**
     * @param array<string, mixed> $additionalAuthenticationContext
     */
    public function getAuthorizationTokenAsync(string $url, array $additionalAuthenticationContext = []): Promise
    {
        return new FulfilledPromise($this->apiKey);
    }

    public function getAllowedHostsValidator(): AllowedHostsValidator
    {
        return $this->validator;
    }
}
