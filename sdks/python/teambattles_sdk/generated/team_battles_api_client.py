from __future__ import annotations
from collections.abc import Callable
from kiota_abstractions.api_client_builder import enable_backing_store_for_serialization_writer_factory, register_default_deserializer, register_default_serializer
from kiota_abstractions.base_request_builder import BaseRequestBuilder
from kiota_abstractions.get_path_parameters import get_path_parameters
from kiota_abstractions.request_adapter import RequestAdapter
from kiota_abstractions.serialization import ParseNodeFactoryRegistry, SerializationWriterFactoryRegistry
from kiota_serialization_form.form_parse_node_factory import FormParseNodeFactory
from kiota_serialization_form.form_serialization_writer_factory import FormSerializationWriterFactory
from kiota_serialization_json.json_parse_node_factory import JsonParseNodeFactory
from kiota_serialization_json.json_serialization_writer_factory import JsonSerializationWriterFactory
from kiota_serialization_multipart.multipart_serialization_writer_factory import MultipartSerializationWriterFactory
from kiota_serialization_text.text_parse_node_factory import TextParseNodeFactory
from kiota_serialization_text.text_serialization_writer_factory import TextSerializationWriterFactory
from typing import Any, Optional, TYPE_CHECKING, Union

if TYPE_CHECKING:
    from .game.game_request_builder import GameRequestBuilder
    from .leagues.leagues_request_builder import LeaguesRequestBuilder
    from .matches.matches_request_builder import MatchesRequestBuilder
    from .orgs.orgs_request_builder import OrgsRequestBuilder
    from .teams.teams_request_builder import TeamsRequestBuilder
    from .twitch.twitch_request_builder import TwitchRequestBuilder
    from .user.user_request_builder import UserRequestBuilder

class TeamBattlesApiClient(BaseRequestBuilder):
    """
    The main entry point of the SDK, exposes the configuration and the fluent API.
    """
    def __init__(self,request_adapter: RequestAdapter) -> None:
        """
        Instantiates a new TeamBattlesApiClient and sets the default values.
        param request_adapter: The request adapter to use to execute the requests.
        Returns: None
        """
        if request_adapter is None:
            raise TypeError("request_adapter cannot be null.")
        super().__init__(request_adapter, "{+baseurl}", None)
        register_default_serializer(JsonSerializationWriterFactory)
        register_default_serializer(TextSerializationWriterFactory)
        register_default_serializer(FormSerializationWriterFactory)
        register_default_serializer(MultipartSerializationWriterFactory)
        register_default_deserializer(JsonParseNodeFactory)
        register_default_deserializer(TextParseNodeFactory)
        register_default_deserializer(FormParseNodeFactory)
        if not self.request_adapter.base_url:
            self.request_adapter.base_url = "https://teambattles.gg/api/v1"
        self.path_parameters["base_url"] = self.request_adapter.base_url
    
    @property
    def game(self) -> GameRequestBuilder:
        """
        The game property
        """
        from .game.game_request_builder import GameRequestBuilder

        return GameRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def leagues(self) -> LeaguesRequestBuilder:
        """
        The leagues property
        """
        from .leagues.leagues_request_builder import LeaguesRequestBuilder

        return LeaguesRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def matches(self) -> MatchesRequestBuilder:
        """
        The matches property
        """
        from .matches.matches_request_builder import MatchesRequestBuilder

        return MatchesRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def orgs(self) -> OrgsRequestBuilder:
        """
        The orgs property
        """
        from .orgs.orgs_request_builder import OrgsRequestBuilder

        return OrgsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def teams(self) -> TeamsRequestBuilder:
        """
        The teams property
        """
        from .teams.teams_request_builder import TeamsRequestBuilder

        return TeamsRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def twitch(self) -> TwitchRequestBuilder:
        """
        The twitch property
        """
        from .twitch.twitch_request_builder import TwitchRequestBuilder

        return TwitchRequestBuilder(self.request_adapter, self.path_parameters)
    
    @property
    def user(self) -> UserRequestBuilder:
        """
        The user property
        """
        from .user.user_request_builder import UserRequestBuilder

        return UserRequestBuilder(self.request_adapter, self.path_parameters)
    

