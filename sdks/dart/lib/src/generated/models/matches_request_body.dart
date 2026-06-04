// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './matches_request_body_cursor.dart';

/// auto generated
/// Filters and cursor pagination for listing matches.
class MatchesRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  ISO 8601; only matches created at or after this time.
    String? createdAfter;
    ///  ISO 8601; only matches created at or before this time.
    String? createdBefore;
    ///  Opaque continuation cursor from a prior page's continueCursor.
    MatchesRequestBodyCursor? cursor;
    ///  Exclude matches with these MatchStatus codes; unknown values are ignored.
    Iterable<String>? excludeStatuses;
    ///  Filter to a single game by id.
    String? gameId;
    ///  Only include matches with these MatchStatus codes; unknown values are ignored.
    Iterable<String>? includeStatuses;
    ///  Page size (1-100). Defaults to 25.
    int? numItems;
    ///  Filter to matches against this opponent team (team id or slug).
    String? opponentId;
    ///  ISO 8601; only matches scheduled at or after this time.
    String? scheduledAfter;
    ///  ISO 8601; only matches scheduled at or before this time.
    String? scheduledBefore;
    /// Instantiates a new [MatchesRequestBody] and sets the default values.
    MatchesRequestBody() :  
        additionalData = {},
        numItems = 25;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MatchesRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return MatchesRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['createdAfter'] = (node) => createdAfter = node.getStringValue();
        deserializerMap['createdBefore'] = (node) => createdBefore = node.getStringValue();
        deserializerMap['cursor'] = (node) => cursor = node.getObjectValue<MatchesRequestBodyCursor>(MatchesRequestBodyCursor.createFromDiscriminatorValue);
        deserializerMap['excludeStatuses'] = (node) => excludeStatuses = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['includeStatuses'] = (node) => includeStatuses = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['numItems'] = (node) => numItems = node.getIntValue();
        deserializerMap['opponentId'] = (node) => opponentId = node.getStringValue();
        deserializerMap['scheduledAfter'] = (node) => scheduledAfter = node.getStringValue();
        deserializerMap['scheduledBefore'] = (node) => scheduledBefore = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('createdAfter', createdAfter);
        writer.writeStringValue('createdBefore', createdBefore);
        writer.writeObjectValue<MatchesRequestBodyCursor>('cursor', cursor);
        writer.writeCollectionOfPrimitiveValues<String?>('excludeStatuses', excludeStatuses);
        writer.writeStringValue('gameId', gameId);
        writer.writeCollectionOfPrimitiveValues<String?>('includeStatuses', includeStatuses);
        writer.writeIntValue('numItems', numItems);
        writer.writeStringValue('opponentId', opponentId);
        writer.writeStringValue('scheduledAfter', scheduledAfter);
        writer.writeStringValue('scheduledBefore', scheduledBefore);
        writer.writeAdditionalData(additionalData);
    }
}
