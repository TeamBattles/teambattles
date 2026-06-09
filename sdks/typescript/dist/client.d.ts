/**
 * Create a fully-wired TeamBattles API client in one call.
 *
 * @param apiKey  Your TeamBattles API key (e.g. `tb_...`). Sent as `Authorization: Bearer <apiKey>`.
 * @param baseUrl Override the API base URL (defaults to production).
 */
export declare const createTeamBattlesClient: (apiKey: string, baseUrl?: string) => import("./generated/teamBattlesApiClient.js").TeamBattlesApiClient;
//# sourceMappingURL=client.d.ts.map