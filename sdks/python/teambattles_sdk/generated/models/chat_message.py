from __future__ import annotations
from collections.abc import Callable
from dataclasses import dataclass, field
from kiota_abstractions.serialization import Parsable, ParseNode, SerializationWriter
from typing import Any, Optional, TYPE_CHECKING, Union

@dataclass
class ChatMessage(Parsable):
    # The content property
    content: Optional[str] = None
    # The createdAt property
    created_at: Optional[str] = None
    # The id property
    id: Optional[str] = None
    # The replyToId property
    reply_to_id: Optional[str] = None
    # The senderUserId property
    sender_user_id: Optional[str] = None
    # The senderUsername property
    sender_username: Optional[str] = None
    # The teamId property
    team_id: Optional[str] = None
    
    @staticmethod
    def create_from_discriminator_value(parse_node: ParseNode) -> ChatMessage:
        """
        Creates a new instance of the appropriate class based on discriminator value
        param parse_node: The parse node to use to read the discriminator value and create the object
        Returns: ChatMessage
        """
        if parse_node is None:
            raise TypeError("parse_node cannot be null.")
        return ChatMessage()
    
    def get_field_deserializers(self,) -> dict[str, Callable[[ParseNode], None]]:
        """
        The deserialization information for the current model
        Returns: dict[str, Callable[[ParseNode], None]]
        """
        fields: dict[str, Callable[[Any], None]] = {
            "content": lambda n : setattr(self, 'content', n.get_str_value()),
            "createdAt": lambda n : setattr(self, 'created_at', n.get_str_value()),
            "id": lambda n : setattr(self, 'id', n.get_str_value()),
            "replyToId": lambda n : setattr(self, 'reply_to_id', n.get_str_value()),
            "senderUserId": lambda n : setattr(self, 'sender_user_id', n.get_str_value()),
            "senderUsername": lambda n : setattr(self, 'sender_username', n.get_str_value()),
            "teamId": lambda n : setattr(self, 'team_id', n.get_str_value()),
        }
        return fields
    
    def serialize(self,writer: SerializationWriter) -> None:
        """
        Serializes information the current object
        param writer: Serialization writer to use to serialize this model
        Returns: None
        """
        if writer is None:
            raise TypeError("writer cannot be null.")
        writer.write_str_value("content", self.content)
        writer.write_str_value("createdAt", self.created_at)
        writer.write_str_value("id", self.id)
        writer.write_str_value("replyToId", self.reply_to_id)
        writer.write_str_value("senderUserId", self.sender_user_id)
        writer.write_str_value("senderUsername", self.sender_username)
        writer.write_str_value("teamId", self.team_id)
    

