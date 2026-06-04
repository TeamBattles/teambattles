// Hand-written convenience wrapper for the TeamBattles TypeScript SDK.
//
// NOTE: the generated client symbols (the `createTeamBattlesApiClient` factory and its module path)
// are produced by Kiota in CI; adjust the import path/name below after the first generation if they differ.
// Kiota's TypeScript generator emits a FACTORY `createTeamBattlesApiClient(adapter)` (the class name with a
// lowercased first letter), not a `new TeamBattlesApiClient(...)` class.

import {
	BaseBearerTokenAuthenticationProvider,
	AllowedHostsValidator,
	type AccessTokenProvider
} from "@microsoft/kiota-abstractions";
import { FetchRequestAdapter } from "@microsoft/kiota-http-fetchlibrary";
import { createTeamBattlesApiClient } from "./generated/teamBattlesApiClient.js";

const DEFAULT_BASE_URL = "https://teambattles.gg/api/v1";

/**
 * Returns the raw API key as the bearer token. The base bearer provider prepends "Bearer ",
 * matching the server's expected `Authorization: Bearer tb_<key>` header.
 */
class StaticKeyProvider implements AccessTokenProvider {
	constructor(
		private readonly key: string,
		private readonly host: string
	) {}

	getAuthorizationToken(): Promise<string> {
		return Promise.resolve(this.key);
	}

	getAllowedHostsValidator(): AllowedHostsValidator {
		// AllowedHostsValidator takes a Set<string> in the TS abstractions.
		return new AllowedHostsValidator(new Set([this.host]));
	}
}

/**
 * Create a fully-wired TeamBattles API client in one call.
 *
 * @param apiKey  Your TeamBattles API key (e.g. `tb_...`). Sent as `Authorization: Bearer <apiKey>`.
 * @param baseUrl Override the API base URL (defaults to production).
 */
export const createTeamBattlesClient = (apiKey: string, baseUrl: string = DEFAULT_BASE_URL) => {
	const host = new URL(baseUrl).host;
	const authProvider = new BaseBearerTokenAuthenticationProvider(
		new StaticKeyProvider(apiKey, host)
	);
	// Do NOT call registerDefaultSerializer/Deserializer here - the generated factory registers
	// the default JSON/Text/Form/Multipart serializers itself.
	const adapter = new FetchRequestAdapter(authProvider);
	adapter.baseUrl = baseUrl;
	return createTeamBattlesApiClient(adapter);
};
