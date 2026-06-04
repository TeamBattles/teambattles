"""Official Python SDK for the TeamBattles public developer API.

Re-exports the one-call convenience constructor and the Kiota-generated client class
(``teambattles_sdk.generated.team_battles_api_client.TeamBattlesApiClient``).
"""

from .client import create_teambattles_client
from .generated.team_battles_api_client import TeamBattlesApiClient

__all__ = ["create_teambattles_client", "TeamBattlesApiClient"]
__version__ = "0.1.0"
