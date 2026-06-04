// Hand-written convenience wrapper for the TeamBattles C# SDK.
//
// The generated client (TeamBattlesApiClient) is emitted by Kiota into the namespace TeamBattles.Sdk,
// the same namespace this file declares, so the type is in scope without an extra import. Kiota's C#
// generator emits a CLASS constructed as `new TeamBattlesApiClient(adapter)`.

using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;
using Microsoft.Kiota.Abstractions.Authentication;
using Microsoft.Kiota.Http.HttpClientLibrary;

namespace TeamBattles.Sdk;

/// <summary>
/// Supplies the raw API key as the bearer token. The base bearer provider prepends "Bearer ",
/// matching the server's expected <c>Authorization: Bearer tb_&lt;key&gt;</c> header.
/// </summary>
internal sealed class StaticKeyAccessTokenProvider : IAccessTokenProvider
{
    private readonly string _apiKey;

    public StaticKeyAccessTokenProvider(string apiKey, string host)
    {
        _apiKey = apiKey;
        AllowedHostsValidator = new AllowedHostsValidator(host);
    }

    public AllowedHostsValidator AllowedHostsValidator { get; }

    public Task<string> GetAuthorizationTokenAsync(
        Uri uri,
        Dictionary<string, object>? additionalAuthenticationContext = null,
        CancellationToken cancellationToken = default)
    {
        return Task.FromResult(_apiKey);
    }
}

/// <summary>
/// Factory helpers for constructing a fully-wired <see cref="TeamBattlesApiClient"/>.
/// </summary>
public static class TeamBattlesClientFactory
{
    private const string DefaultBaseUrl = "https://teambattles.gg/api/v1";

    /// <summary>
    /// Create a fully-wired TeamBattles API client in one call.
    /// </summary>
    /// <param name="apiKey">Your TeamBattles API key (e.g. <c>tb_...</c>). Sent as <c>Authorization: Bearer &lt;apiKey&gt;</c>.</param>
    /// <param name="baseUrl">Override the API base URL (defaults to production).</param>
    public static TeamBattlesApiClient Create(string apiKey, string baseUrl = DefaultBaseUrl)
    {
        var host = new Uri(baseUrl).Host;
        var authProvider = new BaseBearerTokenAuthenticationProvider(
            new StaticKeyAccessTokenProvider(apiKey, host));
        var adapter = new HttpClientRequestAdapter(authProvider)
        {
            BaseUrl = baseUrl
        };
        return new TeamBattlesApiClient(adapter);
    }
}
