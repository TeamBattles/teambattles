"""Hand-written convenience wrapper for the TeamBattles Python SDK.

Kiota's Python generator emits the class ``TeamBattlesApiClient(request_adapter)`` in
``teambattles_sdk.generated.team_battles_api_client``; this wrapper wires up a static
bearer-key auth provider and an httpx request adapter so callers get a ready client in one call.
"""

from __future__ import annotations

from typing import Any, Optional
from urllib.parse import urlparse

from kiota_abstractions.authentication import (
    AccessTokenProvider,
    AllowedHostsValidator,
    BaseBearerTokenAuthenticationProvider,
)
from kiota_http.httpx_request_adapter import HttpxRequestAdapter

from .generated.team_battles_api_client import TeamBattlesApiClient

DEFAULT_BASE_URL = "https://teambattles.gg/api/v1"


class _StaticKeyAccessTokenProvider(AccessTokenProvider):
    """Returns the raw API key as the bearer token.

    The base bearer provider prepends ``Bearer ``, matching the server's expected
    ``Authorization: Bearer tb_<key>`` header.
    """

    def __init__(self, api_key: str, host: str) -> None:
        self._api_key = api_key
        self._validator = AllowedHostsValidator([host])

    async def get_authorization_token(
        self, uri: str, additional_authentication_context: Optional[dict[str, Any]] = None
    ) -> str:
        return self._api_key

    def get_allowed_hosts_validator(self) -> AllowedHostsValidator:
        return self._validator


def create_teambattles_client(api_key: str, base_url: str = DEFAULT_BASE_URL) -> TeamBattlesApiClient:
    """Create a fully-wired TeamBattles API client in one call.

    :param api_key: Your TeamBattles API key (e.g. ``tb_...``). Sent as ``Authorization: Bearer <api_key>``.
    :param base_url: Override the API base URL (defaults to production).
    """
    host = urlparse(base_url).netloc
    auth_provider = BaseBearerTokenAuthenticationProvider(_StaticKeyAccessTokenProvider(api_key, host))
    adapter = HttpxRequestAdapter(auth_provider)
    adapter.base_url = base_url
    return TeamBattlesApiClient(adapter)
