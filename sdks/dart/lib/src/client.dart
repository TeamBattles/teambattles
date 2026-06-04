// Hand-written convenience wrapper for the TeamBattles Dart SDK.
//
// Reconciled against the generated client: Kiota emits a CLASS
// `TeamBattlesApiClient(RequestAdapter requestAdapter)` in
// lib/src/generated/team_battles_api_client.dart. The auth wiring matches the
// microsoft_kiota_abstractions Dart API: AccessTokenProvider.getAuthorizationToken
// takes an optional POSITIONAL additionalAuthenticationContext, and
// BaseBearerTokenAuthenticationProvider prepends "Bearer " to the raw token below.

import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import 'package:microsoft_kiota_http/microsoft_kiota_http.dart';

import 'generated/team_battles_api_client.dart';

const String _defaultBaseUrl = 'https://teambattles.gg/api/v1';

/// Returns the raw API key as the bearer token. The base bearer provider prepends "Bearer ",
/// matching the server's expected `Authorization: Bearer tb_<key>` header.
class _StaticKeyAccessTokenProvider implements AccessTokenProvider {
  _StaticKeyAccessTokenProvider(this._apiKey, String host)
      : _validator = AllowedHostsValidator({host});

  final String _apiKey;
  final AllowedHostsValidator _validator;

  @override
  Future<String> getAuthorizationToken(
    Uri uri, [
    Map<String, Object>? additionalAuthenticationContext,
  ]) async {
    return _apiKey;
  }

  @override
  AllowedHostsValidator get allowedHostsValidator => _validator;
}

/// Create a fully-wired TeamBattles API client in one call.
///
/// [apiKey] is your TeamBattles API key (e.g. `tb_...`); sent as `Authorization: Bearer <apiKey>`.
/// [baseUrl] overrides the API base URL (defaults to production).
TeamBattlesApiClient createTeamBattlesClient(
  String apiKey, {
  String baseUrl = _defaultBaseUrl,
}) {
  final host = Uri.parse(baseUrl).host;
  final authProvider =
      BaseBearerTokenAuthenticationProvider(_StaticKeyAccessTokenProvider(apiKey, host));
  final adapter = HttpClientRequestAdapter(authProvider: authProvider);
  adapter.baseUrl = baseUrl;
  return TeamBattlesApiClient(adapter);
}
